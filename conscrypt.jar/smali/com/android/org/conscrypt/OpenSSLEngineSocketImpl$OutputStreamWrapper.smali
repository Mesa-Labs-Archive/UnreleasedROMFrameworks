.class final Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;
.super Ljava/io/OutputStream;
.source "OpenSSLEngineSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OutputStreamWrapper"
.end annotation


# instance fields
.field private socketChannel:Ljava/nio/channels/SocketChannel;

.field private socketOutputStream:Ljava/io/OutputStream;

.field private final stateLock:Ljava/lang/Object;

.field private target:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;


# direct methods
.method static synthetic -wrap0(Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->write(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->this$0:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->stateLock:Ljava/lang/Object;

    return-void
.end method

.method private init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->socketOutputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->this$0:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->-get2(Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->socketOutputStream:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->this$0:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->-get2(Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->socketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->this$0:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->-get0(Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;)Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->target:Ljava/nio/ByteBuffer;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->this$0:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->-get0(Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;)Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->target:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private write(Ljava/nio/ByteBuffer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->stateLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->init()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    :cond_0
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->this$0:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;

    invoke-static {v4}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->-get0(Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;)Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    move-result-object v4

    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p1, v6}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v4, v6, :cond_1

    new-instance v4, Ljavax/net/ssl/SSLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unexpected engine result "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v6

    if-eq v4, v6, :cond_2

    new-instance v4, Ljavax/net/ssl/SSLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Engine bytesProduced "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " does not match bytes written "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-eq v3, v4, :cond_3

    new-instance v4, Ljavax/net/ssl/SSLException;

    const-string/jumbo v6, "Engine did not read the correct number of bytes"

    invoke-direct {v4, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->socketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v4, :cond_4

    :goto_0
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v6}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->socketOutputStream:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    if-gtz v3, :cond_0

    monitor-exit v5

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->this$0:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->-get2(Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->init()V

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->socketOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->write(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->write(Ljava/nio/ByteBuffer;)V

    return-void
.end method
