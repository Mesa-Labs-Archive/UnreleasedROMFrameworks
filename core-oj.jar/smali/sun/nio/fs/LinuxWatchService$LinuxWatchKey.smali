.class Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;
.super Lsun/nio/fs/AbstractWatchKey;
.source "LinuxWatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/LinuxWatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinuxWatchKey"
.end annotation


# instance fields
.field private final ifd:I

.field private volatile wd:I


# direct methods
.method constructor <init>(Lsun/nio/fs/UnixPath;Lsun/nio/fs/LinuxWatchService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsun/nio/fs/AbstractWatchKey;-><init>(Ljava/nio/file/Path;Lsun/nio/fs/AbstractWatchService;)V

    iput p3, p0, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->ifd:I

    iput p4, p0, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->wd:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    invoke-virtual {p0}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->watcher()Lsun/nio/fs/AbstractWatchService;

    move-result-object v0

    check-cast v0, Lsun/nio/fs/LinuxWatchService;

    invoke-static {v0}, Lsun/nio/fs/LinuxWatchService;->-get0(Lsun/nio/fs/LinuxWatchService;)Lsun/nio/fs/LinuxWatchService$Poller;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsun/nio/fs/LinuxWatchService$Poller;->cancel(Ljava/nio/file/WatchKey;)V

    :cond_0
    return-void
.end method

.method descriptor()I
    .locals 1

    iget v0, p0, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->wd:I

    return v0
.end method

.method invalidate(Z)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    iget v1, p0, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->ifd:I

    iget v2, p0, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->wd:I

    invoke-static {v1, v2}, Lsun/nio/fs/LinuxWatchService;->-wrap4(II)V
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->wd:I

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 2

    iget v0, p0, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->wd:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
