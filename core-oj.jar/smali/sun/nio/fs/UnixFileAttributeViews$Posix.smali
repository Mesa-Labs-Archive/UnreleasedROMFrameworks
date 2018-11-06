.class Lsun/nio/fs/UnixFileAttributeViews$Posix;
.super Lsun/nio/fs/UnixFileAttributeViews$Basic;
.source "UnixFileAttributeViews.java"

# interfaces
.implements Ljava/nio/file/attribute/PosixFileAttributeView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixFileAttributeViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Posix"
.end annotation


# static fields
.field private static final GROUP_NAME:Ljava/lang/String; = "group"

.field private static final OWNER_NAME:Ljava/lang/String; = "owner"

.field private static final PERMISSIONS_NAME:Ljava/lang/String; = "permissions"

.field static final posixAttributeNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->basicAttributeNames:Ljava/util/Set;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "permissions"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "owner"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "group"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lsun/nio/fs/Util;->newSet(Ljava/util/Set;[Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->posixAttributeNames:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lsun/nio/fs/UnixPath;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsun/nio/fs/UnixFileAttributeViews$Basic;-><init>(Lsun/nio/fs/UnixPath;Z)V

    return-void
.end method


# virtual methods
.method final addRequestedPosixAttributes(Ljava/nio/file/attribute/PosixFileAttributes;Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->addRequestedBasicAttributes(Ljava/nio/file/attribute/BasicFileAttributes;Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;)V

    const-string/jumbo v0, "permissions"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "permissions"

    invoke-interface {p1}, Ljava/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string/jumbo v0, "owner"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "owner"

    invoke-interface {p1}, Ljava/nio/file/attribute/PosixFileAttributes;->owner()Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string/jumbo v0, "group"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "group"

    invoke-interface {p1}, Ljava/nio/file/attribute/PosixFileAttributes;->group()Ljava/nio/file/attribute/GroupPrincipal;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method final checkReadExtended()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkRead()V

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "accessUserInformation"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    return-void
.end method

.method final checkWriteExtended()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkWrite()V

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "accessUserInformation"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    return-void
.end method

.method public getOwner()Ljava/nio/file/attribute/UserPrincipal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->readAttributes()Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->owner()Ljava/nio/file/attribute/UserPrincipal;

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

    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->readAttributes()Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->readAttributes()Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public readAttributes([Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v2, Lsun/nio/fs/UnixFileAttributeViews$Posix;->posixAttributeNames:Ljava/util/Set;

    invoke-static {v2, p1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->create(Ljava/util/Set;[Ljava/lang/String;)Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->readAttributes()Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->addRequestedPosixAttributes(Ljava/nio/file/attribute/PosixFileAttributes;Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;)V

    invoke-virtual {v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->unmodifiableMap()Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method public readAttributes()Lsun/nio/fs/UnixFileAttributes;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->checkReadExtended()V

    :try_start_0
    iget-object v1, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v2, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->followLinks:Z

    invoke-static {v1, v2}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v0, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "permissions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p2}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->setPermissions(Ljava/util/Set;)V

    return-void

    :cond_0
    const-string/jumbo v0, "owner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Ljava/nio/file/attribute/UserPrincipal;

    invoke-virtual {p0, p2}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->setOwner(Ljava/nio/file/attribute/UserPrincipal;)V

    return-void

    :cond_1
    const-string/jumbo v0, "group"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Ljava/nio/file/attribute/GroupPrincipal;

    invoke-virtual {p0, p2}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->setGroup(Ljava/nio/file/attribute/GroupPrincipal;)V

    return-void

    :cond_2
    invoke-super {p0, p1, p2}, Lsun/nio/fs/UnixFileAttributeViews$Basic;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setGroup(Ljava/nio/file/attribute/GroupPrincipal;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "\'owner\' is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    instance-of v1, p1, Lsun/nio/fs/UnixUserPrincipals$Group;

    if-nez v1, :cond_1

    new-instance v1, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {v1}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw v1

    :cond_1
    check-cast p1, Lsun/nio/fs/UnixUserPrincipals$Group;

    invoke-virtual {p1}, Lsun/nio/fs/UnixUserPrincipals$Group;->gid()I

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->setOwners(II)V

    return-void
.end method

.method final setMode(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->checkWriteExtended()V

    :try_start_0
    iget-boolean v2, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->followLinks:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    invoke-static {v2, p1}, Lsun/nio/fs/UnixNativeDispatcher;->chmod(Lsun/nio/fs/UnixPath;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :try_start_1
    invoke-static {v0, p1}, Lsun/nio/fs/UnixNativeDispatcher;->fchmod(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_2
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    throw v2
    :try_end_3
    .catch Lsun/nio/fs/UnixException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public setOwner(Ljava/nio/file/attribute/UserPrincipal;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "\'owner\' is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    instance-of v1, p1, Lsun/nio/fs/UnixUserPrincipals$User;

    if-nez v1, :cond_1

    new-instance v1, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {v1}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw v1

    :cond_1
    instance-of v1, p1, Lsun/nio/fs/UnixUserPrincipals$Group;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "\'owner\' parameter can\'t be a group"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    check-cast p1, Lsun/nio/fs/UnixUserPrincipals$User;

    invoke-virtual {p1}, Lsun/nio/fs/UnixUserPrincipals$User;->uid()I

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->setOwners(II)V

    return-void
.end method

.method final setOwners(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->checkWriteExtended()V

    :try_start_0
    iget-boolean v1, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->followLinks:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    invoke-static {v1, p1, p2}, Lsun/nio/fs/UnixNativeDispatcher;->chown(Lsun/nio/fs/UnixPath;II)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    invoke-static {v1, p1, p2}, Lsun/nio/fs/UnixNativeDispatcher;->lchown(Lsun/nio/fs/UnixPath;II)V
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v0, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_0
.end method

.method public setPermissions(Ljava/util/Set;)V
    .locals 1
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

    invoke-static {p1}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(Ljava/util/Set;)I

    move-result v0

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->setMode(I)V

    return-void
.end method
