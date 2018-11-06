.class public abstract Ljava/net/DatagramSocketImpl;
.super Ljava/lang/Object;
.source "DatagramSocketImpl.java"

# interfaces
.implements Ljava/net/SocketOptions;


# instance fields
.field protected fd:Ljava/io/FileDescriptor;

.field protected localPort:I

.field socket:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract bind(ILjava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method protected abstract close()V
.end method

.method protected connect(Ljava/net/InetAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    return-void
.end method

.method protected abstract create()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method dataAvailable()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected disconnect()V
    .locals 0

    return-void
.end method

.method getDatagramSocket()Ljava/net/DatagramSocket;
    .locals 1

    iget-object v0, p0, Ljava/net/DatagramSocketImpl;->socket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method protected getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected getLocalPort()I
    .locals 1

    iget v0, p0, Ljava/net/DatagramSocketImpl;->localPort:I

    return v0
.end method

.method getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
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

    sget-object v1, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_0

    const/16 v1, 0x1001

    invoke-virtual {p0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_1

    const/16 v1, 0x1002

    invoke-virtual {p0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_2

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_2
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_3
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v1

    instance-of v1, v1, Ljava/net/MulticastSocket;

    if-eqz v1, :cond_4

    const/16 v1, 0x1f

    invoke-virtual {p0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_4
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_5

    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v1

    instance-of v1, v1, Ljava/net/MulticastSocket;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getTimeToLive()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_5
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_6

    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v1

    instance-of v1, v1, Ljava/net/MulticastSocket;

    if-eqz v1, :cond_6

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_6
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "unsupported option"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected abstract getTTL()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract getTimeToLive()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract join(Ljava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract leave(Ljava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract peek(Ljava/net/InetAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract peekData(Ljava/net/DatagramPacket;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract receive(Ljava/net/DatagramPacket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract send(Ljava/net/DatagramPacket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method setDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 0

    iput-object p1, p0, Ljava/net/DatagramSocketImpl;->socket:Ljava/net/DatagramSocket;

    return-void
.end method

.method setOption(Ljava/net/SocketOption;Ljava/lang/Object;)V
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

    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_0

    const/16 v0, 0x1001

    invoke-virtual {p0, v0, p2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_1

    const/16 v0, 0x1002

    invoke-virtual {p0, v0, p2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_3

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    instance-of v0, v0, Ljava/net/MulticastSocket;

    if-eqz v0, :cond_4

    const/16 v0, 0x1f

    invoke-virtual {p0, v0, p2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    instance-of v0, v0, Ljava/net/MulticastSocket;

    if-eqz v0, :cond_6

    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "not an integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocketImpl;->setTimeToLive(I)V

    goto :goto_0

    :cond_6
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    instance-of v0, v0, Ljava/net/MulticastSocket;

    if-eqz v0, :cond_7

    const/16 v0, 0x12

    invoke-virtual {p0, v0, p2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "unsupported option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract setTTL(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract setTimeToLive(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
