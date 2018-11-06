.class Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;
.super Ljava/io/InputStream;
.source "OpenSSLSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSLInputStream"
.end annotation


# instance fields
.field private final readLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->readLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public awaitPendingOps()V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    new-array v0, v4, [B

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->read([BII)I

    move-result v1

    if-eq v1, v2, :cond_0

    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    :cond_0
    return v2
.end method

.method public read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/org/conscrypt/Platform;->blockGuardOnNetwork()V

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-wrap0(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V

    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/android/org/conscrypt/ArrayUtils;->checkOffsetAndCount(III)V

    if-nez p3, :cond_0

    return v1

    :cond_0
    iget-object v8, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-get3(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-get2(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v2, "socket is closed"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v8

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-get1(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-get0(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)Ljava/net/Socket;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getSoTimeout()I

    move-result v7

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_read(JLjava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    monitor-exit v8

    return v0
.end method
