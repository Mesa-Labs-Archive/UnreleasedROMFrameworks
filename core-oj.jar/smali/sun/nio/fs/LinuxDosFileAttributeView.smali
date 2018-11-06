.class Lsun/nio/fs/LinuxDosFileAttributeView;
.super Lsun/nio/fs/UnixFileAttributeViews$Basic;
.source "LinuxDosFileAttributeView.java"

# interfaces
.implements Ljava/nio/file/attribute/DosFileAttributeView;


# static fields
.field private static final ARCHIVE_NAME:Ljava/lang/String; = "archive"

.field private static final DOS_XATTR_ARCHIVE:I = 0x20

.field private static final DOS_XATTR_HIDDEN:I = 0x2

.field private static final DOS_XATTR_NAME:Ljava/lang/String; = "user.DOSATTRIB"

.field private static final DOS_XATTR_NAME_AS_BYTES:[B

.field private static final DOS_XATTR_READONLY:I = 0x1

.field private static final DOS_XATTR_SYSTEM:I = 0x4

.field private static final HIDDEN_NAME:Ljava/lang/String; = "hidden"

.field private static final READONLY_NAME:Ljava/lang/String; = "readonly"

.field private static final SYSTEM_NAME:Ljava/lang/String; = "system"

.field private static final dosAttributeNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final unsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/LinuxDosFileAttributeView;->unsafe:Lsun/misc/Unsafe;

    const-string/jumbo v0, "user.DOSATTRIB"

    invoke-static {v0}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lsun/nio/fs/LinuxDosFileAttributeView;->DOS_XATTR_NAME_AS_BYTES:[B

    sget-object v0, Lsun/nio/fs/LinuxDosFileAttributeView;->basicAttributeNames:Ljava/util/Set;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "readonly"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "archive"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "system"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "hidden"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lsun/nio/fs/Util;->newSet(Ljava/util/Set;[Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/LinuxDosFileAttributeView;->dosAttributeNames:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lsun/nio/fs/UnixPath;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsun/nio/fs/UnixFileAttributeViews$Basic;-><init>(Lsun/nio/fs/UnixPath;Z)V

    return-void
.end method

.method private getDosAttribute(I)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    const/16 v4, 0x18

    const/16 v8, 0x18

    invoke-static {v8}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v1

    :try_start_0
    sget-object v8, Lsun/nio/fs/LinuxDosFileAttributeView;->DOS_XATTR_NAME_AS_BYTES:[B

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v10

    const/16 v9, 0x18

    invoke-static {p1, v8, v10, v11, v9}, Lsun/nio/fs/LinuxNativeDispatcher;->fgetxattr(I[BJI)I

    move-result v3

    if-lez v3, :cond_2

    sget-object v8, Lsun/nio/fs/LinuxDosFileAttributeView;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v10

    int-to-long v12, v3

    add-long/2addr v10, v12

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v8

    if-nez v8, :cond_0

    add-int/lit8 v3, v3, -0x1

    :cond_0
    new-array v0, v3, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    sget-object v8, Lsun/nio/fs/LinuxDosFileAttributeView;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v10

    int-to-long v12, v2

    add-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v8

    aput-byte v8, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-lt v8, v9, :cond_2

    const-string/jumbo v8, "0x"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x2

    :try_start_1
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    return v8

    :catch_0
    move-exception v6

    :cond_2
    :try_start_2
    new-instance v8, Lsun/nio/fs/UnixException;

    const-string/jumbo v9, "Value of user.DOSATTRIB attribute is invalid"

    invoke-direct {v8, v9}, Lsun/nio/fs/UnixException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    move-exception v7

    :try_start_3
    invoke-virtual {v7}, Lsun/nio/fs/UnixException;->errno()I

    move-result v8

    sget v9, Lsun/nio/fs/UnixConstants;->ENODATA:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v8, v9, :cond_3

    const/4 v8, 0x0

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    return v8

    :cond_3
    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v8

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v8
.end method

.method private updateDosAttribute(IZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v6, p0, Lsun/nio/fs/LinuxDosFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v6}, Lsun/nio/fs/UnixPath;->checkWrite()V

    iget-object v6, p0, Lsun/nio/fs/LinuxDosFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v7, p0, Lsun/nio/fs/LinuxDosFileAttributeView;->followLinks:Z

    invoke-virtual {v6, v7}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I

    move-result v1

    :try_start_0
    invoke-direct {p0, v1}, Lsun/nio/fs/LinuxDosFileAttributeView;->getDosAttribute(I)I

    move-result v3

    move v2, v3

    if-eqz p2, :cond_1

    or-int v2, v3, p1

    :goto_0
    if-eq v2, v3, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    :try_start_1
    sget-object v6, Lsun/nio/fs/LinuxDosFileAttributeView;->DOS_XATTR_NAME_AS_BYTES:[B

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v8

    array-length v7, v4

    add-int/lit8 v7, v7, 0x1

    invoke-static {v1, v6, v8, v9, v7}, Lsun/nio/fs/LinuxNativeDispatcher;->fsetxattr(I[BJI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V
    :try_end_2
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    :goto_1
    return-void

    :cond_1
    not-int v6, p1

    and-int v2, v3, v6

    goto :goto_0

    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v6
    :try_end_3
    .catch Lsun/nio/fs/UnixException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v5

    :try_start_4
    iget-object v6, p0, Lsun/nio/fs/LinuxDosFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v5, v6}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    goto :goto_1

    :catchall_1
    move-exception v6

    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    throw v6
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "dos"

    return-object v0
.end method

.method public bridge synthetic readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/nio/fs/LinuxDosFileAttributeView;->readAttributes()Ljava/nio/file/attribute/DosFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public readAttributes()Ljava/nio/file/attribute/DosFileAttributes;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Lsun/nio/fs/LinuxDosFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v4}, Lsun/nio/fs/UnixPath;->checkRead()V

    iget-object v4, p0, Lsun/nio/fs/LinuxDosFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v5, p0, Lsun/nio/fs/LinuxDosFileAttributeView;->followLinks:Z

    invoke-virtual {v4, v5}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I

    move-result v2

    :try_start_0
    invoke-static {v2}, Lsun/nio/fs/UnixFileAttributes;->get(I)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    invoke-direct {p0, v2}, Lsun/nio/fs/LinuxDosFileAttributeView;->getDosAttribute(I)I

    move-result v1

    new-instance v4, Lsun/nio/fs/LinuxDosFileAttributeView$1;

    invoke-direct {v4, p0, v0, v1}, Lsun/nio/fs/LinuxDosFileAttributeView$1;-><init>(Lsun/nio/fs/LinuxDosFileAttributeView;Lsun/nio/fs/UnixFileAttributes;I)V
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    return-object v4

    :catch_0
    move-exception v3

    :try_start_1
    iget-object v4, p0, Lsun/nio/fs/LinuxDosFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v3, v4}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    return-object v4

    :catchall_0
    move-exception v4

    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    throw v4
.end method

.method public readAttributes([Ljava/lang/String;)Ljava/util/Map;
    .locals 4
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

    sget-object v2, Lsun/nio/fs/LinuxDosFileAttributeView;->dosAttributeNames:Ljava/util/Set;

    invoke-static {v2, p1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->create(Ljava/util/Set;[Ljava/lang/String;)Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lsun/nio/fs/LinuxDosFileAttributeView;->readAttributes()Ljava/nio/file/attribute/DosFileAttributes;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lsun/nio/fs/LinuxDosFileAttributeView;->addRequestedBasicAttributes(Ljava/nio/file/attribute/BasicFileAttributes;Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;)V

    const-string/jumbo v2, "readonly"

    invoke-virtual {v1, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "readonly"

    invoke-interface {v0}, Ljava/nio/file/attribute/DosFileAttributes;->isReadOnly()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string/jumbo v2, "archive"

    invoke-virtual {v1, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "archive"

    invoke-interface {v0}, Ljava/nio/file/attribute/DosFileAttributes;->isArchive()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string/jumbo v2, "system"

    invoke-virtual {v1, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "system"

    invoke-interface {v0}, Ljava/nio/file/attribute/DosFileAttributes;->isSystem()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const-string/jumbo v2, "hidden"

    invoke-virtual {v1, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "hidden"

    invoke-interface {v0}, Ljava/nio/file/attribute/DosFileAttributes;->isHidden()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->unmodifiableMap()Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method public setArchive(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lsun/nio/fs/LinuxDosFileAttributeView;->updateDosAttribute(IZ)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "readonly"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lsun/nio/fs/LinuxDosFileAttributeView;->setReadOnly(Z)V

    return-void

    :cond_0
    const-string/jumbo v0, "archive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lsun/nio/fs/LinuxDosFileAttributeView;->setArchive(Z)V

    return-void

    :cond_1
    const-string/jumbo v0, "system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lsun/nio/fs/LinuxDosFileAttributeView;->setSystem(Z)V

    return-void

    :cond_2
    const-string/jumbo v0, "hidden"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lsun/nio/fs/LinuxDosFileAttributeView;->setHidden(Z)V

    return-void

    :cond_3
    invoke-super {p0, p1, p2}, Lsun/nio/fs/UnixFileAttributeViews$Basic;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setHidden(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lsun/nio/fs/LinuxDosFileAttributeView;->updateDosAttribute(IZ)V

    return-void
.end method

.method public setReadOnly(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lsun/nio/fs/LinuxDosFileAttributeView;->updateDosAttribute(IZ)V

    return-void
.end method

.method public setSystem(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lsun/nio/fs/LinuxDosFileAttributeView;->updateDosAttribute(IZ)V

    return-void
.end method
