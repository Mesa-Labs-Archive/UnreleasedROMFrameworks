.class Ljava/nio/file/TempFileHelper;
.super Ljava/lang/Object;
.source "TempFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/file/TempFileHelper$PosixPermissions;
    }
.end annotation


# static fields
.field private static final isPosix:Z

.field private static final random:Ljava/security/SecureRandom;

.field private static final tmpdir:Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v1, "java.io.tmpdir"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sput-object v0, Ljava/nio/file/TempFileHelper;->tmpdir:Ljava/nio/file/Path;

    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->supportedFileAttributeViews()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "posix"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Ljava/nio/file/TempFileHelper;->isPosix:Z

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljava/nio/file/TempFileHelper;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static create(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;Z[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_4

    const-string/jumbo p2, ""

    :cond_1
    :goto_0
    if-nez p0, :cond_2

    sget-object p0, Ljava/nio/file/TempFileHelper;->tmpdir:Ljava/nio/file/Path;

    :cond_2
    sget-boolean v8, Ljava/nio/file/TempFileHelper;->isPosix:Z

    if-eqz v8, :cond_3

    invoke-interface {p0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v8

    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v9

    if-ne v8, v9, :cond_3

    array-length v8, p4

    if-nez v8, :cond_6

    const/4 v8, 0x1

    new-array p4, v8, [Ljava/nio/file/attribute/FileAttribute;

    if-eqz p3, :cond_5

    sget-object v8, Ljava/nio/file/TempFileHelper$PosixPermissions;->dirPermissions:Ljava/nio/file/attribute/FileAttribute;

    :goto_1
    aput-object v8, p4, v10

    :cond_3
    :goto_2
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v7

    :goto_3
    :try_start_0
    invoke-static {p1, p2, p0}, Ljava/nio/file/TempFileHelper;->generatePath(Ljava/lang/String;Ljava/lang/String;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/nio/file/InvalidPathException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz p3, :cond_b

    :try_start_1
    invoke-static {v4, p4}, Ljava/nio/file/Files;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v8

    return-object v8

    :cond_4
    const-string/jumbo p2, ".tmp"

    goto :goto_0

    :cond_5
    sget-object v8, Ljava/nio/file/TempFileHelper$PosixPermissions;->filePermissions:Ljava/nio/file/attribute/FileAttribute;

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_4
    array-length v8, p4

    if-ge v6, v8, :cond_7

    aget-object v8, p4, v6

    invoke-interface {v8}, Ljava/nio/file/attribute/FileAttribute;->name()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "posix:permissions"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v5, 0x1

    :cond_7
    if-nez v5, :cond_3

    array-length v8, p4

    add-int/lit8 v8, v8, 0x1

    new-array v0, v8, [Ljava/nio/file/attribute/FileAttribute;

    array-length v8, p4

    invoke-static {p4, v10, v0, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p4, v0

    array-length v8, v0

    add-int/lit8 v9, v8, -0x1

    if-eqz p3, :cond_9

    sget-object v8, Ljava/nio/file/TempFileHelper$PosixPermissions;->dirPermissions:Ljava/nio/file/attribute/FileAttribute;

    :goto_5
    aput-object v8, v0, v9

    goto :goto_2

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    sget-object v8, Ljava/nio/file/TempFileHelper$PosixPermissions;->filePermissions:Ljava/nio/file/attribute/FileAttribute;

    goto :goto_5

    :catch_0
    move-exception v3

    if-eqz v7, :cond_a

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Invalid prefix or suffix"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_a
    throw v3

    :cond_b
    :try_start_2
    invoke-static {v4, p4}, Ljava/nio/file/Files;->createFile(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v8

    return-object v8

    :catch_1
    move-exception v1

    sget-object v8, Ljava/nio/file/TempFileHelper;->tmpdir:Ljava/nio/file/Path;

    if-ne p0, v8, :cond_c

    if-eqz v7, :cond_c

    new-instance v8, Ljava/lang/SecurityException;

    const-string/jumbo v9, "Unable to create temporary file or directory"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_c
    throw v1

    :catch_2
    move-exception v2

    goto :goto_3
.end method

.method static createTempDirectory(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Ljava/nio/file/TempFileHelper;->create(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;Z[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method static createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Ljava/nio/file/TempFileHelper;->create(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;Z[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method private static generatePath(Ljava/lang/String;Ljava/lang/String;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 6

    sget-object v3, Ljava/nio/file/TempFileHelper;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid prefix or suffix"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-interface {p2, v2}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v3

    return-object v3
.end method
