.class public Lsun/nio/fs/DefaultFileSystemProvider;
.super Ljava/lang/Object;
.source "DefaultFileSystemProvider.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Ljava/nio/file/spi/FileSystemProvider;
    .locals 3

    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v2, "os.name"

    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "SunOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "sun.nio.fs.SolarisFileSystemProvider"

    invoke-static {v1}, Lsun/nio/fs/DefaultFileSystemProvider;->createProvider(Ljava/lang/String;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "Linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "sun.nio.fs.LinuxFileSystemProvider"

    invoke-static {v1}, Lsun/nio/fs/DefaultFileSystemProvider;->createProvider(Ljava/lang/String;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    return-object v1

    :cond_1
    const-string/jumbo v1, "OS X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "sun.nio.fs.MacOSXFileSystemProvider"

    invoke-static {v1}, Lsun/nio/fs/DefaultFileSystemProvider;->createProvider(Ljava/lang/String;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    return-object v1

    :cond_2
    const-string/jumbo v1, "AIX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "sun.nio.fs.AixFileSystemProvider"

    invoke-static {v1}, Lsun/nio/fs/DefaultFileSystemProvider;->createProvider(Ljava/lang/String;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    return-object v1

    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v2, "Platform not recognized"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static createProvider(Ljava/lang/String;)Ljava/nio/file/spi/FileSystemProvider;
    .locals 4

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/spi/FileSystemProvider;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
