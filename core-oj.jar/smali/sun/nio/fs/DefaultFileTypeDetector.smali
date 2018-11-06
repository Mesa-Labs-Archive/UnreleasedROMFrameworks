.class public Lsun/nio/fs/DefaultFileTypeDetector;
.super Ljava/lang/Object;
.source "DefaultFileTypeDetector.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Ljava/nio/file/spi/FileTypeDetector;
    .locals 2

    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    check-cast v0, Lsun/nio/fs/UnixFileSystemProvider;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileSystemProvider;->getFileTypeDetector()Ljava/nio/file/spi/FileTypeDetector;

    move-result-object v1

    return-object v1
.end method
