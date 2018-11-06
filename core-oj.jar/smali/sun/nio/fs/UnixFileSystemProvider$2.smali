.class Lsun/nio/fs/UnixFileSystemProvider$2;
.super Lsun/nio/fs/AbstractFileTypeDetector;
.source "UnixFileSystemProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/fs/UnixFileSystemProvider;->chain([Lsun/nio/fs/AbstractFileTypeDetector;)Ljava/nio/file/spi/FileTypeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsun/nio/fs/UnixFileSystemProvider;

.field final synthetic val$detectors:[Lsun/nio/fs/AbstractFileTypeDetector;


# direct methods
.method constructor <init>(Lsun/nio/fs/UnixFileSystemProvider;[Lsun/nio/fs/AbstractFileTypeDetector;)V
    .locals 0

    iput-object p1, p0, Lsun/nio/fs/UnixFileSystemProvider$2;->this$0:Lsun/nio/fs/UnixFileSystemProvider;

    iput-object p2, p0, Lsun/nio/fs/UnixFileSystemProvider$2;->val$detectors:[Lsun/nio/fs/AbstractFileTypeDetector;

    invoke-direct {p0}, Lsun/nio/fs/AbstractFileTypeDetector;-><init>()V

    return-void
.end method


# virtual methods
.method protected implProbeContentType(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v3, p0, Lsun/nio/fs/UnixFileSystemProvider$2;->val$detectors:[Lsun/nio/fs/AbstractFileTypeDetector;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    invoke-virtual {v0, p1}, Lsun/nio/fs/AbstractFileTypeDetector;->implProbeContentType(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v6
.end method
