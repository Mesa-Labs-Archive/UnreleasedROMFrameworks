.class final Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;
.super Ljava/io/InputStream;
.source "OpenSSLEngineSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputStreamWrapper"
.end annotation


# static fields
.field private static final synthetic -javax-net-ssl-SSLEngineResult$StatusSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$javax$net$ssl$SSLEngineResult$Status:[I

.field private final fromEngine:Ljava/nio/ByteBuffer;

.field private fromSocket:Ljava/nio/ByteBuffer;

.field private final singleByte:[B

.field private socketChannel:Ljava/nio/channels/SocketChannel;

.field private socketInputStream:Ljava/io/InputStream;

.field private final stateLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;


# direct methods
.method private static synthetic -getjavax-net-ssl-SSLEngineResult$StatusSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->-javax-net-ssl-SSLEngineResult$StatusSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->-javax-net-ssl-SSLEngineResult$StatusSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Ljavax/net/ssl/SSLEngineResult$Status;->values()[Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->-javax-net-ssl-SSLEngineResult$StatusSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->this$0:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->stateLock:Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->singleByte:[B

    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->-get0(Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;)Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->fromEngine:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method private init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->socketInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->this$0:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->-get2(Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->socketInputStream:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->this$0:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->-get2(Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->socketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->this$0:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->-get0(Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;)Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->fromSocket:Ljava/nio/ByteBuffer;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->this$0:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->-get0(Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;)Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->fromSocket:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private readFromSocket()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->socketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->fromSocket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->socketInputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->fromSocket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->fromSocket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->fromSocket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->fromSocket:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->fromSocket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_1
    return v0
.end method


# virtual methods
.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, -0x1

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->singleByte:[B

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v5, :cond_0

    monitor-exit v2

    return v5

    :cond_0
    if-eq v0, v6, :cond_1

    :try_start_1
    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "read incorrect number of bytes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->singleByte:[B

    const/4 v3, 0x0

    aget-byte v1, v1, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return v1
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, -0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->stateLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->init()V

    :cond_0
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-static {v5, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p1, p2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return v4

    :cond_1
    const/4 v3, 0x1

    :try_start_1
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->fromSocket:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->fromSocket:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->this$0:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;

    invoke-static {v5}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->-get0(Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;)Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    move-result-object v5

    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->fromSocket:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v7, v8}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->fromSocket:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->-getjavax-net-ssl-SSLEngineResult$StatusSwitchesValues()[I

    move-result-object v5

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    new-instance v5, Ljavax/net/ssl/SSLException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unexpected engine result "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :pswitch_0
    :try_start_3
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v5

    if-nez v5, :cond_2

    :goto_0
    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    if-nez v5, :cond_3

    monitor-exit v6

    return v9

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x0

    goto :goto_0

    :pswitch_2
    monitor-exit v6

    return v10

    :cond_3
    if-eqz v3, :cond_0

    :try_start_4
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->readFromSocket()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v5

    if-ne v5, v10, :cond_0

    monitor-exit v6

    return v10

    :catch_1
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
