.class Lsun/nio/ch/SocketChannelImpl;
.super Ljava/nio/channels/SocketChannel;
.source "SocketChannelImpl.java"

# interfaces
.implements Lsun/nio/ch/SelChImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/SocketChannelImpl$DefaultOptionsHolder;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ST_CONNECTED:I = 0x2

.field private static final ST_KILLED:I = 0x4

.field private static final ST_KILLPENDING:I = 0x3

.field private static final ST_PENDING:I = 0x1

.field private static final ST_UNCONNECTED:I = 0x0

.field private static final ST_UNINITIALIZED:I = -0x1

.field private static nd:Lsun/nio/ch/NativeDispatcher;


# instance fields
.field private final fd:Ljava/io/FileDescriptor;

.field private final fdVal:I

.field private final guard:Ldalvik/system/CloseGuard;

.field private isInputOpen:Z

.field private isOutputOpen:Z

.field private isReuseAddress:Z

.field private localAddress:Ljava/net/InetSocketAddress;

.field private final readLock:Ljava/lang/Object;

.field private volatile readerThread:J

.field private readyToConnect:Z

.field private remoteAddress:Ljava/net/InetSocketAddress;

.field private socket:Ljava/net/Socket;

.field private state:I

.field private final stateLock:Ljava/lang/Object;

.field private final writeLock:Ljava/lang/Object;

.field private volatile writerThread:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    new-instance v0, Lsun/nio/ch/SocketDispatcher;

    invoke-direct {v0}, Lsun/nio/ch/SocketDispatcher;-><init>()V

    sput-object v0, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    return-void
.end method

.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    iput-wide v4, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    iput-wide v4, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    iput-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-static {v1}, Lsun/nio/ch/Net;->socket(Z)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->fdVal:I

    iput v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    iput-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    iput-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    iput-object p2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->fdVal:I

    const/4 v0, 0x2

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    invoke-static {p2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    iput-object p3, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    iput-wide v4, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    iput-wide v4, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    iput-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    iput-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    iput-object p2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->fdVal:I

    iput v1, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    :cond_1
    return-void
.end method

.method private static native checkConnect(Ljava/io/FileDescriptor;ZZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private ensureReadOpen()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :cond_2
    const/4 v0, 0x1

    monitor-exit v1

    return v0
.end method

.method private ensureWriteOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v1

    return-void
.end method

.method private readerCleanup()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native sendOutOfBandData(Ljava/io/FileDescriptor;B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private writerCleanup()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/net/SocketAddress;)Ljava/nio/channels/NetworkChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lsun/nio/ch/SocketChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public bind(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v5

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v4

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    :try_start_5
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    new-instance v2, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v2}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw v2

    :cond_1
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/nio/channels/AlreadyBoundException;

    invoke-direct {v2}, Ljava/nio/channels/AlreadyBoundException;-><init>()V

    throw v2

    :cond_2
    if-nez p1, :cond_4

    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkListen(I)V

    :cond_3
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    invoke-static {v2, v6, v7}, Lsun/net/NetHooks;->beforeTcpBind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    invoke-static {v2, v6, v7}, Lsun/nio/ch/Net;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v2

    iput-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit v3

    return-object p0

    :cond_4
    :try_start_8
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method public connect(Ljava/net/SocketAddress;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v8, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v9, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureOpenAndUnconnected()V

    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    iget-object v7, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v6

    if-nez v6, :cond_2

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    sget-boolean v6, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v6, :cond_1

    invoke-static {v3}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_0
    move-exception v5

    :try_start_6
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->close()V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v6

    :try_start_7
    monitor-exit v10

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v6

    :try_start_8
    monitor-exit v9

    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v6

    monitor-exit v8

    throw v6

    :cond_1
    :try_start_9
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const/4 v6, 0x0

    monitor-exit v8

    return v6

    :cond_2
    :try_start_b
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-nez v6, :cond_3

    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v12

    invoke-static {v6, v11, v12}, Lsun/net/NetHooks;->beforeTcpConnect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    :cond_3
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v12

    iput-wide v12, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    monitor-exit v7

    :cond_4
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    :cond_5
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    invoke-static {v6, v0, v7}, Lsun/nio/ch/Net;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    move-result v3

    const/4 v6, -0x3

    if-ne v3, v6, :cond_6

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-result v6

    if-nez v6, :cond_4

    :cond_6
    :try_start_d
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    if-gtz v3, :cond_7

    const/4 v6, -0x2

    if-ne v3, v6, :cond_9

    :cond_7
    const/4 v6, 0x1

    :goto_0
    invoke-virtual {p0, v6}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    sget-boolean v6, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v6, :cond_c

    invoke-static {v3}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v6

    if-nez v6, :cond_c

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catchall_3
    move-exception v6

    :try_start_e
    monitor-exit v7

    throw v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception v6

    :try_start_f
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    if-gtz v3, :cond_8

    const/4 v7, -0x2

    if-ne v3, v7, :cond_a

    :cond_8
    const/4 v7, 0x1

    :goto_1
    invoke-virtual {p0, v7}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    sget-boolean v7, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v7, :cond_b

    invoke-static {v3}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v7

    if-nez v7, :cond_b

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_9
    const/4 v6, 0x0

    goto :goto_0

    :cond_a
    const/4 v7, 0x0

    goto :goto_1

    :cond_b
    throw v6
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_c
    :try_start_10
    iget-object v7, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    iput-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    if-lez v3, :cond_e

    const/4 v6, 0x2

    iput v6, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v6}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v6

    iput-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :cond_d
    :try_start_12
    monitor-exit v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    monitor-exit v10
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :try_start_14
    monitor-exit v9
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    const/4 v6, 0x1

    monitor-exit v8

    return v6

    :cond_e
    :try_start_15
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    move-result v6

    if-nez v6, :cond_f

    const/4 v6, 0x1

    iput v6, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v6}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v6

    iput-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    :cond_f
    :try_start_16
    monitor-exit v7
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :try_start_17
    monitor-exit v10
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :try_start_18
    monitor-exit v9
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    const/4 v6, 0x0

    monitor-exit v8

    return v6

    :catchall_5
    move-exception v6

    :try_start_19
    monitor-exit v7

    throw v6
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
.end method

.method ensureOpenAndUnconnected()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    new-instance v0, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v0}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v1

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->close()V

    return-void
