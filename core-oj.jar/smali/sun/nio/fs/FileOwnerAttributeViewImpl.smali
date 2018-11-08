.class final Lsun/nio/fs/FileOwnerAttributeViewImpl;
.super Ljava/lang/Object;
.source "FileOwnerAttributeViewImpl.java"

# interfaces
.implements Ljava/nio/file/attribute/FileOwnerAttributeView;
.implements Lsun/nio/fs/DynamicFileAttributeView;


# static fields
.field private static final OWNER_NAME:Ljava/lang/String; = "owner"


# instance fields
.field private final isPosixView:Z

.field private final view:Ljava/nio/file/attribute/FileAttributeView;


# direct methods
.method constructor <init>(Ljava/nio/file/attribute/AclFileAttributeView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/nio/fs/FileOwnerAttributeViewImpl;->view:Ljava/nio/file/attribute/FileAttributeView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/fs/FileOwnerAttributeViewImpl;->isPosixView:Z

    return-void
.end method

.method constructor <init>(Ljava/nio/file/attribute/PosixFileAttributeView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/nio/fs/FileOwnerAttributeViewImpl;->view:Ljava/nio/file/attribute/FileAttributeView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/fs/FileOwnerAttributeViewImpl;->isPosixView:Z

    return-void
.end method


# virtual methods
.method public getOwner()Ljava/nio/file/attribute/UserPrincipal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lsun/nio/fs/FileOwnerAttributeViewImpl;->isPosixView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/nio/fs/FileOwnerAttributeViewImpl;->view:Ljava/nio/file/attribute/FileAttributeView;

    check-cast v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributeView;->readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributes;->owner()Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/nio/fs/FileOwnerAttributeViewImpl;->view:Ljava/nio/file/attribute/FileAttributeView;

    check-cast v0, Ljava/nio/file/attribute/AclFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/AclFileAttributeView;->getOwner()Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "owner"

    return-object v0
.end method

.method public readAttributes([Ljava/lang/String;)Ljava/util/Map;
    .locals 6
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

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, p1, v2

    const-string/jumbo v4, "*"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "owner"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string/jumbo v4, "owner"

    invoke-virtual {p0}, Lsun/nio/fs/FileOwnerAttributeViewImpl;->getOwner()Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lsun/nio/fs/FileOwnerAttributeViewImpl;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' not recognized"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    return-object v1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "owner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/nio/file/attribute/UserPrincipal;

    invoke-virtual {p0, p2}, Lsun/nio/fs/FileOwnerAttributeViewImpl;->setOwner(Ljava/nio/file/attribute/UserPrincipal;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lsun/nio/fs/FileOwnerAttributeViewImpl;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' not recognized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOwner(Ljava/nio/file/attribute/UserPrincipal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lsun/nio/fs/FileOwnerAttributeViewImpl;->isPosixView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/nio/fs/FileOwnerAttributeViewImpl;->view:Ljava/nio/file/attribute/FileAttributeView;

    check-cast v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-interface {v0, p1}, Ljava/nio/file/attribute/PosixFileAttributeView;->setOwner(Ljava/nio/file/attribute/UserPrincipal;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lsun/nio/fs/FileOwnerAttributeViewImpl;->view:Ljava/nio/file/attribute/FileAttributeView;

    check-cast v0, Ljava/nio/file/attribute/AclFileAttributeView;

    invoke-interface {v0, p1}, Ljava/nio/file/attribute/AclFileAttributeView;->setOwner(Ljava/nio/file/attribute/UserPrincipal;)V

    goto :goto_0
.end method
