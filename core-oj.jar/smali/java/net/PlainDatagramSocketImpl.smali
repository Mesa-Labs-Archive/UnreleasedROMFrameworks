.class Ljava/net/PlainDatagramSocketImpl;
.super Ljava/net/AbstractPlainDatagramSocketImpl;
.source "PlainDatagramSocketImpl.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/net/AbstractPlainDatagramSocketImpl;-><init>()V

    return-void
.end method

.method private doRecv(Ljava/net/DatagramPacket;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v1, p0, Ljava/net/PlainDatagramSocketImpl;->timeout:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->POLLIN:I

    sget v3, Landroid/system/OsConstants;->POLLERR:I

    or-int/2addr v2, v3

    iget v3, p0, Ljava/net/PlainDatagramSocketImpl;->timeout:I

    invoke-static {v1, v2, v3}, Llibcore/io/IoBridge;->poll(Ljava/io/FileDescriptor;II)V

    :cond_1
    iget-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v3

    iget v4, p1, Ljava/net/DatagramPacket;->bufLength:I

    iget-boolean v7, p0, Ljava/net/PlainDatagramSocketImpl;->connected:Z

    move v5, p2

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I

    return-void
.end method

.method private static makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Landroid/system/StructGroupReq;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v0

    :goto_0
    new-instance v1, Landroid/system/StructGroupReq;

    invoke-direct {v1, v0, p0}, Landroid/system/StructGroupReq;-><init>(ILjava/net/InetAddress;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized bind0(ILjava/net/InetAddress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p2, p1}, Llibcore/io/IoBridge;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    if-nez p1, :cond_1

    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->getLocalInetSocketAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    iput v0, p0, Ljava/net/PlainDatagramSocketImpl;->localPort:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iput p1, p0, Ljava/net/PlainDatagramSocketImpl;->localPort:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected connect0(Ljava/net/InetAddress;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    return-void
.end method

.method protected datagramSocketClose()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected datagramSocketCreate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v3, 0x0

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I

    invoke-static {v1, v2, v3}, Llibcore/io/IoBridge;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x20

    invoke-static {v1, v3, v2}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v4, Landroid/system/OsConstants;->IP_MULTICAST_ALL:I

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method protected disconnect0(I)V
    .locals 4

    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/net/InetAddress;

    invoke-direct {v1}, Ljava/net/InetAddress;-><init>()V

    invoke-virtual {v1}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    sget v3, Landroid/system/OsConstants;->AF_UNSPEC:I

    iput v3, v2, Ljava/net/InetAddress$InetAddressHolder;->family:I

    :try_start_0
    iget-object v2, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

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

    invoke-super {p0, p1}, Ljava/net/AbstractPlainDatagramSocketImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

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

    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1, v0}, Lsun/net/ExtendedOptionsImpl;->getFlowOption(Ljava/io/FileDescriptor;Ljdk/net/SocketFlow;)V

    return-object v0
.end method

.method protected getTTL()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->getTimeToLive()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method protected getTimeToLive()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/16 v1, 0x11

    invoke-static {v0, v1}, Llibcore/io/IoBridge;->getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected join(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {p1, p2}, Ljava/net/PlainDatagramSocketImpl;->makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Landroid/system/StructGroupReq;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v0, v2, v1}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    return-void
.end method

.method protected leave(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {p1, p2}, Ljava/net/PlainDatagramSocketImpl;->makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Landroid/system/StructGroupReq;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v0, v2, v1}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    return-void
.end method

.method protected declared-synchronized peek(Ljava/net/InetAddress;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/net/DatagramPacket;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    sget v1, Landroid/system/OsConstants;->MSG_PEEK:I

    invoke-direct {p0, v0, v1}, Ljava/net/PlainDatagramSocketImpl;->doRecv(Ljava/net/DatagramPacket;I)V

    invoke-virtual {p1}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    iget v2, v2, Ljava/net/InetAddress$InetAddressHolder;->address:I

    iput v2, v1, Ljava/net/InetAddress$InetAddressHolder;->address:I

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getPort()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized peekData(Ljava/net/DatagramPacket;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget v0, Landroid/system/OsConstants;->MSG_PEEK:I

    invoke-direct {p0, p1, v0}, Ljava/net/PlainDatagramSocketImpl;->doRecv(Ljava/net/DatagramPacket;I)V

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized receive0(Ljava/net/DatagramPacket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Ljava/net/PlainDatagramSocketImpl;->doRecv(Ljava/net/DatagramPacket;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected send(Ljava/net/DatagramPacket;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null buffer || null address"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Ljava/net/PlainDatagramSocketImpl;->connected:Z

    if-eqz v0, :cond_3

    const/4 v6, 0x0

    :goto_0
    iget-boolean v0, p0, Ljava/net/PlainDatagramSocketImpl;->connected:Z

    if-eqz v0, :cond_4

    const/4 v5, 0x0

    :goto_1
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v6

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    goto :goto_1
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

    invoke-super {p0, p1, p2}, Ljava/net/AbstractPlainDatagramSocketImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

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

    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    check-cast p2, Ljdk/net/SocketFlow;

    invoke-static {v0, p2}, Lsun/net/ExtendedOptionsImpl;->setFlowOption(Ljava/io/FileDescriptor;Ljdk/net/SocketFlow;)V

    goto :goto_0
.end method

.method protected setTTL(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/net/PlainDatagramSocketImpl;->setTimeToLive(I)V

    return-void
.end method

.method protected setTimeToLive(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v0, v2, v1}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    return-void
.end method

.method protected socketGetOption(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Llibcore/io/IoBridge;->getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected socketSetOption(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/net/PlainDatagramSocketImpl;->socketSetOption0(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Ljava/net/PlainDatagramSocketImpl;->connected:Z

    if-nez v1, :cond_0

    throw v0
.end method

.method protected socketSetOption0(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    return-void
.end method