.end method

.method public finishConnect()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v13, 0x3

    const/4 v12, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v7, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v7

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v6

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v2

    monitor-exit v5

    throw v2

    :cond_0
    :try_start_5
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v8, 0x2

    if-ne v2, v8, :cond_1

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit v5

    return v3

    :cond_1
    :try_start_8
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-eq v2, v3, :cond_2

    new-instance v2, Ljava/nio/channels/NoConnectionPendingException;

    invoke-direct {v2}, Ljava/nio/channels/NoConnectionPendingException;-><init>()V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_2
    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v0, 0x0

    :try_start_a
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :try_start_b
    iget-object v8, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-result v2

    if-nez v2, :cond_7

    :try_start_d
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :try_start_e
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :try_start_f
    iget-object v9, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    const-wide/16 v10, 0x0

    :try_start_10
    iput-wide v10, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-ne v2, v13, :cond_3

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    const/4 v0, 0x0

    :cond_3
    :try_start_11
    monitor-exit v9
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    if-ltz v4, :cond_4

    if-nez v12, :cond_5

    :cond_4
    :goto_0
    :try_start_12
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_6

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :catch_0
    move-exception v1

    :try_start_13
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->close()V

    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :catchall_3
    move-exception v2

    :try_start_14
    monitor-exit v9
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :try_start_15
    throw v2
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :cond_5
    move v3, v4

    goto :goto_0

    :cond_6
    :try_start_16
    monitor-exit v6
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    monitor-exit v5

    return v4

    :cond_7
    :try_start_17
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v10

    iput-wide v10, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :try_start_18
    monitor-exit v8

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v2

    invoke-interface {v2}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    move-result v2

    if-nez v2, :cond_e

    :cond_8
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-boolean v8, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    const/4 v9, 0x0

    invoke-static {v2, v9, v8}, Lsun/nio/ch/SocketChannelImpl;->checkConnect(Ljava/io/FileDescriptor;ZZ)I

    move-result v0

    const/4 v2, -0x3

    if-ne v0, v2, :cond_9

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    move-result v2

    if-nez v2, :cond_8

    :cond_9
    :try_start_19
    monitor-exit v7
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    :try_start_1a
    iget-object v7, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    const-wide/16 v8, 0x0

    :try_start_1b
    iput-wide v8, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-ne v2, v13, :cond_a

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    const/4 v0, 0x0

    :cond_a
    :try_start_1c
    monitor-exit v7
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    if-gtz v0, :cond_b

    if-ne v0, v12, :cond_f

    :cond_b
    move v2, v3

    :goto_1
    :try_start_1d
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_12

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_12

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    :catchall_4
    move-exception v2

    :try_start_1e
    monitor-exit v8

    throw v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    :catchall_5
    move-exception v2

    :try_start_1f
    monitor-exit v7

    throw v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    :catchall_6
    move-exception v2

    :try_start_20
    iget-object v7, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_0
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    const-wide/16 v8, 0x0

    :try_start_21
    iput-wide v8, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    iget v8, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-ne v8, v13, :cond_c

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    const/4 v0, 0x0

    :cond_c
    :try_start_22
    monitor-exit v7

    if-gtz v0, :cond_d

    if-ne v0, v12, :cond_10

    :cond_d
    :goto_2
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    sget-boolean v3, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_11

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v3

    if-nez v3, :cond_11

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_0
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    :cond_e
    :goto_3
    :try_start_23
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-boolean v8, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    const/4 v9, 0x1

    invoke-static {v2, v9, v8}, Lsun/nio/ch/SocketChannelImpl;->checkConnect(Ljava/io/FileDescriptor;ZZ)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v2, -0x3

    if-ne v0, v2, :cond_9

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_5

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_3

    :catchall_7
    move-exception v2

    :try_start_24
    monitor-exit v7
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_0
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    :try_start_25
    throw v2

    :cond_f
    move v2, v4

    goto :goto_1

    :catchall_8
    move-exception v2

    monitor-exit v7

    throw v2

    :cond_10
    move v3, v4

    goto :goto_2

    :cond_11
    throw v2
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_0
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    :cond_12
    if-lez v0, :cond_14

    :try_start_26
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    const/4 v2, 0x2

    :try_start_27
    iput v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v2

    iput-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_9

    :cond_13
    :try_start_28
    monitor-exit v4
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    :try_start_29
    monitor-exit v6
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_2

    monitor-exit v5

    return v3

    :catchall_9
    move-exception v2

    :try_start_2a
    monitor-exit v4

    throw v2
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1

    :cond_14
    :try_start_2b
    monitor-exit v6
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2

    monitor-exit v5

    return v4
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getFDVal()I
    .locals 1

    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->fdVal:I

    return v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2
    :try_start_1
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_3

    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isReuseAddress:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_3
    :try_start_2
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_5

    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    :goto_0
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1, v0, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_4
    :try_start_3
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v3, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v1, v3, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method protected implCloseSelectableChannel()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    sget-object v0, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v2}, Lsun/nio/ch/NativeDispatcher;->preClose(Ljava/io/FileDescriptor;)V

    :cond_0
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    invoke-static {v2, v3}, Lsun/nio/ch/NativeThread;->signal(J)V

    :cond_1
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    invoke-static {v2, v3}, Lsun/nio/ch/NativeThread;->signal(J)V

    :cond_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected implConfigureBlocking(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    return-void
.end method

.method public isConnected()Z
    .locals 3

    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isConnectionPending()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v0, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isInputOpen()Z
    .locals 2

    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isOutputOpen()Z
    .locals 2

    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public kill()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v2, 0x4

    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x4

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :cond_1
    :try_start_2
    sget-boolean v0, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_3
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    sget-object v0, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v2}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    const/4 v0, 0x4

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_4
    const/4 v0, 0x3

    :try_start_4
    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public localAddress()Ljava/net/InetSocketAddress;
    .locals 2

    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method poll(IJ)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v2

    return v1

    :cond_2
    :try_start_4
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v4

    iput-wide v4, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v3

    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3, p1, p2, p3}, Lsun/nio/ch/Net;->poll(Ljava/io/FileDescriptor;IJ)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v0

    :try_start_6
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    if-lez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {p0, v1}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    :try_start_7
    monitor-exit v3

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_8
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, -0x2

    const/4 v2, 0x1

    const/4 v8, -0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureReadOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v4

    return v8

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    if-nez v1, :cond_4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v4

    return v8

    :cond_2
    :try_start_7
    monitor-exit v1

    sget-boolean v1, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_3

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1

    :catchall_1
    move-exception v2

    :try_start_8
    monitor-exit v1

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_3
    monitor-exit v4

    return v3

    :cond_4
    :try_start_9
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v6

    iput-wide v6, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    monitor-exit v5

    :cond_5
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v6, -0x1

    sget-object v5, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v1, p1, v6, v7, v5}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_6
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-result v1

    :try_start_b
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    if-gtz v0, :cond_7

    if-ne v0, v9, :cond_9

    :cond_7
    :goto_0
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-gtz v0, :cond_a

    :try_start_c
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_a

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    monitor-exit v4

    return v8

    :catchall_2
    move-exception v1

    :try_start_e
    monitor-exit v5

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :catchall_3
    move-exception v1

    :try_start_f
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    if-gtz v0, :cond_8

    if-ne v0, v9, :cond_c

    :cond_8
    :goto_1
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-gtz v0, :cond_d

    :try_start_10
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_d

    :try_start_11
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    monitor-exit v4

    return v8

    :cond_9
    move v2, v3

    goto :goto_0

    :cond_a
    :try_start_12
    monitor-exit v2

    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_b

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :catchall_4
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_b
    monitor-exit v4

    return v1

    :cond_c
    move v2, v3

    goto :goto_1

    :cond_d
    :try_start_13
    monitor-exit v2

    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_e

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_e

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :catchall_5
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_e
    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_1
    array-length v2, p1

    sub-int/2addr v2, p3

    if-gt p2, v2, :cond_0

    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureReadOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    const-wide/16 v2, -0x1

    monitor-exit v4

    return-wide v2

    :cond_2
    const-wide/16 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v2

    if-nez v2, :cond_5

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-wide/16 v2, -0x1

    monitor-exit v4

    return-wide v2

    :cond_3
    :try_start_7
    monitor-exit v2

    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_4

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    :catchall_1
    move-exception v3

    :try_start_8
    monitor-exit v2

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_4
    const-wide/16 v2, 0x0

    monitor-exit v4

    return-wide v2

    :cond_5
    :try_start_9
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v6

    iput-wide v6, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    monitor-exit v3

    :cond_6
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v3, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v2, p1, p2, p3, v3}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    const-wide/16 v2, -0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_7
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-result-wide v6

    :try_start_b
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_8

    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    :cond_8
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const-wide/16 v8, 0x0

    cmp-long v3, v0, v8

    if-gtz v3, :cond_b

    :try_start_c
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_b

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    const-wide/16 v2, -0x1

    monitor-exit v4

    return-wide v2

    :catchall_2
    move-exception v2

    :try_start_e
    monitor-exit v3

    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :catchall_3
    move-exception v2

    :try_start_f
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-gtz v3, :cond_9

    const-wide/16 v6, -0x2

    cmp-long v3, v0, v6

    if-nez v3, :cond_d

    :cond_9
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-gtz v5, :cond_e

    :try_start_10
    iget-boolean v5, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_e

    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    const-wide/16 v2, -0x1

    monitor-exit v4

    return-wide v2

    :cond_a
    const/4 v2, 0x0

    goto :goto_0

    :cond_b
    :try_start_12
    monitor-exit v2

    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_c

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :catchall_4
    move-exception v3

    monitor-exit v2

    throw v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_c
    monitor-exit v4

    return-wide v6

    :cond_d
    const/4 v3, 0x0

    goto :goto_1

    :cond_e
    :try_start_13
    monitor-exit v3

    sget-boolean v3, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_f

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_f

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :catchall_5
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_f
    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
