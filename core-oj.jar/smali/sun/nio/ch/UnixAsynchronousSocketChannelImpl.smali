.class Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;
.super Lsun/nio/ch/AsynchronousSocketChannelImpl;
.source "UnixAsynchronousSocketChannelImpl.java"

# interfaces
.implements Lsun/nio/ch/Port$PollableChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;,
        Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;,
        Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final disableSynchronousRead:Z

.field private static final nd:Lsun/nio/ch/NativeDispatcher;


# instance fields
.field private connectAttachment:Ljava/lang/Object;

.field private connectFuture:Lsun/nio/ch/PendingFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/nio/ch/PendingFuture",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private connectHandler:Ljava/nio/channels/CompletionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private connectPending:Z

.field private final fdVal:I

.field private final guard:Ldalvik/system/CloseGuard;

.field private isGatheringWrite:Z

.field private isScatteringRead:Z

.field private pendingRemote:Ljava/net/SocketAddress;

.field private final port:Lsun/nio/ch/Port;

.field private readAttachment:Ljava/lang/Object;

.field private readBuffer:Ljava/nio/ByteBuffer;

.field private readBuffers:[Ljava/nio/ByteBuffer;

.field private readFuture:Lsun/nio/ch/PendingFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/nio/ch/PendingFuture",
            "<",
            "Ljava/lang/Number;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private readHandler:Ljava/nio/channels/CompletionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/lang/Number;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private readPending:Z

.field private readTimeoutTask:Ljava/lang/Runnable;

.field private readTimer:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final updateLock:Ljava/lang/Object;

.field private writeAttachment:Ljava/lang/Object;

.field private writeBuffer:Ljava/nio/ByteBuffer;

.field private writeBuffers:[Ljava/nio/ByteBuffer;

.field private writeFuture:Lsun/nio/ch/PendingFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/nio/ch/PendingFuture",
            "<",
            "Ljava/lang/Number;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private writeHandler:Ljava/nio/channels/CompletionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/lang/Number;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private writePending:Z

.field private writeTimeoutTask:Ljava/lang/Runnable;

.field private writeTimer:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readAttachment:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Lsun/nio/ch/PendingFuture;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readFuture:Lsun/nio/ch/PendingFuture;

    return-object v0
.end method

.method static synthetic -get2(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/nio/channels/CompletionHandler;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readHandler:Ljava/nio/channels/CompletionHandler;

    return-object v0
.end method

.method static synthetic -get3(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readPending:Z

    return v0
.end method

.method static synthetic -get4(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get5(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeAttachment:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get6(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Lsun/nio/ch/PendingFuture;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeFuture:Lsun/nio/ch/PendingFuture;

    return-object v0
.end method

.method static synthetic -get7(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/nio/channels/CompletionHandler;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeHandler:Ljava/nio/channels/CompletionHandler;

    return-object v0
.end method

.method static synthetic -get8(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writePending:Z

    return v0
.end method

.method static synthetic -set0(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readPending:Z

    return p1
.end method

.method static synthetic -set1(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writePending:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 4

    const-class v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    sput-boolean v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-assertionsDisabled:Z

    new-instance v1, Lsun/nio/ch/SocketDispatcher;

    invoke-direct {v1}, Lsun/nio/ch/SocketDispatcher;-><init>()V

    sput-object v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v2, "sun.nio.ch.disableSynchronousRead"

    const-string/jumbo v3, "false"

    invoke-direct {v1, v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->disableSynchronousRead:Z

    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method constructor <init>(Lsun/nio/ch/Port;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lsun/nio/ch/AsynchronousSocketChannelImpl;-><init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;)V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    new-instance v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;

    invoke-direct {v1, p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;-><init>(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)V

    iput-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readTimeoutTask:Ljava/lang/Runnable;

    new-instance v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;

    invoke-direct {v1, p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;-><init>(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)V

    iput-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeTimeoutTask:Ljava/lang/Runnable;

    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v1

    iput v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fdVal:I

    iget v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fdVal:I

    invoke-virtual {p1, v1, p0}, Lsun/nio/ch/Port;->register(ILsun/nio/ch/Port$PollableChannel;)V

    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v2, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v2}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    throw v0
.end method

.method constructor <init>(Lsun/nio/ch/Port;Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/AsynchronousSocketChannelImpl;-><init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    new-instance v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;

    invoke-direct {v1, p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;-><init>(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)V

    iput-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readTimeoutTask:Ljava/lang/Runnable;

    new-instance v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;

    invoke-direct {v1, p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;-><init>(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)V

    iput-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeTimeoutTask:Ljava/lang/Runnable;

    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v1

    iput v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fdVal:I

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    :try_start_0
    iget v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fdVal:I

    invoke-virtual {p1, v1, p0}, Lsun/nio/ch/Port;->register(ILsun/nio/ch/Port$PollableChannel;)V
    :try_end_0
    .catch Ljava/nio/channels/ShutdownChannelGroupException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static native checkConnect(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private finish(ZZZ)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v4

    if-eqz p2, :cond_0

    :try_start_0
    iget-boolean v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readPending:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-boolean v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readPending:Z

    const/4 v1, 0x1

    :cond_0
    if-eqz p3, :cond_1

    iget-boolean v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writePending:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    iput-boolean v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writePending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    :cond_1
    :goto_0
    monitor-exit v4

    if-eqz v1, :cond_4

    if-eqz v2, :cond_2

    invoke-direct {p0, v5}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->finishWrite(Z)V

    :cond_2
    invoke-direct {p0, p1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->finishRead(Z)V

    return-void

    :cond_3
    :try_start_1
    iget-boolean v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectPending:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectPending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_4
    if-eqz v2, :cond_5

    invoke-direct {p0, p1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->finishWrite(Z)V

    :cond_5
    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->finishConnect(Z)V

    :cond_6
    return-void
.end method

.method private finishConnect(Z)V
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->begin()V

    iget v6, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fdVal:I

    invoke-static {v6}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->checkConnect(I)V

    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->setConnected()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    :goto_0
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    iget-object v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectHandler:Ljava/nio/channels/CompletionHandler;

    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectAttachment:Ljava/lang/Object;

    iget-object v2, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectFuture:Lsun/nio/ch/PendingFuture;

    if-nez v3, :cond_2

    invoke-virtual {v2, v7, v1}, Lsun/nio/ch/PendingFuture;->setResult(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :catch_0
    move-exception v5

    :try_start_2
    instance-of v6, v5, Ljava/nio/channels/ClosedChannelException;

    if-eqz v6, :cond_1

    new-instance v5, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v5}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    move-object v1, v5

    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    throw v6

    :catch_1
    move-exception v4

    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {v3, v0, v7, v1}, Lsun/nio/ch/Invoker;->invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-static {p0, v3, v0, v7, v1}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private finishRead(Z)V
    .locals 14

    const/4 v4, -0x1

    const/4 v1, 0x0

    iget-boolean v6, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->isScatteringRead:Z

    iget-object v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readHandler:Ljava/nio/channels/CompletionHandler;

    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readAttachment:Ljava/lang/Object;

    iget-object v2, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readFuture:Lsun/nio/ch/PendingFuture;

    iget-object v7, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readTimer:Ljava/util/concurrent/Future;

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->begin()V

    if-eqz v6, :cond_1

    iget-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v10, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readBuffers:[Ljava/nio/ByteBuffer;

    sget-object v11, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v9, v10, v11}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J

    move-result-wide v10

    long-to-int v4, v10

    :goto_0
    const/4 v9, -0x2

    if-ne v4, v9, :cond_5

    iget-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v10, 0x1

    :try_start_1
    iput-boolean v10, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readPending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    instance-of v9, v1, Ljava/nio/channels/AsynchronousCloseException;

    if-nez v9, :cond_0

    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->lockAndUpdateEvents()V

    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    return-void

    :cond_1
    :try_start_3
    iget-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v10, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v12, -0x1

    sget-object v11, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v9, v10, v12, v13, v11}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v4

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v9

    throw v10
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v8

    :try_start_4
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableReading()V

    instance-of v9, v8, Ljava/nio/channels/ClosedChannelException;

    if-eqz v9, :cond_2

    new-instance v8, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v8}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    move-object v1, v8

    instance-of v9, v1, Ljava/nio/channels/AsynchronousCloseException;

    if-nez v9, :cond_3

    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->lockAndUpdateEvents()V

    :cond_3
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    :goto_1
    if-eqz v7, :cond_4

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_4
    if-eqz v1, :cond_8

    const/4 v5, 0x0

    :goto_2
    if-nez v3, :cond_a

    invoke-virtual {v2, v5, v1}, Lsun/nio/ch/PendingFuture;->setResult(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_3
    return-void

    :cond_5
    const/4 v9, 0x0

    :try_start_5
    iput-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readBuffer:Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    iput-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readBuffers:[Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    iput-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readAttachment:Ljava/lang/Object;

    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableReading()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    instance-of v9, v1, Ljava/nio/channels/AsynchronousCloseException;

    if-nez v9, :cond_6

    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->lockAndUpdateEvents()V

    :cond_6
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    goto :goto_1

    :catchall_1
    move-exception v9

    instance-of v10, v1, Ljava/nio/channels/AsynchronousCloseException;

    if-nez v10, :cond_7

    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->lockAndUpdateEvents()V

    :cond_7
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    throw v9

    :cond_8
    if-eqz v6, :cond_9

    int-to-long v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_2

    :cond_9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    :cond_a
    if-eqz p1, :cond_b

    invoke-static {v3, v0, v5, v1}, Lsun/nio/ch/Invoker;->invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_b
    invoke-static {p0, v3, v0, v5, v1}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private finishWrite(Z)V
    .locals 14

    const/4 v5, -0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->isGatheringWrite:Z

    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeHandler:Ljava/nio/channels/CompletionHandler;

    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeAttachment:Ljava/lang/Object;

    iget-object v2, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeFuture:Lsun/nio/ch/PendingFuture;

    iget-object v7, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeTimer:Ljava/util/concurrent/Future;

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->begin()V

    if-eqz v3, :cond_1

    iget-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v10, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeBuffers:[Ljava/nio/ByteBuffer;

    sget-object v11, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v9, v10, v11}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J

    move-result-wide v10

    long-to-int v5, v10

    :goto_0
    const/4 v9, -0x2

    if-ne v5, v9, :cond_5

    iget-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v10, 0x1

    :try_start_1
    iput-boolean v10, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writePending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    instance-of v9, v1, Ljava/nio/channels/AsynchronousCloseException;

    if-nez v9, :cond_0

    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->lockAndUpdateEvents()V

    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    return-void

    :cond_1
    :try_start_3
    iget-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v10, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v12, -0x1

    sget-object v11, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v9, v10, v12, v13, v11}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v5

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v9

    throw v10
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v8

    :try_start_4
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableWriting()V

    instance-of v9, v8, Ljava/nio/channels/ClosedChannelException;

    if-eqz v9, :cond_2

    new-instance v8, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v8}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    move-object v1, v8

    instance-of v9, v1, Ljava/nio/channels/AsynchronousCloseException;

    if-nez v9, :cond_3

    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->lockAndUpdateEvents()V

    :cond_3
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    :goto_1
    if-eqz v7, :cond_4

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_4
    if-eqz v1, :cond_8

    const/4 v6, 0x0

    :goto_2
    if-nez v4, :cond_a

    invoke-virtual {v2, v6, v1}, Lsun/nio/ch/PendingFuture;->setResult(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_3
    return-void

    :cond_5
    const/4 v9, 0x0

    :try_start_5
    iput-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeBuffer:Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    iput-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeBuffers:[Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    iput-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeAttachment:Ljava/lang/Object;

    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableWriting()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    instance-of v9, v1, Ljava/nio/channels/AsynchronousCloseException;

    if-nez v9, :cond_6

    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->lockAndUpdateEvents()V

    :cond_6
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    goto :goto_1

    :catchall_1
    move-exception v9

    instance-of v10, v1, Ljava/nio/channels/AsynchronousCloseException;

    if-nez v10, :cond_7

    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->lockAndUpdateEvents()V

    :cond_7
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    throw v9

    :cond_8
    if-eqz v3, :cond_9

    int-to-long v10, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_2

    :cond_9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_2

    :cond_a
    if-eqz p1, :cond_b

    invoke-static {v4, v0, v6, v1}, Lsun/nio/ch/Invoker;->invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_b
    invoke-static {p0, v4, v0, v6, v1}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private lockAndUpdateEvents()V
    .locals 2

    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateEvents()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setConnected()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->state:I

    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->pendingRemote:Ljava/net/SocketAddress;

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateEvents()V
    .locals 3

    sget-boolean v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    const/4 v0, 0x0

    iget-boolean v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readPending:Z

    if-eqz v1, :cond_1

    sget-short v1, Lsun/nio/ch/Net;->POLLIN:S

    or-int/lit8 v0, v1, 0x0

    :cond_1
    iget-boolean v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectPending:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writePending:Z

    if-eqz v1, :cond_3

    :cond_2
    sget-short v1, Lsun/nio/ch/Net;->POLLOUT:S

    or-int/2addr v0, v1

    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    iget v2, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fdVal:I

    invoke-virtual {v1, v2, v0}, Lsun/nio/ch/Port;->startPoll(II)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->finalize()V

    throw v0
.end method

.method public group()Lsun/nio/ch/AsynchronousChannelGroupImpl;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    return-object v0
.end method

.method implClose()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    iget v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fdVal:I

    invoke-virtual {v0, v1}, Lsun/nio/ch/Port;->unregister(I)V

    sget-object v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v2}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->finish(ZZZ)V

    return-void
.end method

.method implConnect(Ljava/net/SocketAddress;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketAddress;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/lang/Void;",
            "-TA;>;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->isOpen()Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    if-nez p3, :cond_0

    invoke-static {v0}, Lsun/nio/ch/CompletedFuture;->withFailure(Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v9

    return-object v9

    :cond_0
    const/4 v9, 0x0

    invoke-static {p0, p3, p2, v9, v0}, Lsun/nio/ch/Invoker;->invoke(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 v9, 0x0

    return-object v9

    :cond_1
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    :cond_2
    iget-object v10, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->state:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_3

    new-instance v9, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v9}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_3
    :try_start_1
    iget v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->state:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_4

    new-instance v9, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v9}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw v9

    :cond_4
    const/4 v9, 0x1

    iput v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->state:I

    iput-object p1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->pendingRemote:Ljava/net/SocketAddress;

    iget-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_6

    const/4 v3, 0x1

    :goto_0
    monitor-exit v10

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->begin()V

    if-eqz v3, :cond_5

    iget-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v11

    invoke-static {v9, v10, v11}, Lsun/net/NetHooks;->beforeTcpConnect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    :cond_5
    iget-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v11

    invoke-static {v9, v10, v11}, Lsun/nio/ch/Net;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    move-result v2

    const/4 v9, -0x2

    if-ne v2, v9, :cond_a

    const/4 v4, 0x0

    iget-object v10, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez p3, :cond_7

    :try_start_3
    new-instance v5, Lsun/nio/ch/PendingFuture;

    sget-object v9, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->CONNECT:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    invoke-direct {v5, p0, v9}, Lsun/nio/ch/PendingFuture;-><init>(Ljava/nio/channels/AsynchronousChannel;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iput-object v5, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectFuture:Lsun/nio/ch/PendingFuture;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v4, v5

    :goto_1
    const/4 v9, 0x1

    :try_start_5
    iput-boolean v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectPending:Z

    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateEvents()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v10
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    return-object v4

    :cond_6
    const/4 v3, 0x0

    goto :goto_0

    :cond_7
    :try_start_7
    iput-object p3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectHandler:Ljava/nio/channels/CompletionHandler;

    iput-object p2, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectAttachment:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v9

    :goto_2
    :try_start_8
    monitor-exit v10

    throw v9
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catch_0
    move-exception v8

    :try_start_9
    instance-of v9, v8, Ljava/nio/channels/ClosedChannelException;

    if-eqz v9, :cond_8

    new-instance v8, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v8}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_8
    move-object v0, v8

    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    :goto_3
    if-eqz v0, :cond_9

    :try_start_a
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    :cond_9
    :goto_4
    if-nez p3, :cond_b

    const/4 v9, 0x0

    invoke-static {v9, v0}, Lsun/nio/ch/CompletedFuture;->withResult(Ljava/lang/Object;Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v9

    return-object v9

    :cond_a
    :try_start_b
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->setConnected()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    goto :goto_3

    :catchall_2
    move-exception v9

    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    throw v9

    :catch_1
    move-exception v7

    invoke-virtual {v0, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_b
    const/4 v9, 0x0

    invoke-static {p0, p3, p2, v9, v0}, Lsun/nio/ch/Invoker;->invoke(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 v9, 0x0

    return-object v9

    :catchall_3
    move-exception v9

    move-object v4, v5

    goto :goto_2
.end method

.method implRead(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Number;",
            "A:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/nio/ByteBuffer;",
            "[",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler",
            "<TV;-TA;>;)",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    sget-boolean v14, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->disableSynchronousRead:Z

    if-nez v14, :cond_0

    if-nez p8, :cond_4

    const/4 v4, 0x1

    :cond_0
    :goto_0
    const/4 v8, -0x2

    const/4 v5, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->begin()V

    if-eqz v4, :cond_1

    if-eqz p1, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v15, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    move-object/from16 v0, p3

    invoke-static {v14, v0, v15}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J

    move-result-wide v14

    long-to-int v8, v14

    :cond_1
    :goto_1
    const/4 v14, -0x2

    if-ne v8, v14, :cond_a

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->isScatteringRead:Z

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readBuffers:[Ljava/nio/ByteBuffer;

    if-nez p8, :cond_7

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readHandler:Ljava/nio/channels/CompletionHandler;

    new-instance v12, Lsun/nio/ch/PendingFuture;

    sget-object v14, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->READ:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v14}, Lsun/nio/ch/PendingFuture;-><init>(Ljava/nio/channels/AsynchronousChannel;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, p0

    iput-object v12, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readFuture:Lsun/nio/ch/PendingFuture;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readAttachment:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v11, v12

    :goto_2
    const-wide/16 v16, 0x0

    cmp-long v14, p4, v16

    if-lez v14, :cond_2

    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readTimeoutTask:Ljava/lang/Runnable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, p4

    move-object/from16 v3, p6

    invoke-virtual {v14, v0, v1, v2, v3}, Lsun/nio/ch/Port;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readTimer:Ljava/util/concurrent/Future;

    :cond_2
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readPending:Z

    invoke-direct/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateEvents()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v15
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v9, 0x1

    if-nez v9, :cond_3

    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableReading()V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    return-object v11

    :cond_4
    invoke-static {}, Lsun/nio/ch/Invoker;->getGroupAndInvokeCount()Lsun/nio/ch/Invoker$GroupAndInvokeCount;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    invoke-static {v7, v14}, Lsun/nio/ch/Invoker;->mayInvokeDirect(Lsun/nio/ch/Invoker$GroupAndInvokeCount;Lsun/nio/ch/AsynchronousChannelGroupImpl;)Z

    move-result v6

    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    invoke-virtual {v14}, Lsun/nio/ch/Port;->isFixedThreadPool()Z

    move-result v14

    xor-int/lit8 v4, v14, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v16, -0x1

    sget-object v15, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-static {v14, v0, v1, v2, v15}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v8

    goto/16 :goto_1

    :cond_7
    :try_start_6
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readHandler:Ljava/nio/channels/CompletionHandler;

    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readAttachment:Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readFuture:Lsun/nio/ch/PendingFuture;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v14

    :goto_3
    :try_start_7
    monitor-exit v15

    throw v14
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_0
    move-exception v13

    :try_start_8
    instance-of v14, v13, Ljava/nio/channels/ClosedChannelException;

    if-eqz v14, :cond_8

    new-instance v13, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v13}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_8
    move-object v5, v13

    if-nez v9, :cond_9

    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableReading()V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    :goto_4
    if-eqz v5, :cond_d

    const/4 v10, 0x0

    :goto_5
    if-eqz p8, :cond_10

    if-eqz v6, :cond_f

    move-object/from16 v0, p8

    move-object/from16 v1, p7

    invoke-static {v7, v0, v1, v10, v5}, Lsun/nio/ch/Invoker;->invokeDirect(Lsun/nio/ch/Invoker$GroupAndInvokeCount;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_6
    const/4 v14, 0x0

    return-object v14

    :cond_a
    if-nez v9, :cond_b

    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableReading()V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    goto :goto_4

    :catchall_1
    move-exception v14

    if-nez v9, :cond_c

    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableReading()V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    throw v14

    :cond_d
    if-eqz p1, :cond_e

    int-to-long v14, v8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_5

    :cond_e
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_5

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p7

    invoke-static {v0, v1, v2, v10, v5}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_10
    invoke-static {v10, v5}, Lsun/nio/ch/CompletedFuture;->withResult(Ljava/lang/Object;Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v14

    return-object v14

    :catchall_2
    move-exception v14

    move-object v11, v12

    goto :goto_3
.end method

.method implWrite(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Number;",
            "A:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/nio/ByteBuffer;",
            "[",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler",
            "<TV;-TA;>;)",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    invoke-static {}, Lsun/nio/ch/Invoker;->getGroupAndInvokeCount()Lsun/nio/ch/Invoker$GroupAndInvokeCount;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    invoke-static {v7, v14}, Lsun/nio/ch/Invoker;->mayInvokeDirect(Lsun/nio/ch/Invoker$GroupAndInvokeCount;Lsun/nio/ch/AsynchronousChannelGroupImpl;)Z

    move-result v6

    if-eqz p8, :cond_3

    if-nez v6, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    invoke-virtual {v14}, Lsun/nio/ch/Port;->isFixedThreadPool()Z

    move-result v14

    xor-int/lit8 v4, v14, 0x1

    :goto_0
    const/4 v8, -0x2

    const/4 v5, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->begin()V

    if-eqz v4, :cond_0

    if-eqz p1, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v15, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    move-object/from16 v0, p3

    invoke-static {v14, v0, v15}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J

    move-result-wide v14

    long-to-int v8, v14

    :cond_0
    :goto_1
    const/4 v14, -0x2

    if-ne v8, v14, :cond_8

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->isGatheringWrite:Z

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeBuffers:[Ljava/nio/ByteBuffer;

    if-nez p8, :cond_5

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeHandler:Ljava/nio/channels/CompletionHandler;

    new-instance v12, Lsun/nio/ch/PendingFuture;

    sget-object v14, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->WRITE:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v14}, Lsun/nio/ch/PendingFuture;-><init>(Ljava/nio/channels/AsynchronousChannel;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, p0

    iput-object v12, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeFuture:Lsun/nio/ch/PendingFuture;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeAttachment:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v11, v12

    :goto_2
    const-wide/16 v16, 0x0

    cmp-long v14, p4, v16

    if-lez v14, :cond_1

    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeTimeoutTask:Ljava/lang/Runnable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, p4

    move-object/from16 v3, p6

    invoke-virtual {v14, v0, v1, v2, v3}, Lsun/nio/ch/Port;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeTimer:Ljava/util/concurrent/Future;

    :cond_1
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writePending:Z

    invoke-direct/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateEvents()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v15
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v9, 0x1

    if-nez v9, :cond_2

    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableWriting()V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    return-object v11

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v16, -0x1

    sget-object v15, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-static {v14, v0, v1, v2, v15}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v8

    goto :goto_1

    :cond_5
    :try_start_6
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeHandler:Ljava/nio/channels/CompletionHandler;

    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeAttachment:Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeFuture:Lsun/nio/ch/PendingFuture;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v14

    :goto_3
    :try_start_7
    monitor-exit v15

    throw v14
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_0
    move-exception v13

    :try_start_8
    instance-of v14, v13, Ljava/nio/channels/ClosedChannelException;

    if-eqz v14, :cond_6

    new-instance v13, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v13}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_6
    move-object v5, v13

    if-nez v9, :cond_7

    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableWriting()V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    :goto_4
    if-eqz v5, :cond_b

    const/4 v10, 0x0

    :goto_5
    if-eqz p8, :cond_e

    if-eqz v6, :cond_d

    move-object/from16 v0, p8

    move-object/from16 v1, p7

    invoke-static {v7, v0, v1, v10, v5}, Lsun/nio/ch/Invoker;->invokeDirect(Lsun/nio/ch/Invoker$GroupAndInvokeCount;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_6
    const/4 v14, 0x0

    return-object v14

    :cond_8
    if-nez v9, :cond_9

    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableWriting()V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    goto :goto_4

    :catchall_1
    move-exception v14

    if-nez v9, :cond_a

    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableWriting()V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    throw v14

    :cond_b
    if-eqz p1, :cond_c

    int-to-long v14, v8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_5

    :cond_c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_5

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p7

    invoke-static {v0, v1, v2, v10, v5}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_e
    invoke-static {v10, v5}, Lsun/nio/ch/CompletedFuture;->withResult(Ljava/lang/Object;Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v14

    return-object v14

    :catchall_2
    move-exception v14

    move-object v11, v12

    goto :goto_3
.end method

.method public onCancel(Lsun/nio/ch/PendingFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/nio/ch/PendingFuture",
            "<**>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lsun/nio/ch/PendingFuture;->getContext()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->CONNECT:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->killConnect()V

    :cond_0
    invoke-virtual {p1}, Lsun/nio/ch/PendingFuture;->getContext()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->READ:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->killReading()V

    :cond_1
    invoke-virtual {p1}, Lsun/nio/ch/PendingFuture;->getContext()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->WRITE:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->killWriting()V

    :cond_2
    return-void
.end method

.method public onEvent(IZ)V
    .locals 4

    sget-short v2, Lsun/nio/ch/Net;->POLLIN:S

    and-int/2addr v2, p1

    if-lez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    sget-short v2, Lsun/nio/ch/Net;->POLLOUT:S

    and-int/2addr v2, p1

    if-lez v2, :cond_2

    const/4 v1, 0x1

    :goto_1
    sget-short v2, Lsun/nio/ch/Net;->POLLERR:S

    sget-short v3, Lsun/nio/ch/Net;->POLLHUP:S

    or-int/2addr v2, v3

    and-int/2addr v2, p1

    if-lez v2, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p0, p2, v0, v1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->finish(ZZZ)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
