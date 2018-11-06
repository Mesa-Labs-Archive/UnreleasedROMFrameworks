.class public Lsun/nio/fs/LinuxFileSystemProvider;
.super Lsun/nio/fs/UnixFileSystemProvider;
.source "LinuxFileSystemProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsun/nio/fs/UnixFileSystemProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;
    .locals 1
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

    invoke-super {p0, p1, p2, p3}, Lsun/nio/fs/UnixFileSystemProvider;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    return-object v0
.end method

.method public varargs getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Lsun/nio/fs/DynamicFileAttributeView;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lsun/nio/fs/UnixFileSystemProvider;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Lsun/nio/fs/DynamicFileAttributeView;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getFileStore(Lsun/nio/fs/UnixPath;)Ljava/nio/file/FileStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lsun/nio/fs/LinuxFileSystemProvider;->getFileStore(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/LinuxFileStore;

    move-result-object v0

    return-object v0
.end method

.method getFileStore(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/LinuxFileStore;
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

.method getFileTypeDetector()Ljava/nio/file/spi/FileTypeDetector;
    .locals 1

    new-instance v0, Lsun/nio/fs/MimeTypesFileTypeDetector;

    invoke-direct {v0}, Lsun/nio/fs/MimeTypesFileTypeDetector;-><init>()V

    return-object v0
.end method

.method newFileSystem(Ljava/lang/String;)Lsun/nio/fs/LinuxFileSystem;
    .locals 1

    new-instance v0, Lsun/nio/fs/LinuxFileSystem;

    invoke-direct {v0, p0, p1}, Lsun/nio/fs/LinuxFileSystem;-><init>(Lsun/nio/fs/UnixFileSystemProvider;Ljava/lang/String;)V

    return-object v0
.end method

.method bridge synthetic newFileSystem(Ljava/lang/String;)Lsun/nio/fs/UnixFileSystem;
    .locals 1

    invoke-virtual {p0, p1}, Lsun/nio/fs/LinuxFileSystemProvider;->newFileSystem(Ljava/lang/String;)Lsun/nio/fs/LinuxFileSystem;

    move-result-object v0

    return-object v0
.end method

.method public varargs readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 1
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

    invoke-super {p0, p1, p2, p3}, Lsun/nio/fs/UnixFileSystemProvider;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    return-object v0
.end method