.end method

.method public remoteAddress()Ljava/net/SocketAddress;
    .locals 2

    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method sendOutOfBandData(B)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureWriteOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v1

    if-nez v1, :cond_2

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v1}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v2

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v4

    throw v1

    :cond_0
    :try_start_7
    monitor-exit v2

    sget-boolean v1, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_1
    monitor-exit v4

    return v3

    :cond_2
    :try_start_8
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v6

    iput-wide v6, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    monitor-exit v5

    :cond_3
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1, p1}, Lsun/nio/ch/SocketChannelImpl;->sendOutOfBandData(Ljava/io/FileDescriptor;B)I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_4
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-result v1

    :try_start_a
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    if-gtz v0, :cond_5

    if-ne v0, v8, :cond_7

    :cond_5
    :goto_0
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-gtz v0, :cond_8

    :try_start_b
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_8

    new-instance v1, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v1}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_c
    monitor-exit v2

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_3
    move-exception v1

    :try_start_d
    monitor-exit v5

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception v1

    :try_start_e
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    if-gtz v0, :cond_6

    if-ne v0, v8, :cond_a

    :cond_6
    :goto_1
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-gtz v0, :cond_b

    :try_start_f
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_b

    new-instance v1, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v1}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :catchall_5
    move-exception v1

    :try_start_10
    monitor-exit v2

    throw v1

    :cond_7
    move v2, v3

    goto :goto_0

    :cond_8
    monitor-exit v2

    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_9

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_9
    monitor-exit v4

    return v1

    :cond_a
    move v2, v3

    goto :goto_1

    :cond_b
    :try_start_11
    monitor-exit v2

    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_c

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_c
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/SocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption",
            "<TT;>;TT;)",
            "Ljava/nio/channels/SocketChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2
    :try_start_1
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_4

    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    :goto_0
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1, v0, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object p0

    :cond_3
    :try_start_2
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    goto :goto_0

    :cond_4
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_5

    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    move-result v1

    if-eqz v1, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isReuseAddress:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object p0

    :cond_5
    :try_start_3
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v3, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v1, v3, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    return-object p0
.end method

