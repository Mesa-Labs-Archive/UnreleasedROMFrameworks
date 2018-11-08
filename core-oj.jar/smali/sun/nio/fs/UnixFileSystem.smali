.class abstract Lsun/nio/fs/UnixFileSystem;
.super Ljava/nio/file/FileSystem;
.source "UnixFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/UnixFileSystem$FileStoreIterator;,
        Lsun/nio/fs/UnixFileSystem$LookupService;
    }
.end annotation


# static fields
.field private static final GLOB_SYNTAX:Ljava/lang/String; = "glob"

.field private static final REGEX_SYNTAX:Ljava/lang/String; = "regex"


# instance fields
.field private final defaultDirectory:[B

.field private final needToResolveAgainstDefaultDirectory:Z

.field private final provider:Lsun/nio/fs/UnixFileSystemProvider;

.field private final rootDirectory:Lsun/nio/fs/UnixPath;


# direct methods
.method static synthetic -get0(Lsun/nio/fs/UnixFileSystem;)Lsun/nio/fs/UnixPath;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/UnixFileSystem;->rootDirectory:Lsun/nio/fs/UnixPath;

    return-object v0
.end method

.method constructor <init>(Lsun/nio/fs/UnixFileSystemProvider;Ljava/lang/String;)V
    .locals 8

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/nio/file/FileSystem;-><init>()V

    iput-object p1, p0, Lsun/nio/fs/UnixFileSystem;->provider:Lsun/nio/fs/UnixFileSystemProvider;

    invoke-static {p2}, Lsun/nio/fs/UnixPath;->normalizeAndCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, p0, Lsun/nio/fs/UnixFileSystem;->defaultDirectory:[B

    iget-object v5, p0, Lsun/nio/fs/UnixFileSystem;->defaultDirectory:[B

    aget-byte v5, v5, v6

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_0

    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "default directory must be absolute"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    new-instance v5, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v6, "sun.nio.fs.chdirAllowed"

    const-string/jumbo v7, "false"

    invoke-direct {v5, v6, v7}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    const/4 v5, 0x1

    iput-boolean v5, p0, Lsun/nio/fs/UnixFileSystem;->needToResolveAgainstDefaultDirectory:Z

    :goto_1
    new-instance v5, Lsun/nio/fs/UnixPath;

    const-string/jumbo v6, "/"

    invoke-direct {v5, p0, v6}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;Ljava/lang/String;)V

    iput-object v5, p0, Lsun/nio/fs/UnixFileSystem;->rootDirectory:Lsun/nio/fs/UnixPath;

    return-void

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lsun/nio/fs/UnixNativeDispatcher;->getcwd()[B

    move-result-object v1

    array-length v5, v1

    iget-object v6, p0, Lsun/nio/fs/UnixFileSystem;->defaultDirectory:[B

    array-length v6, v6

    if-ne v5, v6, :cond_4

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_3

    const/4 v3, 0x0

    :goto_3
    array-length v5, v1

    if-ge v3, v5, :cond_3

    aget-byte v5, v1, v3

    iget-object v6, p0, Lsun/nio/fs/UnixFileSystem;->defaultDirectory:[B

    aget-byte v6, v6, v3

    if-eq v5, v6, :cond_5

    const/4 v2, 0x0

    :cond_3
    xor-int/lit8 v5, v2, 0x1

    iput-boolean v5, p0, Lsun/nio/fs/UnixFileSystem;->needToResolveAgainstDefaultDirectory:Z

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method static standardFileAttributeViews()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "basic"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "posix"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "unix"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "owner"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method compilePathMatchPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method copyNonPosixAttributes(II)V
    .locals 0

    return-void
.end method

.method defaultDirectory()[B
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/UnixFileSystem;->defaultDirectory:[B

    return-object v0
.end method

.method abstract getFileStore(Lsun/nio/fs/UnixMountEntry;)Ljava/nio/file/FileStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getFileStores()Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/nio/file/FileStore;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/RuntimePermission;

    const-string/jumbo v3, "getFileStoreAttributes"

    invoke-direct {v2, v3}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    new-instance v2, Lsun/nio/fs/UnixFileSystem$2;

    invoke-direct {v2, p0}, Lsun/nio/fs/UnixFileSystem$2;-><init>(Lsun/nio/fs/UnixFileSystem;)V

    return-object v2

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method abstract getMountEntries()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lsun/nio/fs/UnixMountEntry;",
            ">;"
        }
    .end annotation
.end method

.method public final varargs getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 6

    const/4 v3, 0x0

    array-length v4, p2

    if-nez v4, :cond_0

    move-object v0, p1

    :goto_0
    new-instance v3, Lsun/nio/fs/UnixPath;

    invoke-direct {v3, p0, v0}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;Ljava/lang/String;)V

    return-object v3

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p2

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v2, p2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    const/16 v5, 0x2f

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;
    .locals 8

    const/4 v6, 0x0

    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v3, v5, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    :cond_1
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "glob"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v1}, Lsun/nio/fs/Globs;->toUnixRegexPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixFileSystem;->compilePathMatchPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    new-instance v5, Lsun/nio/fs/UnixFileSystem$3;

    invoke-direct {v5, p0, v2}, Lsun/nio/fs/UnixFileSystem$3;-><init>(Lsun/nio/fs/UnixFileSystem;Ljava/util/regex/Pattern;)V

    return-object v5

    :cond_2
    const-string/jumbo v5, "regex"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Syntax \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' not recognized"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public final getRootDirectories()Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/file/Path;

    iget-object v2, p0, Lsun/nio/fs/UnixFileSystem;->rootDirectory:Lsun/nio/fs/UnixPath;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lsun/nio/fs/UnixFileSystem$1;

    invoke-direct {v1, p0, v0}, Lsun/nio/fs/UnixFileSystem$1;-><init>(Lsun/nio/fs/UnixFileSystem;Ljava/util/List;)V

    return-object v1
.end method

.method public final getSeparator()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "/"

    return-object v0
.end method

.method public final getUserPrincipalLookupService()Ljava/nio/file/attribute/UserPrincipalLookupService;
    .locals 1

    sget-object v0, Lsun/nio/fs/UnixFileSystem$LookupService;->instance:Ljava/nio/file/attribute/UserPrincipalLookupService;

    return-object v0
.end method

.method public final isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isReadOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isSolaris()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method needToResolveAgainstDefaultDirectory()Z
    .locals 1

    iget-boolean v0, p0, Lsun/nio/fs/UnixFileSystem;->needToResolveAgainstDefaultDirectory:Z

    return v0
.end method

.method normalizeJavaPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method normalizeNativePath([C)[C
    .locals 0

    return-object p1
.end method

.method public final provider()Ljava/nio/file/spi/FileSystemProvider;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/UnixFileSystem;->provider:Lsun/nio/fs/UnixFileSystemProvider;

    return-object v0
.end method

.method rootDirectory()Lsun/nio/fs/UnixPath;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/UnixFileSystem;->rootDirectory:Lsun/nio/fs/UnixPath;

    return-object v0
.end method
