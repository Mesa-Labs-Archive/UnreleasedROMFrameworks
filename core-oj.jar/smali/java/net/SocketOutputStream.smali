.class Ljava/net/SocketOutputStream;
.super Ljava/io/FileOutputStream;
.source "SocketOutputStream.java"


# instance fields
.field private closing:Z

.field private impl:Ljava/net/AbstractPlainSocketImpl;

.field private socket:Ljava/net/Socket;

.field private temp:[B


# direct methods
.method constructor <init>(Ljava/net/AbstractPlainSocketImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/net/AbstractPlainSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/net/SocketOutputStream;->temp:[B

    iput-object v1, p0, Ljava/net/SocketOutputStream;->socket:Ljava/net/Socket;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/SocketOutputStream;->closing:Z

    iput-object p1, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {p1}, Ljava/net/AbstractPlainSocketImpl;->getSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Ljava/net/SocketOutputStream;->socket:Ljava/net/Socket;

    return-void
.end method

.method private socketWrite([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p3, :cond_0

    if-gez p2, :cond_1

    :cond_0
    if-nez p3, :cond_2

    return-void

    :cond_1
    array-length v2, p1

    sub-int/2addr v2, p2

    if-gt p3, v2, :cond_0

    iget-object v2, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v2}, Ljava/net/AbstractPlainSocketImpl;->acquireFD()Ljava/io/FileDescriptor;

    move-result-object v0

    :try_start_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v2

    invoke-interface {v2}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    invoke-direct {p0, v0, p1, p2, p3}, Ljava/net/SocketOutputStream;->socketWrite0(Ljava/io/FileDescriptor;[BII)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v2}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    return-void

    :cond_2
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "len == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " off == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " buffer length == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v1

    :try_start_1
    instance-of v2, v1, Lsun/net/ConnectionResetException;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v2}, Ljava/net/AbstractPlainSocketImpl;->setConnectionResetPending()V

    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Connection reset"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v2}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v3}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    throw v2

    :cond_4
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private native socketWrite0(Ljava/io/FileDescriptor;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/net/SocketOutputStream;->closing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/SocketOutputStream;->closing:Z

    iget-object v0, p0, Ljava/net/SocketOutputStream;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/net/SocketOutputStream;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/net/SocketOutputStream;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/SocketOutputStream;->closing:Z

    return-void

    :cond_2
    iget-object v0, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->close()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    return-void
.end method

.method public final getChannel()Ljava/nio/channels/FileChannel;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Ljava/net/SocketOutputStream;->temp:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Ljava/net/SocketOutputStream;->temp:[B

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Ljava/net/SocketOutputStream;->socketWrite([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ljava/net/SocketOutputStream;->socketWrite([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava/net/SocketOutputStream;->socketWrite([BII)V

    return-void
.end method
