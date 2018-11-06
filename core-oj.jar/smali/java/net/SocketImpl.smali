.class public abstract Ljava/net/SocketImpl;
.super Ljava/lang/Object;
.source "SocketImpl.java"

# interfaces
.implements Ljava/net/SocketOptions;


# instance fields
.field protected address:Ljava/net/InetAddress;

.field protected fd:Ljava/io/FileDescriptor;

.field protected localport:I

.field protected port:I

.field serverSocket:Ljava/net/ServerSocket;

.field socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/SocketImpl;->socket:Ljava/net/Socket;

    iput-object v0, p0, Ljava/net/SocketImpl;->serverSocket:Ljava/net/ServerSocket;

    return-void
.end method


# virtual methods
.method protected abstract accept(Ljava/net/SocketImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract available()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract bind(Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract connect(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract connect(Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract connect(Ljava/net/SocketAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract create(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getFD$()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected getInetAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method protected abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getLocalPort()I
    .locals 1

    iget v0, p0, Ljava/net/SocketImpl;->localport:I

    return v0
.end method

.method getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .locals 2
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

    sget-object v0, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_1

    const/16 v0, 0x1001

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_2

    const/16 v0, 0x1002

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_3
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_4

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_5

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_5
    sget-object v0, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "unsupported option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getPort()I
    .locals 1

    iget v0, p0, Ljava/net/SocketImpl;->port:I

    return v0
.end method

.method getServerSocket()Ljava/net/ServerSocket;
    .locals 1

    iget-object v0, p0, Ljava/net/SocketImpl;->serverSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method getSocket()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Ljava/net/SocketImpl;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method protected abstract listen(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    iput v1, p0, Ljava/net/SocketImpl;->port:I

    iput v1, p0, Ljava/net/SocketImpl;->localport:I

    return-void
.end method

.method protected abstract sendUrgentData(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
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

    sget-object v0, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_1

    const/16 v0, 0x1001

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_2

    const/16 v0, 0x1002

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_4

    const/16 v0, 0x80

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_5

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    sget-object v0, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "unsupported option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setPerformancePreferences(III)V
    .locals 0

    return-void
.end method

.method setServerSocket(Ljava/net/ServerSocket;)V
    .locals 0

    iput-object p1, p0, Ljava/net/SocketImpl;->serverSocket:Ljava/net/ServerSocket;

    return-void
.end method

.method setSocket(Ljava/net/Socket;)V
    .locals 0

    iput-object p1, p0, Ljava/net/SocketImpl;->socket:Ljava/net/Socket;

    return-void
.end method

.method protected shutdownInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Method not implemented!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Method not implemented!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected supportsUrgentData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Socket[addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/SocketImpl;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",localport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
