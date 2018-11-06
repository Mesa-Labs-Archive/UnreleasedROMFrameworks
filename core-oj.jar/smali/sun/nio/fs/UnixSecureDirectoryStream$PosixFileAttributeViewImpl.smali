.class Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;
.super Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;
.source "UnixSecureDirectoryStream.java"

# interfaces
.implements Ljava/nio/file/attribute/PosixFileAttributeView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixSecureDirectoryStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PosixFileAttributeViewImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lsun/nio/fs/UnixSecureDirectoryStream;


# direct methods
.method constructor <init>(Lsun/nio/fs/UnixSecureDirectoryStream;Lsun/nio/fs/UnixPath;Z)V
    .locals 0

    iput-object p1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-direct {p0, p1, p2, p3}, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;-><init>(Lsun/nio/fs/UnixSecureDirectoryStream;Lsun/nio/fs/UnixPath;Z)V

    return-void
.end method

.method private checkWriteAndUserAccess()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->-wrap0(Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;)V

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "accessUserInformation"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    return-void
.end method

.method private setOwners(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->checkWriteAndUserAccess()V

    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v2}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v2}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v2}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-nez v2, :cond_2

    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v2}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get0(Lsun/nio/fs/UnixSecureDirectoryStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :goto_0
    :try_start_2
    invoke-static {v0, p1, p2}, Lsun/nio/fs/UnixNativeDispatcher;->fchown(III)V
    :try_end_2
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-eqz v2, :cond_1

    if-ltz v0, :cond_1

    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v2}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_2
    :try_start_4
    invoke-virtual {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->open()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_5
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-eqz v2, :cond_1

    if-ltz v0, :cond_1

    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    goto :goto_1

    :catchall_1
    move-exception v2

    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-eqz v3, :cond_3

    if-ltz v0, :cond_3

    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    :cond_3
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method


# virtual methods
.method public getOwner()Ljava/nio/file/attribute/UserPrincipal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributes;->owner()Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "posix"

    return-object v0
.end method

.method public bridge synthetic readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-nez v3, :cond_1

    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->checkRead()V

    :goto_0
    new-instance v3, Ljava/lang/RuntimePermission;

    const-string/jumbo v4, "accessUserInformation"

    invoke-direct {v3, v4}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v3}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v4}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v4

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    :cond_1
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v3

    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v3, v4}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->checkRead()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-nez v3, :cond_3

    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get0(Lsun/nio/fs/UnixSecureDirectoryStream;)I

    move-result v3

    invoke-static {v3}, Lsun/nio/fs/UnixFileAttributes;->get(I)Lsun/nio/fs/UnixFileAttributes;
    :try_end_1
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_3
    :try_start_2
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get0(Lsun/nio/fs/UnixSecureDirectoryStream;)I

    move-result v3

    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->followLinks:Z

    invoke-static {v3, v4, v5}, Lsun/nio/fs/UnixFileAttributes;->get(ILsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_2
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v2, v3}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v6
.end method

.method public setGroup(Ljava/nio/file/attribute/GroupPrincipal;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v1, p1, Lsun/nio/fs/UnixUserPrincipals$Group;

    if-nez v1, :cond_0

    new-instance v1, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {v1}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw v1

    :cond_0
    check-cast p1, Lsun/nio/fs/UnixUserPrincipals$Group;

    invoke-virtual {p1}, Lsun/nio/fs/UnixUserPrincipals$Group;->gid()I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->setOwners(II)V

    return-void
.end method

.method public setOwner(Ljava/nio/file/attribute/UserPrincipal;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v1, p1, Lsun/nio/fs/UnixUserPrincipals$User;

    if-nez v1, :cond_0

    new-instance v1, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {v1}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw v1

    :cond_0
    instance-of v1, p1, Lsun/nio/fs/UnixUserPrincipals$Group;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "\'owner\' parameter can\'t be a group"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    check-cast p1, Lsun/nio/fs/UnixUserPrincipals$User;

    invoke-virtual {p1}, Lsun/nio/fs/UnixUserPrincipals$User;->uid()I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->setOwners(II)V

    return-void
.end method

.method public setPermissions(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->checkWriteAndUserAccess()V

    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v2}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v2}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v2}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-nez v2, :cond_2

    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v2}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get0(Lsun/nio/fs/UnixSecureDirectoryStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :goto_0
    :try_start_2
    invoke-static {p1}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(Ljava/util/Set;)I

    move-result v2

    invoke-static {v0, v2}, Lsun/nio/fs/UnixNativeDispatcher;->fchmod(II)V
    :try_end_2
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-eqz v2, :cond_1

    if-ltz v0, :cond_1

    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v2}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_2
    :try_start_4
    invoke-virtual {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->open()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_5
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-eqz v2, :cond_1

    if-ltz v0, :cond_1

    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    goto :goto_1

    :catchall_1
    move-exception v2

    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-eqz v3, :cond_3

    if-ltz v0, :cond_3

    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    :cond_3
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method
