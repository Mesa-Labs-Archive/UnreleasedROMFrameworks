.class Lsun/nio/fs/UnixSecureDirectoryStream;
.super Ljava/lang/Object;
.source "UnixSecureDirectoryStream.java"

# interfaces
.implements Ljava/nio/file/SecureDirectoryStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;,
        Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/nio/file/SecureDirectoryStream",
        "<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final dfd:I

.field private final ds:Lsun/nio/fs/UnixDirectoryStream;

.field private final guard:Ldalvik/system/CloseGuard;


# direct methods
.method static synthetic -get0(Lsun/nio/fs/UnixSecureDirectoryStream;)I
    .locals 1

    iget v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    return v0
.end method

.method static synthetic -get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    return-object v0
.end method

.method constructor <init>(Lsun/nio/fs/UnixPath;JILjava/nio/file/DirectoryStream$Filter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/nio/fs/UnixPath;",
            "JI",
            "Ljava/nio/file/DirectoryStream$Filter",
            "<-",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->guard:Ldalvik/system/CloseGuard;

    new-instance v0, Lsun/nio/fs/UnixDirectoryStream;

    invoke-direct {v0, p1, p2, p3, p5}, Lsun/nio/fs/UnixDirectoryStream;-><init>(Lsun/nio/fs/UnixPath;JLjava/nio/file/DirectoryStream$Filter;)V

    iput-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    iput p4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getFileAttributeViewImpl(Lsun/nio/fs/UnixPath;Ljava/lang/Class;Z)Ljava/nio/file/attribute/FileAttributeView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/nio/file/attribute/FileAttributeView;",
            ">(",
            "Lsun/nio/fs/UnixPath;",
            "Ljava/lang/Class",
            "<TV;>;Z)TV;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    move-object v0, p2

    const-class v2, Ljava/nio/file/attribute/BasicFileAttributeView;

    if-ne p2, v2, :cond_1

    new-instance v1, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;

    invoke-direct {v1, p0, p1, p3}, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;-><init>(Lsun/nio/fs/UnixSecureDirectoryStream;Lsun/nio/fs/UnixPath;Z)V

    return-object v1

    :cond_1
    const-class v2, Ljava/nio/file/attribute/PosixFileAttributeView;

    if-eq p2, v2, :cond_2

    const-class v2, Ljava/nio/file/attribute/FileOwnerAttributeView;

    if-ne p2, v2, :cond_3

    :cond_2
    new-instance v1, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;

    invoke-direct {v1, p0, p1, p3}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;-><init>(Lsun/nio/fs/UnixSecureDirectoryStream;Lsun/nio/fs/UnixPath;Z)V

    return-object v1

    :cond_3
    check-cast v1, Ljava/nio/file/attribute/FileAttributeView;

    return-object v1
.end method

.method private getName(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    instance-of v0, p1, Lsun/nio/fs/UnixPath;

    if-nez v0, :cond_1

    new-instance v0, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {v0}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw v0

    :cond_1
    check-cast p1, Lsun/nio/fs/UnixPath;

    return-object p1
.end method

.method private implDelete(Ljava/nio/file/Path;ZI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lsun/nio/fs/UnixSecureDirectoryStream;->getName(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v4

    invoke-virtual {v4, v1}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v4

    invoke-virtual {v4}, Lsun/nio/fs/UnixPath;->checkDelete()V

    :cond_0
    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v4}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    iget-object v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    :cond_1
    if-nez p2, :cond_2

    const/4 v0, 0x0

    :try_start_1
    iget v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Lsun/nio/fs/UnixFileAttributes;->get(ILsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_1
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    const/16 p3, 0x200

    :cond_2
    :goto_1
    :try_start_3
    iget v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v5

    invoke-static {v4, v5, p3}, Lsun/nio/fs/UnixNativeDispatcher;->unlinkat(I[BI)V
    :try_end_3
    .catch Lsun/nio/fs/UnixException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catch_0
    move-exception v3

    :try_start_4
    invoke-virtual {v3, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    goto :goto_1

    :catch_1
    move-exception v3

    and-int/lit16 v4, p3, 0x200

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lsun/nio/fs/UnixException;->errno()I

    move-result v4

    sget v5, Lsun/nio/fs/UnixConstants;->EEXIST:I

    if-eq v4, v5, :cond_4

    invoke-virtual {v3}, Lsun/nio/fs/UnixException;->errno()I

    move-result v4

    sget v5, Lsun/nio/fs/UnixConstants;->ENOTEMPTY:I

    if-ne v4, v5, :cond_5

    :cond_4
    new-instance v4, Ljava/nio/file/DirectoryNotEmptyException;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/nio/file/DirectoryNotEmptyException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    invoke-virtual {v3, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->closeImpl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v1}, Lsun/nio/fs/UnixDirectoryStream;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public bridge synthetic deleteDirectory(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1}, Lsun/nio/fs/UnixSecureDirectoryStream;->deleteDirectory(Ljava/nio/file/Path;)V

    return-void
.end method

.method public deleteDirectory(Ljava/nio/file/Path;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->implDelete(Ljava/nio/file/Path;ZI)V

    return-void
.end method

.method public bridge synthetic deleteFile(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1}, Lsun/nio/fs/UnixSecureDirectoryStream;->deleteFile(Ljava/nio/file/Path;)V

    return-void
.end method

.method public deleteFile(Ljava/nio/file/Path;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->implDelete(Ljava/nio/file/Path;ZI)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Lsun/nio/fs/UnixSecureDirectoryStream;->close()V

    return-void
.end method

.method public getFileAttributeView(Ljava/lang/Class;)Ljava/nio/file/attribute/FileAttributeView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/nio/file/attribute/FileAttributeView;",
            ">(",
            "Ljava/lang/Class",
            "<TV;>;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->getFileAttributeViewImpl(Lsun/nio/fs/UnixPath;Ljava/lang/Class;Z)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFileAttributeView(Ljava/lang/Object;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;
    .locals 1

    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2, p3}, Lsun/nio/fs/UnixSecureDirectoryStream;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    return-object v0
.end method

.method public varargs getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/nio/file/attribute/FileAttributeView;",
            ">(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Class",
            "<TV;>;[",
            "Ljava/nio/file/LinkOption;",
            ")TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lsun/nio/fs/UnixSecureDirectoryStream;->getName(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    invoke-static {p3}, Lsun/nio/fs/Util;->followLinks([Ljava/nio/file/LinkOption;)Z

    move-result v1

    invoke-direct {p0, v0, p2, v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->getFileAttributeViewImpl(Lsun/nio/fs/UnixPath;Ljava/lang/Class;Z)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v2

    return-object v2
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

    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v0, p0}, Lsun/nio/fs/UnixDirectoryStream;->iterator(Ljava/nio/file/DirectoryStream;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic move(Ljava/lang/Object;Ljava/nio/file/SecureDirectoryStream;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/nio/file/Path;

    check-cast p3, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2, p3}, Lsun/nio/fs/UnixSecureDirectoryStream;->move(Ljava/nio/file/Path;Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;)V

    return-void
.end method

.method public move(Ljava/nio/file/Path;Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/SecureDirectoryStream",
            "<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/nio/file/Path;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lsun/nio/fs/UnixSecureDirectoryStream;->getName(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    invoke-direct {p0, p3}, Lsun/nio/fs/UnixSecureDirectoryStream;->getName(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v3

    if-nez p2, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    :cond_0
    instance-of v5, p2, Lsun/nio/fs/UnixSecureDirectoryStream;

    if-nez v5, :cond_1

    new-instance v5, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {v5}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw v5

    :cond_1
    move-object v2, p2

    check-cast v2, Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v5

    invoke-virtual {v5, v0}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v5

    invoke-virtual {v5}, Lsun/nio/fs/UnixPath;->checkWrite()V

    iget-object v5, v2, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v5

    invoke-virtual {v5, v3}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v5

    invoke-virtual {v5}, Lsun/nio/fs/UnixPath;->checkWrite()V

    :cond_2
    iget-object v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v5, v2, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v2, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    :cond_3
    new-instance v5, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v5}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v5

    :try_start_2
    iget-object v6, v2, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v6}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v5

    iget-object v6, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v6}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    :cond_4
    :try_start_3
    iget v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v6

    iget v7, v2, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lsun/nio/fs/UnixNativeDispatcher;->renameat(I[BI[B)V
    :try_end_3
    .catch Lsun/nio/fs/UnixException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    iget-object v5, v2, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catch_0
    move-exception v4

    :try_start_5
    invoke-virtual {v4}, Lsun/nio/fs/UnixException;->errno()I

    move-result v5

    sget v6, Lsun/nio/fs/UnixConstants;->EXDEV:I

    if-ne v5, v6, :cond_5

    new-instance v5, Ljava/nio/file/AtomicMoveNotSupportedException;

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lsun/nio/fs/UnixException;->errorString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Ljava/nio/file/AtomicMoveNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    :cond_5
    invoke-virtual {v4, v0, v3}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public bridge synthetic newByteChannel(Ljava/lang/Object;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2, p3}, Lsun/nio/fs/UnixSecureDirectoryStream;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public varargs newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set",
            "<+",
            "Ljava/nio/file/OpenOption;",
            ">;[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)",
            "Ljava/nio/channels/SeekableByteChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lsun/nio/fs/UnixSecureDirectoryStream;->getName(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    sget v4, Lsun/nio/fs/UnixFileModeAttribute;->ALL_READWRITE:I

    invoke-static {v4, p3}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(I[Ljava/nio/file/attribute/FileAttribute;)I

    move-result v1

    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v4

    invoke-virtual {v4, v0}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v4

    invoke-virtual {v4}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v4}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    iget-object v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    :cond_0
    :try_start_1
    iget v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    invoke-static {v4, v0, v2, p2, v1}, Lsun/nio/fs/UnixChannelFactory;->newFileChannel(ILsun/nio/fs/UnixPath;Ljava/lang/String;Ljava/util/Set;I)Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    iget-object v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v4

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x0

    iget-object v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v4
.end method

.method public bridge synthetic newDirectoryStream(Ljava/lang/Object;[Ljava/nio/file/LinkOption;)Ljava/nio/file/SecureDirectoryStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lsun/nio/fs/UnixSecureDirectoryStream;->newDirectoryStream(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/SecureDirectoryStream;

    move-result-object v0

    return-object v0
.end method

.method public varargs newDirectoryStream(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/SecureDirectoryStream;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")",
            "Ljava/nio/file/SecureDirectoryStream",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lsun/nio/fs/UnixSecureDirectoryStream;->getName(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v6

    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v0

    invoke-virtual {v0, v6}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    invoke-static {p2}, Lsun/nio/fs/Util;->followLinks([Ljava/nio/file/LinkOption;)Z

    move-result v8

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkRead()V

    :cond_0
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v0}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    const/4 v9, -0x1

    const/4 v4, -0x1

    const-wide/16 v2, 0x0

    :try_start_1
    sget v7, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    if-nez v8, :cond_2

    sget v0, Lsun/nio/fs/UnixConstants;->O_NOFOLLOW:I

    or-int/2addr v7, v0

    :cond_2
    iget v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    invoke-virtual {v6}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v5

    const/4 v12, 0x0

    invoke-static {v0, v5, v7, v12}, Lsun/nio/fs/UnixNativeDispatcher;->openat(I[BII)I

    move-result v9

    invoke-static {v9}, Lsun/nio/fs/UnixNativeDispatcher;->dup(I)I

    move-result v4

    invoke-static {v9}, Lsun/nio/fs/UnixNativeDispatcher;->fdopendir(I)J
    :try_end_1
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    :goto_0
    :try_start_2
    new-instance v0, Lsun/nio/fs/UnixSecureDirectoryStream;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lsun/nio/fs/UnixSecureDirectoryStream;-><init>(Lsun/nio/fs/UnixPath;JILjava/nio/file/DirectoryStream$Filter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catch_0
    move-exception v11

    const/4 v0, -0x1

    if-eq v9, v0, :cond_3

    :try_start_3
    invoke-static {v9}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    :cond_3
    const/4 v0, -0x1

    if-eq v4, v0, :cond_4

    invoke-static {v4}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    :cond_4
    invoke-virtual {v11}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v5, Lsun/nio/fs/UnixConstants;->ENOTDIR:I

    if-ne v0, v5, :cond_5

    new-instance v0, Ljava/nio/file/NotDirectoryException;

    invoke-virtual {v6}, Lsun/nio/fs/UnixPath;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/nio/file/NotDirectoryException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v11, v6}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
