.class Ljava/io/DefaultFileSystem;
.super Ljava/lang/Object;
.source "DefaultFileSystem.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileSystem()Ljava/io/FileSystem;
    .locals 1

    new-instance v0, Ljava/io/UnixFileSystem;

    invoke-direct {v0}, Ljava/io/UnixFileSystem;-><init>()V

    return-object v0
.end method
