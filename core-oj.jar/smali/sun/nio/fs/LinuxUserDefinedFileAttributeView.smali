.class Lsun/nio/fs/LinuxUserDefinedFileAttributeView;
.super Lsun/nio/fs/AbstractUserDefinedFileAttributeView;
.source "LinuxUserDefinedFileAttributeView.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final USER_NAMESPACE:Ljava/lang/String; = "user."

.field private static final XATTR_NAME_MAX:I = 0xff

.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final file:Lsun/nio/fs/UnixPath;

.field private final followLinks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->-assertionsDisabled:Z

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->unsafe:Lsun/misc/Unsafe;

    return-void
.end method

.method constructor <init>(Lsun/nio/fs/UnixPath;Z)V
    .locals 0

    invoke-direct {p0}, Lsun/nio/fs/AbstractUserDefinedFileAttributeView;-><init>()V

    iput-object p1, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    iput-boolean p2, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->followLinks:Z

    return-void
.end method

.method private asList(JI)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/4 v5, 0x0

    :goto_0
    move/from16 v0, p3

    if-ge v5, v0, :cond_3

    sget-object v9, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->unsafe:Lsun/misc/Unsafe;

    int-to-long v10, v5

    add-long v10, v10, p1

    invoke-virtual {v9, v10, v11}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v9

    if-nez v9, :cond_2

    sub-int v3, v5, v7

    new-array v8, v3, [B

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    sget-object v9, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->unsafe:Lsun/misc/Unsafe;

    int-to-long v10, v7

    add-long v10, v10, p1

    int-to-long v12, v2

    add-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v9

    aput-byte v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-static {v8}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "user."

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "user."

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v5, 0x1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-object v4
.end method

.method private static copyExtendedAttribute(I[BI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static {p0, p1, v4, v5, v6}, Lsun/nio/fs/LinuxNativeDispatcher;->fgetxattr(I[BJI)I

    move-result v3

    invoke-static {v3}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1, v3}, Lsun/nio/fs/LinuxNativeDispatcher;->fgetxattr(I[BJI)I

    move-result v3

    invoke-static {p2, p1, v0, v1, v3}, Lsun/nio/fs/LinuxNativeDispatcher;->fsetxattr(I[BJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lsun/nio/fs/NativeBuffer;->release()V

    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v4
.end method

.method static copyExtendedAttributes(II)V
    .locals 18

    const/4 v4, 0x0

    const/16 v10, 0x400

    :try_start_0
    invoke-static {v10}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    :goto_0
    :try_start_1
    invoke-virtual {v4}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v14

    move/from16 v0, p0

    invoke-static {v0, v14, v15, v10}, Lsun/nio/fs/LinuxNativeDispatcher;->flistxattr(IJI)I
    :try_end_1
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    :try_start_2
    invoke-virtual {v4}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    const/4 v11, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_4

    sget-object v13, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->unsafe:Lsun/misc/Unsafe;

    int-to-long v14, v9

    add-long/2addr v14, v2

    invoke-virtual {v13, v14, v15}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v13

    if-nez v13, :cond_3

    sub-int v7, v9, v11

    new-array v8, v7, [B

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v7, :cond_2

    sget-object v13, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->unsafe:Lsun/misc/Unsafe;

    int-to-long v14, v11

    add-long/2addr v14, v2

    int-to-long v0, v5

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v13

    aput-byte v13, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_0
    move-exception v12

    invoke-virtual {v12}, Lsun/nio/fs/UnixException;->errno()I

    move-result v13

    sget v14, Lsun/nio/fs/UnixConstants;->ERANGE:I

    if-ne v13, v14, :cond_0

    const v13, 0x8000

    if-ge v10, v13, :cond_0

    invoke-virtual {v4}, Lsun/nio/fs/NativeBuffer;->release()V

    mul-int/lit8 v10, v10, 0x2

    const/4 v4, 0x0

    invoke-static {v10}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lsun/nio/fs/NativeBuffer;->release()V

    :cond_1
    return-void

    :cond_2
    :try_start_3
    move/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v8, v1}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->copyExtendedAttribute(I[BI)V
    :try_end_3
    .catch Lsun/nio/fs/UnixException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    add-int/lit8 v11, v9, 0x1

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catch_1
    move-exception v6

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lsun/nio/fs/NativeBuffer;->release()V

    :cond_5
    return-void

    :catchall_0
    move-exception v13

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lsun/nio/fs/NativeBuffer;->release()V

    :cond_6
    throw v13
.end method

.method private nameAsBytes(Lsun/nio/fs/UnixPath;Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "\'name\' is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0xff

    if-le v1, v2, :cond_1

    new-instance v1, Ljava/nio/file/FileSystemException;

    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' is too big"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v5, v3}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->checkAccess(Ljava/lang/String;ZZ)V

    :cond_0
    iget-object v2, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v3, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->followLinks:Z

    invoke-virtual {v2, v3}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I

    move-result v0

    :try_start_0
    iget-object v2, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-direct {p0, v2, p1}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->nameAsBytes(Lsun/nio/fs/UnixPath;Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v0, v2}, Lsun/nio/fs/LinuxNativeDispatcher;->fremovexattr(I[B)V
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    return-void

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/nio/file/FileSystemException;

    iget-object v3, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to delete extended attribute \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lsun/nio/fs/UnixException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    throw v2
.end method

.method public list()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v6}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->checkAccess(Ljava/lang/String;ZZ)V

    :cond_0
    iget-object v6, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v7, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->followLinks:Z

    invoke-virtual {v6, v7}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I

    move-result v1

    const/4 v0, 0x0

    const/16 v4, 0x400

    :try_start_0
    invoke-static {v4}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v6

    invoke-static {v1, v6, v7, v4}, Lsun/nio/fs/LinuxNativeDispatcher;->flistxattr(IJI)I

    move-result v3

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v3}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->asList(JI)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    :cond_1
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    return-object v6

    :catch_0
    move-exception v5

    :try_start_2
    invoke-virtual {v5}, Lsun/nio/fs/UnixException;->errno()I

    move-result v6

    sget v7, Lsun/nio/fs/UnixConstants;->ERANGE:I

    if-ne v6, v7, :cond_2

    const v6, 0x8000

    if-ge v4, v6, :cond_2

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    mul-int/lit8 v4, v4, 0x2

    const/4 v0, 0x0

    invoke-static {v4}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/nio/file/FileSystemException;

    iget-object v7, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v7}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to get list of extended attributes: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lsun/nio/fs/UnixException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v6, v7, v9, v8}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v6

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    :cond_3
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    throw v6
.end method

.method public read(Ljava/lang/String;Ljava/nio/ByteBuffer;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v13}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->checkAccess(Ljava/lang/String;ZZ)V

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v13

    if-eqz v13, :cond_1

    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "Read-only buffer"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    sget-boolean v13, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->-assertionsDisabled:Z

    if-nez v13, :cond_2

    if-le v10, v6, :cond_2

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    :cond_2
    if-gt v10, v6, :cond_4

    sub-int v11, v6, v10

    :goto_0
    move-object/from16 v0, p2

    instance-of v13, v0, Lsun/nio/ch/DirectBuffer;

    if-eqz v13, :cond_5

    const/4 v9, 0x0

    move-object/from16 v13, p2

    check-cast v13, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v13}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v14

    int-to-long v0, v10

    move-wide/from16 v16, v0

    add-long v2, v14, v16

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->followLinks:Z

    invoke-virtual {v13, v14}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I

    move-result v4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->nameAsBytes(Lsun/nio/fs/UnixPath;Ljava/lang/String;)[B

    move-result-object v13

    invoke-static {v4, v13, v2, v3, v11}, Lsun/nio/fs/LinuxNativeDispatcher;->fgetxattr(I[BJI)I

    move-result v8

    if-nez v11, :cond_8

    if-lez v8, :cond_6

    new-instance v13, Lsun/nio/fs/UnixException;

    sget v14, Lsun/nio/fs/UnixConstants;->ERANGE:I

    invoke-direct {v13, v14}, Lsun/nio/fs/UnixException;-><init>(I)V

    throw v13
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v12

    :try_start_1
    invoke-virtual {v12}, Lsun/nio/fs/UnixException;->errno()I

    move-result v13

    sget v14, Lsun/nio/fs/UnixConstants;->ERANGE:I

    if-ne v13, v14, :cond_b

    const-string/jumbo v7, "Insufficient space in buffer"

    :goto_2
    new-instance v13, Ljava/nio/file/FileSystemException;

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v14}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error reading extended attribute \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\': "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v13, v14, v0, v15}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v13

    :try_start_2
    invoke-static {v4}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    throw v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v13

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lsun/nio/fs/NativeBuffer;->release()V

    :cond_3
    throw v13

    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-static {v11}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v9

    invoke-virtual {v9}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    goto :goto_1

    :cond_6
    :try_start_3
    invoke-static {v4}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v13, 0x0

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lsun/nio/fs/NativeBuffer;->release()V

    :cond_7
    return v13

    :cond_8
    if-eqz v9, :cond_9

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v8, :cond_9

    :try_start_4
    sget-object v13, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->unsafe:Lsun/misc/Unsafe;

    int-to-long v14, v5

    add-long/2addr v14, v2

    invoke-virtual {v13, v14, v15}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    add-int v13, v10, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_4
    .catch Lsun/nio/fs/UnixException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v4}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Lsun/nio/fs/NativeBuffer;->release()V

    :cond_a
    return v8

    :cond_b
    :try_start_6
    invoke-virtual {v12}, Lsun/nio/fs/UnixException;->getMessage()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v7

    goto :goto_2
.end method

.method public size(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->checkAccess(Ljava/lang/String;ZZ)V

    :cond_0
    iget-object v2, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v3, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->followLinks:Z

    invoke-virtual {v2, v3}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I

    move-result v0

    :try_start_0
    iget-object v2, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-direct {p0, v2, p1}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->nameAsBytes(Lsun/nio/fs/UnixPath;Ljava/lang/String;)[B

    move-result-object v2

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v4, v5, v3}, Lsun/nio/fs/LinuxNativeDispatcher;->fgetxattr(I[BJI)I
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    return v2

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/nio/file/FileSystemException;

    iget-object v3, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to get size of extended attribute \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lsun/nio/fs/UnixException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    throw v2
.end method

.method public write(Ljava/lang/String;Ljava/nio/ByteBuffer;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v12}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->checkAccess(Ljava/lang/String;ZZ)V

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    sget-boolean v12, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->-assertionsDisabled:Z

    if-nez v12, :cond_1

    if-le v8, v6, :cond_1

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    :cond_1
    if-gt v8, v6, :cond_4

    sub-int v9, v6, v8

    :goto_0
    move-object/from16 v0, p2

    instance-of v12, v0, Lsun/nio/ch/DirectBuffer;

    if-eqz v12, :cond_5

    const/4 v7, 0x0

    move-object/from16 v12, p2

    check-cast v12, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v12}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v12

    int-to-long v14, v8

    add-long v2, v12, v14

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->followLinks:Z

    invoke-virtual {v12, v13}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I

    move-result v4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->nameAsBytes(Lsun/nio/fs/UnixPath;Ljava/lang/String;)[B

    move-result-object v12

    invoke-static {v4, v12, v2, v3, v9}, Lsun/nio/fs/LinuxNativeDispatcher;->fsetxattr(I[BJI)V

    add-int v12, v8, v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v4}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lsun/nio/fs/NativeBuffer;->release()V

    :cond_3
    return v9

    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    :cond_5
    invoke-static {v9}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v7

    invoke-virtual {v7}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v9, :cond_2

    sget-object v12, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->unsafe:Lsun/misc/Unsafe;

    int-to-long v14, v5

    add-long/2addr v14, v2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    invoke-virtual {v12, v14, v15, v13}, Lsun/misc/Unsafe;->putByte(JB)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    new-array v10, v9, [B

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v9, :cond_2

    sget-object v12, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->unsafe:Lsun/misc/Unsafe;

    int-to-long v14, v5

    add-long/2addr v14, v2

    aget-byte v13, v10, v5

    invoke-virtual {v12, v14, v15, v13}, Lsun/misc/Unsafe;->putByte(JB)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_0
    move-exception v11

    :try_start_2
    new-instance v12, Ljava/nio/file/FileSystemException;

    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v13}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error writing extended attribute \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\': "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Lsun/nio/fs/UnixException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v12, v13, v15, v14}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v12

    :try_start_3
    invoke-static {v4}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    throw v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v12

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lsun/nio/fs/NativeBuffer;->release()V

    :cond_7
    throw v12
.end method
