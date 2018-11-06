.class public abstract Lsun/nio/fs/UnixFileSystemProvider;
.super Lsun/nio/fs/AbstractFileSystemProvider;
.source "UnixFileSystemProvider.java"


# static fields
.field private static final synthetic -java-nio-file-AccessModeSwitchesValues:[I = null

.field private static final USER_DIR:Ljava/lang/String; = "user.dir"


# instance fields
.field private final theFileSystem:Lsun/nio/fs/UnixFileSystem;


# direct methods
.method private static synthetic -getjava-nio-file-AccessModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lsun/nio/fs/UnixFileSystemProvider;->-java-nio-file-AccessModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lsun/nio/fs/UnixFileSystemProvider;->-java-nio-file-AccessModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Ljava/nio/file/AccessMode;->values()[Ljava/nio/file/AccessMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ljava/nio/file/AccessMode;->EXECUTE:Ljava/nio/file/AccessMode;

    invoke-virtual {v1}, Ljava/nio/file/AccessMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Ljava/nio/file/AccessMode;->READ:Ljava/nio/file/AccessMode;

    invoke-virtual {v1}, Ljava/nio/file/AccessMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Ljava/nio/file/AccessMode;->WRITE:Ljava/nio/file/AccessMode;

    invoke-virtual {v1}, Ljava/nio/file/AccessMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lsun/nio/fs/UnixFileSystemProvider;->-java-nio-file-AccessModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lsun/nio/fs/AbstractFileSystemProvider;-><init>()V

    const-string/jumbo v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixFileSystemProvider;->newFileSystem(Ljava/lang/String;)Lsun/nio/fs/UnixFileSystem;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/fs/UnixFileSystemProvider;->theFileSystem:Lsun/nio/fs/UnixFileSystem;

    return-void
.end method

.method private checkUri(Ljava/net/URI;)V
    .locals 2

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lsun/nio/fs/UnixFileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "URI does not match this provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Authority component present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Path component is undefined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Path component should be \'/\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Query component present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Fragment component present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method


# virtual methods
.method final varargs chain([Lsun/nio/fs/AbstractFileTypeDetector;)Ljava/nio/file/spi/FileTypeDetector;
    .locals 1

    new-instance v0, Lsun/nio/fs/UnixFileSystemProvider$2;

    invoke-direct {v0, p0, p1}, Lsun/nio/fs/UnixFileSystemProvider$2;-><init>(Lsun/nio/fs/UnixFileSystemProvider;[Lsun/nio/fs/AbstractFileTypeDetector;)V

    return-object v0
.end method

.method public varargs checkAccess(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    array-length v10, p2

    if-nez v10, :cond_6

    const/4 v0, 0x1

    :cond_0
    const/4 v3, 0x0

    if-nez v0, :cond_1

    if-eqz v5, :cond_2

    :cond_1
    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->checkRead()V

    if-eqz v5, :cond_7

    sget v9, Lsun/nio/fs/UnixConstants;->R_OK:I

    :goto_0
    or-int/lit8 v3, v9, 0x0

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->checkWrite()V

    sget v9, Lsun/nio/fs/UnixConstants;->W_OK:I

    or-int/2addr v3, v9

    :cond_3
    if-eqz v8, :cond_5

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/SecurityManager;->checkExec(Ljava/lang/String;)V

    :cond_4
    sget v9, Lsun/nio/fs/UnixConstants;->X_OK:I

    or-int/2addr v3, v9

    :cond_5
    :try_start_0
    invoke-static {v2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->access(Lsun/nio/fs/UnixPath;I)V
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_6
    array-length v10, p2

    :goto_2
    if-ge v9, v10, :cond_0

    aget-object v4, p2, v9

    invoke-static {}, Lsun/nio/fs/UnixFileSystemProvider;->-getjava-nio-file-AccessModeSwitchesValues()[I

    move-result-object v11

    invoke-virtual {v4}, Ljava/nio/file/AccessMode;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    new-instance v9, Ljava/lang/AssertionError;

    const-string/jumbo v10, "Should not get here"

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    :pswitch_0
    const/4 v5, 0x1

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :pswitch_1
    const/4 v7, 0x1

    goto :goto_3

    :pswitch_2
    const/4 v8, 0x1

    goto :goto_3

    :cond_7
    sget v9, Lsun/nio/fs/UnixConstants;->F_OK:I

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method checkPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;
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

.method public varargs copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    invoke-static {p2}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lsun/nio/fs/UnixCopyFile;->copy(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;[Ljava/nio/file/CopyOption;)V

    return-void
.end method

.method public varargs createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->checkWrite()V

    sget v3, Lsun/nio/fs/UnixFileModeAttribute;->ALL_PERMISSIONS:I

    invoke-static {v3, p2}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(I[Ljava/nio/file/attribute/FileAttribute;)I

    move-result v1

    :try_start_0
    invoke-static {v0, v1}, Lsun/nio/fs/UnixNativeDispatcher;->mkdir(Lsun/nio/fs/UnixPath;I)V
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixException;->errno()I

    move-result v3

    sget v4, Lsun/nio/fs/UnixConstants;->EISDIR:I

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/nio/file/FileAlreadyExistsException;

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {v2, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_0
.end method

.method public createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    invoke-static {p2}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v4, Ljava/nio/file/LinkPermission;

    const-string/jumbo v5, "hard"

    invoke-direct {v4, v5}, Ljava/nio/file/LinkPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkWrite()V

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->checkWrite()V

    :cond_0
    :try_start_0
    invoke-static {v0, v1}, Lsun/nio/fs/UnixNativeDispatcher;->link(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3, v1, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V

    goto :goto_0
.end method

.method public varargs createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    invoke-static {p2}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v2

    array-length v4, p3

    if-lez v4, :cond_0

    invoke-static {v5, p3}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(I[Ljava/nio/file/attribute/FileAttribute;)I

    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "Initial file attributesnot supported when creating symbolic link"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v4, Ljava/nio/file/LinkPermission;

    const-string/jumbo v5, "symbolic"

    invoke-direct {v4, v5}, Ljava/nio/file/LinkPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->checkWrite()V

    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v4

    invoke-static {v4, v0}, Lsun/nio/fs/UnixNativeDispatcher;->symlink([BLsun/nio/fs/UnixPath;)V
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_0
.end method

.method public varargs getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;
    .locals 4
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

    const/4 v2, 0x0

    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    invoke-static {p3}, Lsun/nio/fs/Util;->followLinks([Ljava/nio/file/LinkOption;)Z

    move-result v1

    const-class v3, Ljava/nio/file/attribute/BasicFileAttributeView;

    if-ne p2, v3, :cond_0

    invoke-static {v0, v1}, Lsun/nio/fs/UnixFileAttributeViews;->createBasicView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributeViews$Basic;

    move-result-object v2

    return-object v2

    :cond_0
    const-class v3, Ljava/nio/file/attribute/PosixFileAttributeView;

    if-ne p2, v3, :cond_1

    invoke-static {v0, v1}, Lsun/nio/fs/UnixFileAttributeViews;->createPosixView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributeViews$Posix;

    move-result-object v2

    return-object v2

    :cond_1
    const-class v3, Ljava/nio/file/attribute/FileOwnerAttributeView;

    if-ne p2, v3, :cond_2

    invoke-static {v0, v1}, Lsun/nio/fs/UnixFileAttributeViews;->createOwnerView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/FileOwnerAttributeViewImpl;

    move-result-object v2

    return-object v2

    :cond_2
    if-nez p2, :cond_3

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_3
    check-cast v2, Ljava/nio/file/attribute/FileAttributeView;

    return-object v2
.end method

.method protected varargs getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Lsun/nio/fs/DynamicFileAttributeView;
    .locals 3

    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    invoke-static {p3}, Lsun/nio/fs/Util;->followLinks([Ljava/nio/file/LinkOption;)Z

    move-result v1

    const-string/jumbo v2, "basic"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lsun/nio/fs/UnixFileAttributeViews;->createBasicView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributeViews$Basic;

    move-result-object v2

    return-object v2

    :cond_0
    const-string/jumbo v2, "posix"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Lsun/nio/fs/UnixFileAttributeViews;->createPosixView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributeViews$Posix;

    move-result-object v2

    return-object v2

    :cond_1
    const-string/jumbo v2, "unix"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0, v1}, Lsun/nio/fs/UnixFileAttributeViews;->createUnixView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributeViews$Unix;

    move-result-object v2

    return-object v2

    :cond_2
    const-string/jumbo v2, "owner"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0, v1}, Lsun/nio/fs/UnixFileAttributeViews;->createOwnerView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/FileOwnerAttributeViewImpl;

    move-result-object v2

    return-object v2

    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method public getFileStore(Ljava/nio/file/Path;)Ljava/nio/file/FileStore;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "getFileStore"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract getFileStore(Lsun/nio/fs/UnixPath;)Ljava/nio/file/FileStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getFileSystem(Ljava/net/URI;)Ljava/nio/file/FileSystem;
    .locals 1

    invoke-direct {p0, p1}, Lsun/nio/fs/UnixFileSystemProvider;->checkUri(Ljava/net/URI;)V

    iget-object v0, p0, Lsun/nio/fs/UnixFileSystemProvider;->theFileSystem:Lsun/nio/fs/UnixFileSystem;

    return-object v0
.end method

.method getFileTypeDetector()Ljava/nio/file/spi/FileTypeDetector;
    .locals 1

    new-instance v0, Lsun/nio/fs/UnixFileSystemProvider$1;

    invoke-direct {v0, p0}, Lsun/nio/fs/UnixFileSystemProvider$1;-><init>(Lsun/nio/fs/UnixFileSystemProvider;)V

    return-object v0
.end method

.method public getPath(Ljava/net/URI;)Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/UnixFileSystemProvider;->theFileSystem:Lsun/nio/fs/UnixFileSystem;

    invoke-static {v0, p1}, Lsun/nio/fs/UnixUriUtils;->fromUri(Lsun/nio/fs/UnixFileSystem;Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public final getScheme()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "file"

    return-object v0
.end method

.method implDelete(Ljava/nio/file/Path;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkDelete()V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1, v3}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V

    :goto_0
    const/4 v3, 0x1

    return v3

    :cond_0
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    if-nez p2, :cond_1

    invoke-virtual {v2}, Lsun/nio/fs/UnixException;->errno()I

    move-result v3

    sget v4, Lsun/nio/fs/UnixConstants;->ENOENT:I

    if-ne v3, v4, :cond_1

    return v5

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lsun/nio/fs/UnixException;->errno()I

    move-result v3

    sget v4, Lsun/nio/fs/UnixConstants;->EEXIST:I

    if-eq v3, v4, :cond_2

    invoke-virtual {v2}, Lsun/nio/fs/UnixException;->errno()I

    move-result v3

    sget v4, Lsun/nio/fs/UnixConstants;->ENOTEMPTY:I

    if-ne v3, v4, :cond_3

    :cond_2
    new-instance v3, Ljava/nio/file/DirectoryNotEmptyException;

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/nio/file/DirectoryNotEmptyException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-virtual {v2, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    return v5
.end method

.method public isHidden(Ljava/nio/file/Path;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->checkRead()V

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getFileName()Lsun/nio/fs/UnixPath;

    move-result-object v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v3

    aget-byte v3, v3, v2

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v2

    invoke-virtual {v2, p2}, Lsun/nio/fs/UnixPath;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v7

    :cond_0
    if-nez p2, :cond_1

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    :cond_1
    instance-of v5, p2, Lsun/nio/fs/UnixPath;

    if-nez v5, :cond_2

    return v6

    :cond_2
    move-object v3, p2

    check-cast v3, Lsun/nio/fs/UnixPath;

    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->checkRead()V

    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->checkRead()V

    const/4 v5, 0x1

    :try_start_0
    invoke-static {v2, v5}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/4 v5, 0x1

    :try_start_1
    invoke-static {v3, v5}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_1
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/nio/fs/UnixFileAttributes;->isSameFile(Lsun/nio/fs/UnixFileAttributes;)Z

    move-result v5

    return v5

    :catch_0
    move-exception v4

    invoke-virtual {v4, v2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    return v6

    :catch_1
    move-exception v4

    invoke-virtual {v4, v3}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    return v6
.end method

.method public varargs move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    invoke-static {p2}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lsun/nio/fs/UnixCopyFile;->move(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;[Ljava/nio/file/CopyOption;)V

    return-void
.end method

.method public varargs newAsynchronousFileChannel(Ljava/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/AsynchronousFileChannel;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set",
            "<+",
            "Ljava/nio/file/OpenOption;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)",
            "Ljava/nio/channels/AsynchronousFileChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lsun/nio/fs/UnixFileSystemProvider;->checkPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    sget v4, Lsun/nio/fs/UnixFileModeAttribute;->ALL_READWRITE:I

    invoke-static {v4, p4}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(I[Ljava/nio/file/attribute/FileAttribute;)I

    move-result v1

    if-nez p3, :cond_0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-static {v0, p2, v1, v2}, Lsun/nio/fs/UnixChannelFactory;->newAsynchronousFileChannel(Lsun/nio/fs/UnixPath;Ljava/util/Set;ILsun/nio/ch/ThreadPool;)Ljava/nio/channels/AsynchronousFileChannel;
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :cond_0
    const/4 v4, 0x0

    invoke-static {p3, v4}, Lsun/nio/ch/ThreadPool;->wrap(Ljava/util/concurrent/ExecutorService;I)Lsun/nio/ch/ThreadPool;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    return-object v5
.end method

.method public varargs newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .locals 4
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

    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    sget v3, Lsun/nio/fs/UnixFileModeAttribute;->ALL_READWRITE:I

    invoke-static {v3, p3}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(I[Ljava/nio/file/attribute/FileAttribute;)I

    move-result v1

    :try_start_0
    invoke-static {v0, p2, v1}, Lsun/nio/fs/UnixChannelFactory;->newFileChannel(Lsun/nio/fs/UnixPath;Ljava/util/Set;I)Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v2

    invoke-virtual {v2, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    const/4 v3, 0x0

    return-object v3
.end method

.method public newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/DirectoryStream$Filter",
            "<-",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/nio/file/DirectoryStream",
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

    const/4 v10, -0x1

    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkRead()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Lsun/nio/fs/UnixNativeDispatcher;->openatSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lsun/nio/fs/UnixConstants;->O_NOFOLLOW:I

    if-nez v0, :cond_3

    :cond_1
    :try_start_0
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->opendir(Lsun/nio/fs/UnixPath;)J

    move-result-wide v8

    new-instance v0, Lsun/nio/fs/UnixDirectoryStream;

    invoke-direct {v0, v1, v8, v9, p2}, Lsun/nio/fs/UnixDirectoryStream;-><init>(Lsun/nio/fs/UnixPath;JLjava/nio/file/DirectoryStream$Filter;)V
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v5, Lsun/nio/fs/UnixConstants;->ENOTDIR:I

    if-ne v0, v5, :cond_2

    new-instance v0, Ljava/nio/file/NotDirectoryException;

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/nio/file/NotDirectoryException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v7, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    :cond_3
    const/4 v6, -0x1

    const/4 v4, -0x1

    const-wide/16 v2, 0x0

    :try_start_1
    sget v0, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    const/4 v5, 0x0

    invoke-static {v1, v0, v5}, Lsun/nio/fs/UnixNativeDispatcher;->open(Lsun/nio/fs/UnixPath;II)I

    move-result v6

    invoke-static {v6}, Lsun/nio/fs/UnixNativeDispatcher;->dup(I)I

    move-result v4

    invoke-static {v6}, Lsun/nio/fs/UnixNativeDispatcher;->fdopendir(I)J
    :try_end_1
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    :goto_0
    new-instance v0, Lsun/nio/fs/UnixSecureDirectoryStream;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lsun/nio/fs/UnixSecureDirectoryStream;-><init>(Lsun/nio/fs/UnixPath;JILjava/nio/file/DirectoryStream$Filter;)V

    return-object v0

    :catch_1
    move-exception v7

    if-eq v6, v10, :cond_4

    invoke-static {v6}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    :cond_4
    if-eq v4, v10, :cond_5

    invoke-static {v4}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    :cond_5
    invoke-virtual {v7}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v5, Lsun/nio/fs/UnixConstants;->ENOTDIR:I

    if-ne v0, v5, :cond_6

    new-instance v0, Ljava/nio/file/NotDirectoryException;

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/nio/file/NotDirectoryException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {v7, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_0
.end method

.method public varargs newFileChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;
    .locals 4
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
            "Ljava/nio/channels/FileChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lsun/nio/fs/UnixFileSystemProvider;->checkPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    sget v3, Lsun/nio/fs/UnixFileModeAttribute;->ALL_READWRITE:I

    invoke-static {v3, p3}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(I[Ljava/nio/file/attribute/FileAttribute;)I

    move-result v1

    :try_start_0
    invoke-static {v0, p2, v1}, Lsun/nio/fs/UnixChannelFactory;->newFileChannel(Lsun/nio/fs/UnixPath;Ljava/util/Set;I)Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v2

    invoke-virtual {v2, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    const/4 v3, 0x0

    return-object v3
.end method

.method public final newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljava/nio/file/FileSystem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/nio/file/FileSystem;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lsun/nio/fs/UnixFileSystemProvider;->checkUri(Ljava/net/URI;)V

    new-instance v0, Ljava/nio/file/FileSystemAlreadyExistsException;

    invoke-direct {v0}, Ljava/nio/file/FileSystemAlreadyExistsException;-><init>()V

    throw v0
.end method

.method abstract newFileSystem(Ljava/lang/String;)Lsun/nio/fs/UnixFileSystem;
.end method

.method public varargs readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/nio/file/attribute/BasicFileAttributes;",
            ">(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Class",
            "<TA;>;[",
            "Ljava/nio/file/LinkOption;",
            ")TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v1, Ljava/nio/file/attribute/BasicFileAttributes;

    if-ne p2, v1, :cond_0

    const-class v0, Ljava/nio/file/attribute/BasicFileAttributeView;

    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lsun/nio/fs/UnixFileSystemProvider;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v1

    check-cast v1, Ljava/nio/file/attribute/BasicFileAttributeView;

    invoke-interface {v1}, Ljava/nio/file/attribute/BasicFileAttributeView;->readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    return-object v1

    :cond_0
    const-class v1, Ljava/nio/file/attribute/PosixFileAttributes;

    if-ne p2, v1, :cond_1

    const-class v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/io/FilePermission;

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "readlink"

    invoke-direct {v1, v5, v6}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    :try_start_0
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->readlink(Lsun/nio/fs/UnixPath;)[B

    move-result-object v3

    new-instance v5, Lsun/nio/fs/UnixPath;

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lsun/nio/fs/UnixException;->errno()I

    move-result v5

    sget v6, Lsun/nio/fs/UnixConstants;->EINVAL:I

    if-ne v5, v6, :cond_1

    new-instance v5, Ljava/nio/file/NotLinkException;

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/nio/file/NotLinkException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-virtual {v4, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    return-object v7
.end method
