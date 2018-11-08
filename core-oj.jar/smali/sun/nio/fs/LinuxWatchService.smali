.class Lsun/nio/fs/LinuxWatchService;
.super Lsun/nio/fs/AbstractWatchService;
.source "LinuxWatchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;,
        Lsun/nio/fs/LinuxWatchService$Poller;
    }
.end annotation


# static fields
.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final poller:Lsun/nio/fs/LinuxWatchService$Poller;


# direct methods
.method static synthetic -get0(Lsun/nio/fs/LinuxWatchService;)Lsun/nio/fs/LinuxWatchService$Poller;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/LinuxWatchService;->poller:Lsun/nio/fs/LinuxWatchService$Poller;

    return-object v0
.end method

.method static synthetic -get1()Lsun/misc/Unsafe;
    .locals 1

    sget-object v0, Lsun/nio/fs/LinuxWatchService;->unsafe:Lsun/misc/Unsafe;

    return-object v0
.end method

.method static synthetic -wrap0()[I
    .locals 1

    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->eventOffsets()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()I
    .locals 1

    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->eventSize()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(IJI)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lsun/nio/fs/LinuxWatchService;->inotifyAddWatch(IJI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(II)I
    .locals 1

    invoke-static {p0, p1}, Lsun/nio/fs/LinuxWatchService;->poll(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(II)V
    .locals 0

    invoke-static {p0, p1}, Lsun/nio/fs/LinuxWatchService;->inotifyRmWatch(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/LinuxWatchService;->unsafe:Lsun/misc/Unsafe;

    return-void
.end method

.method constructor <init>(Lsun/nio/fs/UnixFileSystem;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/nio/fs/AbstractWatchService;-><init>()V

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->inotifyInit()I
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v4, 0x2

    new-array v2, v4, [I

    const/4 v4, 0x0

    :try_start_1
    invoke-static {v0, v4}, Lsun/nio/fs/LinuxWatchService;->configureBlocking(IZ)V

    invoke-static {v2}, Lsun/nio/fs/LinuxWatchService;->socketpair([I)V

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lsun/nio/fs/LinuxWatchService;->configureBlocking(IZ)V
    :try_end_1
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v4, Lsun/nio/fs/LinuxWatchService$Poller;

    invoke-direct {v4, p1, p0, v0, v2}, Lsun/nio/fs/LinuxWatchService$Poller;-><init>(Lsun/nio/fs/UnixFileSystem;Lsun/nio/fs/LinuxWatchService;I[I)V

    iput-object v4, p0, Lsun/nio/fs/LinuxWatchService;->poller:Lsun/nio/fs/LinuxWatchService$Poller;

    iget-object v4, p0, Lsun/nio/fs/LinuxWatchService;->poller:Lsun/nio/fs/LinuxWatchService$Poller;

    invoke-virtual {v4}, Lsun/nio/fs/LinuxWatchService$Poller;->start()V

    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixException;->errno()I

    move-result v4

    sget v5, Lsun/nio/fs/UnixConstants;->EMFILE:I

    if-ne v4, v5, :cond_0

    const-string/jumbo v1, "User limit of inotify instances reached or too many open files"

    :goto_0
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {v3}, Lsun/nio/fs/UnixException;->errorString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v3}, Lsun/nio/fs/UnixException;->errorString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static native configureBlocking(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method private static native eventOffsets()[I
.end method

.method private static native eventSize()I
.end method

.method private static native inotifyAddWatch(IJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method private static native inotifyInit()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method private static native inotifyRmWatch(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method private static native poll(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method private static native socketpair([I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method


# virtual methods
.method implClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/nio/fs/LinuxWatchService;->poller:Lsun/nio/fs/LinuxWatchService$Poller;

    invoke-virtual {v0}, Lsun/nio/fs/LinuxWatchService$Poller;->close()V

    return-void
.end method

.method varargs register(Ljava/nio/file/Path;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/WatchEvent$Kind",
            "<*>;[",
            "Ljava/nio/file/WatchEvent$Modifier;",
            ")",
            "Ljava/nio/file/WatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/nio/fs/LinuxWatchService;->poller:Lsun/nio/fs/LinuxWatchService$Poller;

    invoke-virtual {v0, p1, p2, p3}, Lsun/nio/fs/LinuxWatchService$Poller;->register(Ljava/nio/file/Path;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;

    move-result-object v0

    return-object v0
.end method
