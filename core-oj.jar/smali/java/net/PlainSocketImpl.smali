.class Ljava/net/PlainSocketImpl;
.super Ljava/net/AbstractPlainSocketImpl;
.source "PlainSocketImpl.java"


# direct methods
.method constructor <init>()V
    .locals 1

    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    invoke-direct {p0, v0}, Ljava/net/PlainSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/net/AbstractPlainSocketImpl;-><init>()V

    iput-object p1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-void
.end method

.method private getMarkerFD()Ljava/io/FileDescriptor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    new-instance v4, Ljava/io/FileDescriptor;

    invoke-direct {v4}, Ljava/io/FileDescriptor;-><init>()V

    new-instance v5, Ljava/io/FileDescriptor;

    invoke-direct {v5}, Ljava/io/FileDescriptor;-><init>()V

    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->AF_UNIX:I

    sget v2, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->SHUT_RDWR:I

    invoke-interface {v0, v4, v1}, Llibcore/io/Os;->shutdown(Ljava/io/FileDescriptor;I)V

    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, v5}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v6

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .locals 3
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

    sget-object v1, Ljdk/net/ExtendedSocketOptions;->SO_FLOW_SLA:Ljava/net/SocketOption;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Ljava/net/AbstractPlainSocketImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/net/PlainSocketImpl;->isClosedOrPending()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {p1}, Lsun/net/ExtendedOptionsImpl;->checkGetOptionPermission(Ljava/net/SocketOption;)V

    invoke-static {}, Ljdk/net/SocketFlow;->create()Ljdk/net/SocketFlow;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/PlainSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1, v0}, Lsun/net/ExtendedOptionsImpl;->getFlowOption(Ljava/io/FileDescriptor;Ljdk/net/SocketFlow;)V

    return-object v0
.end method

.method protected setOption(Ljava/net/SocketOption;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption",
            "<TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ljdk/net/ExtendedSocketOptions;->SO_FLOW_SLA:Ljava/net/SocketOption;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Ljava/net/AbstractPlainSocketImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/net/PlainSocketImpl;->isClosedOrPending()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lsun/net/ExtendedOptionsImpl;->checkSetOptionPermission(Ljava/net/SocketOption;)V

    const-class v0, Ljdk/net/SocketFlow;

    invoke-static {p2, v0}, Lsun/net/ExtendedOptionsImpl;->checkValueType(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-virtual {p0}, Ljava/net/PlainSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    check-cast p2, Ljdk/net/SocketFlow;

    invoke-static {v0, p2}, Lsun/net/ExtendedOptionsImpl;->setFlowOption(Ljava/io/FileDescriptor;Ljdk/net/SocketFlow;)V

    goto :goto_0
.end method

.method socketAccept(Ljava/net/SocketImpl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->valid()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket closed"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget v3, p0, Ljava/net/PlainSocketImpl;->timeout:I

    if-gtz v3, :cond_2

    iget-object v3, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v4, Landroid/system/OsConstants;->POLLIN:I

    sget v5, Landroid/system/OsConstants;->POLLERR:I

    or-int/2addr v4, v5

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Llibcore/io/IoBridge;->poll(Ljava/io/FileDescriptor;II)V

    :goto_0
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2}, Ljava/net/InetSocketAddress;-><init>()V

    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v3, v4, v2}, Llibcore/io/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v3, p1, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/FileDescriptor;->setInt$(I)V

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p1, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    iput v3, p1, Ljava/net/SocketImpl;->port:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v3, p1, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3}, Llibcore/io/IoBridge;->getLocalInetSocketAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    iput v3, p1, Ljava/net/SocketImpl;->localport:I

    return-void

    :cond_2
    iget-object v3, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v4, Landroid/system/OsConstants;->POLLIN:I

    sget v5, Landroid/system/OsConstants;->POLLERR:I

    or-int/2addr v4, v5

    iget v5, p0, Ljava/net/PlainSocketImpl;->timeout:I

    invoke-static {v3, v4, v5}, Llibcore/io/IoBridge;->poll(Ljava/io/FileDescriptor;II)V

    goto :goto_0

    :catch_0
    move-exception v0

    iget v3, v0, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->EAGAIN:I

    if-ne v3, v4, :cond_3

    new-instance v3, Ljava/net/SocketTimeoutException;

    invoke-direct {v3, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_3
    iget v3, v0, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->EINVAL:I

    if-eq v3, v4, :cond_4

    iget v3, v0, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->EBADF:I

    if-ne v3, v4, :cond_5

    :cond_4
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket closed"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    goto :goto_1
.end method

.method socketAvailable()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->available(Ljava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method socketBind(Ljava/net/InetAddress;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2}, Llibcore/io/IoBridge;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    iput-object p1, p0, Ljava/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    if-nez p2, :cond_2

    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->getLocalInetSocketAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    iput v0, p0, Ljava/net/PlainSocketImpl;->localport:I

    :goto_0
    return-void

    :cond_2
    iput p2, p0, Ljava/net/PlainSocketImpl;->localport:I

    goto :goto_0
.end method

.method socketClose0(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "socket already closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->getMarkerFD()Ljava/io/FileDescriptor;

    move-result-object v1

    :cond_2
    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v3

    invoke-interface {v2, v1, v3}, Llibcore/io/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, v1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V

    iget-object v2, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v2}, Llibcore/io/AsynchronousCloseMonitor;->signalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v2}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method socketConnect(Ljava/net/InetAddress;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V

    iput-object p1, p0, Ljava/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    iput p2, p0, Ljava/net/PlainSocketImpl;->port:I

    iget v0, p0, Ljava/net/PlainSocketImpl;->localport:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/net/PlainSocketImpl;->isClosedOrPending()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->getLocalInetSocketAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    iput v0, p0, Ljava/net/PlainSocketImpl;->localport:I

    :cond_2
    return-void
.end method

.method socketCreate(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->AF_INET6:I

    if-eqz p1, :cond_1

    sget v0, Landroid/system/OsConstants;->SOCK_STREAM:I

    :goto_0
    invoke-static {v2, v0, v3}, Llibcore/io/IoBridge;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/FileDescriptor;->setInt$(I)V

    iget-object v0, p0, Ljava/net/PlainSocketImpl;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, v3}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    sget v0, Landroid/system/OsConstants;->SOCK_DGRAM:I

    goto :goto_0
.end method

.method socketGetOption(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Llibcore/io/IoBridge;->getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method socketListen(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2, p1}, Llibcore/io/Os;->listen(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method socketSendUrgentData(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [B

    int-to-byte v0, p1

    const/4 v1, 0x0

    aput-byte v0, v2, v1

    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v5, Landroid/system/OsConstants;->MSG_OOB:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v0

    throw v0
.end method

.method protected socketSetOption(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/net/PlainSocketImpl;->socketSetOption0(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Ljava/net/PlainSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/net/PlainSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    :cond_1
    throw v0
.end method

.method socketSetOption0(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/16 v0, 0x1006

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    return-void
.end method

.method socketShutdown(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2, p1}, Llibcore/io/Os;->shutdown(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method