.method public shutdownInput()Ljava/nio/channels/SocketChannel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lsun/nio/ch/Net;->shutdown(Ljava/io/FileDescriptor;I)V

    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    invoke-static {v2, v3}, Lsun/nio/ch/NativeThread;->signal(J)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v1

    return-object p0
.end method

.method public shutdownOutput()Ljava/nio/channels/SocketChannel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lsun/nio/ch/Net;->shutdown(Ljava/io/FileDescriptor;I)V

    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    invoke-static {v2, v3}, Lsun/nio/ch/NativeThread;->signal(J)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v1

    return-object p0
.end method

.method public socket()Ljava/net/Socket;
    .locals 2

    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    invoke-static {p0}, Lsun/nio/ch/SocketAdaptor;->create(Lsun/nio/ch/SocketChannelImpl;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->socket:Ljava/net/Socket;

    :cond_0
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->socket:Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final supportedOptions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/net/SocketOption",
            "<*>;>;"
        }
    .end annotation

    sget-object v0, Lsun/nio/ch/SocketChannelImpl$DefaultOptionsHolder;->defaultOptions:Ljava/util/Set;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v2, " local="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddressAsString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, " remote="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/SocketAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v3

    goto :goto_0

    :pswitch_0
    :try_start_1
    const-string/jumbo v2, "unconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :pswitch_1
    :try_start_2
    const-string/jumbo v2, "connection-pending"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_2
    const-string/jumbo v2, "connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    if-nez v2, :cond_4

    const-string/jumbo v2, " ishut"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    if-nez v2, :cond_1

    const-string/jumbo v2, " oshut"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V
    .locals 2

    const/4 v0, 0x0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    sget-short v1, Lsun/nio/ch/Net;->POLLIN:S

    or-int/lit8 v0, v1, 0x0

    :cond_0
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_1

    sget-short v1, Lsun/nio/ch/Net;->POLLOUT:S

    or-int/2addr v0, v1

    :cond_1
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_2

    sget-short v1, Lsun/nio/ch/Net;->POLLCONN:S

    or-int/2addr v0, v1

    :cond_2
    iget-object v1, p2, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    invoke-virtual {v1, p2, v0}, Lsun/nio/ch/SelectorImpl;->putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V

    return-void
