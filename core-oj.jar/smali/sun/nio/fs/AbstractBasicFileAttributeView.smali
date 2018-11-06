.class abstract Lsun/nio/fs/AbstractBasicFileAttributeView;
.super Ljava/lang/Object;
.source "AbstractBasicFileAttributeView.java"

# interfaces
.implements Ljava/nio/file/attribute/BasicFileAttributeView;
.implements Lsun/nio/fs/DynamicFileAttributeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;
    }
.end annotation


# static fields
.field private static final CREATION_TIME_NAME:Ljava/lang/String; = "creationTime"

.field private static final FILE_KEY_NAME:Ljava/lang/String; = "fileKey"

.field private static final IS_DIRECTORY_NAME:Ljava/lang/String; = "isDirectory"

.field private static final IS_OTHER_NAME:Ljava/lang/String; = "isOther"

.field private static final IS_REGULAR_FILE_NAME:Ljava/lang/String; = "isRegularFile"

.field private static final IS_SYMBOLIC_LINK_NAME:Ljava/lang/String; = "isSymbolicLink"

.field private static final LAST_ACCESS_TIME_NAME:Ljava/lang/String; = "lastAccessTime"

.field private static final LAST_MODIFIED_TIME_NAME:Ljava/lang/String; = "lastModifiedTime"

.field private static final SIZE_NAME:Ljava/lang/String; = "size"

.field static final basicAttributeNames:Ljava/util/Set;
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
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "size"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "creationTime"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "lastAccessTime"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "lastModifiedTime"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "fileKey"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "isDirectory"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "isRegularFile"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "isSymbolicLink"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "isOther"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Lsun/nio/fs/Util;->newSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/AbstractBasicFileAttributeView;->basicAttributeNames:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final addRequestedBasicAttributes(Ljava/nio/file/attribute/BasicFileAttributes;Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;)V
    .locals 4

    const-string/jumbo v0, "size"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "size"

    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string/jumbo v0, "creationTime"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "creationTime"

    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string/jumbo v0, "lastAccessTime"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "lastAccessTime"

    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const-string/jumbo v0, "lastModifiedTime"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "lastModifiedTime"

    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    const-string/jumbo v0, "fileKey"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "fileKey"

    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    const-string/jumbo v0, "isDirectory"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "isDirectory"

    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    const-string/jumbo v0, "isRegularFile"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "isRegularFile"

    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    const-string/jumbo v0, "isSymbolicLink"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "isSymbolicLink"

    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    const-string/jumbo v0, "isOther"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "isOther"

    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->isOther()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "basic"

    return-object v0
.end method

.method public readAttributes([Ljava/lang/String;)Ljava/util/Map;
    .locals 2
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

    sget-object v1, Lsun/nio/fs/AbstractBasicFileAttributeView;->basicAttributeNames:Ljava/util/Set;

    invoke-static {v1, p1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->create(Ljava/util/Set;[Ljava/lang/String;)Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lsun/nio/fs/AbstractBasicFileAttributeView;->readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView;->addRequestedBasicAttributes(Ljava/nio/file/attribute/BasicFileAttributes;Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;)V

    invoke-virtual {v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->unmodifiableMap()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string/jumbo v0, "lastModifiedTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/nio/file/attribute/FileTime;

    invoke-virtual {p0, p2, v1, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView;->setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V

    return-void

    :cond_0
    const-string/jumbo v0, "lastAccessTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Ljava/nio/file/attribute/FileTime;

    invoke-virtual {p0, v1, p2, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView;->setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V

    return-void

    :cond_1
    const-string/jumbo v0, "creationTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Ljava/nio/file/attribute/FileTime;

    invoke-virtual {p0, v1, v1, p2}, Lsun/nio/fs/AbstractBasicFileAttributeView;->setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lsun/nio/fs/AbstractBasicFileAttributeView;->name()Ljava/lang/String;

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