.end method

.method public translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/SocketChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1

    invoke-virtual {p2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/SocketChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps()I

    move-result v0

    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v2

    move v1, p2

    sget-short v5, Lsun/nio/ch/Net;->POLLNVAL:S

    and-int/2addr v5, p1

    if-eqz v5, :cond_0

    return v4

    :cond_0
    sget-short v5, Lsun/nio/ch/Net;->POLLERR:S

    sget-short v6, Lsun/nio/ch/Net;->POLLHUP:S

    or-int/2addr v5, v6

    and-int/2addr v5, p1

    if-eqz v5, :cond_2

    move v1, v0

    invoke-virtual {p3, v0}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    iput-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    not-int v5, v2

    and-int/2addr v5, v0

    if-eqz v5, :cond_1

    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    sget-short v5, Lsun/nio/ch/Net;->POLLIN:S

    and-int/2addr v5, p1

    if-eqz v5, :cond_3

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_3

    iget v5, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-ne v5, v7, :cond_3

    or-int/lit8 v1, p2, 0x1

    :cond_3
    sget-short v5, Lsun/nio/ch/Net;->POLLCONN:S

    and-int/2addr v5, p1

    if-eqz v5, :cond_5

    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_5

    iget v5, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-eqz v5, :cond_4

    iget v5, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-ne v5, v3, :cond_5

    :cond_4
    or-int/lit8 v1, v1, 0x8

    iput-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    :cond_5
    sget-short v5, Lsun/nio/ch/Net;->POLLOUT:S

    and-int/2addr v5, p1

    if-eqz v5, :cond_6

    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_6

    iget v5, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-ne v5, v7, :cond_6

    or-int/lit8 v1, v1, 0x4

    :cond_6
    invoke-virtual {p3, v1}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    not-int v5, v2

    and-int/2addr v5, v1

    if-eqz v5, :cond_7

    :goto_1
    return v3

    :cond_7
    move v3, v4

    goto :goto_1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureWriteOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v1

    if-nez v1, :cond_3

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v1}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v2

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v4

    throw v1

    :cond_1
    :try_start_7
    monitor-exit v2

    sget-boolean v1, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_2
    monitor-exit v4

    return v3

    :cond_3
    :try_start_8
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v6

    iput-wide v6, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    monitor-exit v5

    :cond_4
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v6, -0x1

    sget-object v5, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v1, p1, v6, v7, v5}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_5
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-result v1

    :try_start_a
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    if-gtz v0, :cond_6

    if-ne v0, v8, :cond_8

    :cond_6
    :goto_0
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-gtz v0, :cond_9

    :try_start_b
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_9

    new-instance v1, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v1}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_c
    monitor-exit v2

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_3
    move-exception v1

    :try_start_d
    monitor-exit v5

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception v1

    :try_start_e
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    if-gtz v0, :cond_7

    if-ne v0, v8, :cond_b

    :cond_7
    :goto_1
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-gtz v0, :cond_c

    :try_start_f
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_c

    new-instance v1, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v1}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :catchall_5
    move-exception v1

    :try_start_10
    monitor-exit v2

    throw v1

    :cond_8
    move v2, v3

    goto :goto_0

    :cond_9
    monitor-exit v2

    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_a

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_a
    monitor-exit v4

    return v1

    :cond_b
    move v2, v3

    goto :goto_1

    :cond_c
    :try_start_11
    monitor-exit v2

    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_d

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_d
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_1
    array-length v2, p1

    sub-int/2addr v2, p3

    if-gt p2, v2, :cond_0

    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureWriteOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v2

    if-nez v2, :cond_4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    new-instance v2, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v2}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v3

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v4

    throw v2

    :cond_2
    :try_start_7
    monitor-exit v3

    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_3
    const-wide/16 v2, 0x0

    monitor-exit v4

    return-wide v2

    :cond_4
    :try_start_8
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v6

    iput-wide v6, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    monitor-exit v3

    :cond_5
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v3, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v2, p1, p2, p3, v3}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    const-wide/16 v2, -0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_6
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-result-wide v6

    :try_start_a
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_7

    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    :cond_7
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const-wide/16 v8, 0x0

    cmp-long v2, v0, v8

    if-gtz v2, :cond_a

    :try_start_b
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a

    new-instance v2, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v2}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_c
    monitor-exit v3

    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_3
    move-exception v2

    :try_start_d
    monitor-exit v3

    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception v2

    :try_start_e
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-gtz v3, :cond_8

    const-wide/16 v6, -0x2

    cmp-long v3, v0, v6

    if-nez v3, :cond_c

    :cond_8
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-gtz v5, :cond_d

    :try_start_f
    iget-boolean v5, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_d

    new-instance v2, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v2}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :catchall_5
    move-exception v2

    :try_start_10
    monitor-exit v3

    throw v2

    :cond_9
    const/4 v2, 0x0

    goto :goto_0

    :cond_a
    monitor-exit v3

    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_b

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_b
    monitor-exit v4

    return-wide v6

    :cond_c
    const/4 v3, 0x0

    goto :goto_1

    :cond_d
    :try_start_11
    monitor-exit v3

    sget-boolean v3, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_e

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_e

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_e
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
.end method
