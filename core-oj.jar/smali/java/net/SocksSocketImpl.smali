.class Ljava/net/SocksSocketImpl;
.super Ljava/net/PlainSocketImpl;
.source "SocksSocketImpl.java"

# interfaces
.implements Ljava/net/SocksConsts;


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private applicationSetProxy:Z

.field private cmdIn:Ljava/io/InputStream;

.field private cmdOut:Ljava/io/OutputStream;

.field private cmdsock:Ljava/net/Socket;

.field private external_address:Ljava/net/InetSocketAddress;

.field private server:Ljava/lang/String;

.field private serverPort:I

.field private useV4:Z


# direct methods
.method static synthetic -get0(Ljava/net/SocksSocketImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Ljava/net/SocksSocketImpl;)I
    .locals 1

    iget v0, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    return v0
.end method

.method static synthetic -set0(Ljava/net/SocksSocketImpl;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    iput-object p1, p0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic -set1(Ljava/net/SocksSocketImpl;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    iput-object p1, p0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic -wrap0(Ljava/net/SocksSocketImpl;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/net/SocksSocketImpl;->superConnectServer(Ljava/lang/String;II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/net/SocksSocketImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/net/PlainSocketImpl;-><init>()V

    iput-object v1, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    const/16 v0, 0x438

    iput v0, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/SocksSocketImpl;->useV4:Z

    iput-object v1, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    iput-object v1, p0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    iput-object v1, p0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 3

    const/16 v0, 0x438

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/net/PlainSocketImpl;-><init>()V

    iput-object v2, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    iput v0, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/net/SocksSocketImpl;->useV4:Z

    iput-object v2, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    iput-object v2, p0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    iput-object v2, p0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    iput-object p1, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    move p2, v0

    :cond_0
    iput p2, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    return-void
.end method

.method constructor <init>(Ljava/net/Proxy;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/net/PlainSocketImpl;-><init>()V

    iput-object v3, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    const/16 v2, 0x438

    iput v2, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/net/SocksSocketImpl;->useV4:Z

    iput-object v3, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    iput-object v3, p0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    iput-object v3, p0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v2, v0, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    iput v2, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    :cond_0
    return-void
.end method

.method private authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/net/SocksSocketImpl;->authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;J)Z

    move-result v0

    return v0
.end method

.method private authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;J)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v7, 0x1

    return v7

    :cond_0
    const/4 v7, 0x2

    if-ne p1, v7, :cond_8

    const/4 v3, 0x0

    iget-object v7, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    new-instance v7, Ljava/net/SocksSocketImpl$2;

    invoke-direct {v7, p0, v0}, Ljava/net/SocksSocketImpl$2;-><init>(Ljava/net/SocksSocketImpl;Ljava/net/InetAddress;)V

    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/PasswordAuthentication;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>([C)V

    :goto_0
    if-nez v6, :cond_2

    const/4 v7, 0x0

    return v7

    :cond_1
    new-instance v7, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v8, "user.name"

    invoke-direct {v7, v8}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    :try_start_0
    const-string/jumbo v7, "ISO-8859-1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    :try_start_1
    const-string/jumbo v7, "ISO-8859-1"

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_1
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->flush()V

    const/4 v7, 0x2

    new-array v1, v7, [B

    invoke-direct {p0, p2, v1, p4, p5}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_5

    const/4 v7, 0x1

    aget-byte v7, v1, v7

    if-eqz v7, :cond_7

    :cond_5
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    const/4 v7, 0x0

    return v7

    :catch_0
    move-exception v5

    sget-boolean v7, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :catch_1
    move-exception v5

    sget-boolean v7, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    if-nez v7, :cond_4

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_6
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    goto :goto_1

    :cond_7
    const/4 v7, 0x1

    return v7

    :cond_8
    const/4 v7, 0x0

    return v7
.end method

.method private connectV4(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetSocketAddress;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    if-nez v5, :cond_0

    new-instance v5, Ljava/net/SocketException;

    const-string/jumbo v6, "SOCKS V4 requires IPv4 only addresses"

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    shr-int/lit8 v5, v5, 0x0

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-direct {p0}, Ljava/net/SocksSocketImpl;->getUserName()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    const-string/jumbo v5, "ISO-8859-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    new-array v0, v9, [B

    invoke-direct {p0, p1, v0, p4, p5}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v2

    if-eq v2, v9, :cond_2

    new-instance v5, Ljava/net/SocketException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Reply from SOCKS server has bad length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_0
    move-exception v3

    sget-boolean v5, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_2
    aget-byte v5, v0, v6

    if-eqz v5, :cond_3

    aget-byte v5, v0, v6

    if-eq v5, v8, :cond_3

    new-instance v5, Ljava/net/SocketException;

    const-string/jumbo v6, "Reply from SOCKS server has bad version"

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    const/4 v1, 0x0

    aget-byte v5, v0, v7

    packed-switch v5, :pswitch_data_0

    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v5, "Reply from SOCKS server contains bad status"

    invoke-direct {v1, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    throw v1

    :pswitch_0
    iput-object p3, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    goto :goto_0

    :pswitch_1
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v5, "SOCKS request rejected"

    invoke-direct {v1, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v5, "SOCKS server couldn\'t reach destination"

    invoke-direct {v1, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v5, "SOCKS authentication failed"

    invoke-direct {v1, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getUserName()Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, ""

    iget-boolean v2, p0, Ljava/net/SocksSocketImpl;->applicationSetProxy:Z

    if-eqz v2, :cond_0

    :try_start_0
    const-string/jumbo v2, "user.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v3, "user.name"

    invoke-direct {v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized privilegedConnect(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/net/SocksSocketImpl$1;

    invoke-direct {v1, p0, p1, p2, p3}, Ljava/net/SocksSocketImpl$1;-><init>(Ljava/net/SocksSocketImpl;Ljava/lang/String;II)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private readSocksReply(Ljava/io/InputStream;[B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v0

    return v0
.end method

.method private readSocksReply(Ljava/io/InputStream;[BJ)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v4, p2

    const/4 v5, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    const/4 v6, 0x3

    if-ge v1, v6, :cond_1

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/net/SocketInputStream;

    move-object v6, v0

    sub-int v7, v4, v5

    invoke-static {p3, p4}, Ljava/net/SocksSocketImpl;->remainingMillis(J)I

    move-result v8

    invoke-virtual {v6, p2, v5, v7, v8}, Ljava/net/SocketInputStream;->read([BIII)I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-gez v2, :cond_0

    new-instance v6, Ljava/net/SocketException;

    const-string/jumbo v7, "Malformed reply from SOCKS server"

    invoke-direct {v6, v7}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_0
    move-exception v3

    new-instance v6, Ljava/net/SocketTimeoutException;

    const-string/jumbo v7, "Connect timed out"

    invoke-direct {v6, v7}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    add-int/2addr v5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v5
.end method

.method private static remainingMillis(J)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    cmp-long v2, p0, v4

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, p0, v2

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    long-to-int v2, v0

    return v2

    :cond_1
    new-instance v2, Ljava/net/SocketTimeoutException;

    invoke-direct {v2}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v2
.end method

.method private superConnectServer(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-super {p0, v0, p3}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method


# virtual methods
.method protected close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_0
    iput-object v1, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    invoke-super {p0}, Ljava/net/PlainSocketImpl;->close()V

    return-void
.end method

.method protected connect(Ljava/net/SocketAddress;I)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_1

    const-wide/16 v6, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v23

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    instance-of v2, v0, Ljava/net/InetSocketAddress;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Unsupported address type"

    invoke-direct {v2, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move/from16 v0, p2

    int-to-long v10, v0

    add-long v18, v8, v10

    const-wide/16 v8, 0x0

    cmp-long v2, v18, v8

    if-gez v2, :cond_2

    const-wide v6, 0x7fffffffffffffffL

    goto :goto_0

    :cond_2
    move-wide/from16 v6, v18

    goto :goto_0

    :cond_3
    move-object/from16 v5, p1

    check-cast v5, Ljava/net/InetSocketAddress;

    if-eqz v23, :cond_4

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v8}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    if-nez v2, :cond_6

    invoke-static {v6, v7}, Ljava/net/SocksSocketImpl;->remainingMillis(J)I

    move-result v2

    move-object/from16 v0, p0

    invoke-super {v0, v5, v2}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    return-void

    :cond_5
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v8}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_1

    :cond_6
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Ljava/net/SocksSocketImpl;->serverPort:I

    invoke-static {v6, v7}, Ljava/net/SocksSocketImpl;->remainingMillis(J)I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8, v9}, Ljava/net/SocksSocketImpl;->privilegedConnect(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v4, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    const/16 v8, 0x200

    invoke-direct {v4, v2, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljava/net/SocksSocketImpl;->useV4:Z

    if-eqz v2, :cond_8

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v16

    new-instance v2, Ljava/net/SocketException;

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Ljava/net/SocksSocketImpl;->connectV4(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetSocketAddress;J)V

    return-void

    :cond_8
    const/4 v2, 0x5

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    const/4 v2, 0x2

    new-array v15, v2, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    const/4 v2, 0x2

    move/from16 v0, v21

    if-ne v0, v2, :cond_9

    const/4 v2, 0x0

    aget-byte v2, v15, v2

    const/4 v8, 0x5

    if-eq v2, v8, :cond_b

    :cond_9
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Ljava/net/SocksSocketImpl;->connectV4(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetSocketAddress;J)V

    return-void

    :cond_b
    const/4 v2, 0x1

    aget-byte v2, v15, v2

    const/4 v8, -0x1

    if-ne v2, v8, :cond_c

    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "SOCKS : No acceptable methods"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    const/4 v2, 0x1

    aget-byte v9, v15, v2

    move-object/from16 v8, p0

    move-object v10, v3

    move-object v11, v4

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Ljava/net/SocksSocketImpl;->authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;J)Z

    move-result v2

    if-nez v2, :cond_d

    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "SOCKS : authentication failed"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    const/4 v2, 0x5

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x3

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    :try_start_1
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "ISO-8859-1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_e
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    shr-int/lit8 v2, v2, 0x0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    const/4 v2, 0x4

    new-array v15, v2, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    const/4 v2, 0x4

    move/from16 v0, v21

    if-eq v0, v2, :cond_11

    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server has bad length"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v24

    sget-boolean v2, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_e

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_f
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_10

    const/4 v2, 0x4

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    shr-int/lit8 v2, v2, 0x0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    goto :goto_2

    :cond_10
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    shr-int/lit8 v2, v2, 0x0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    goto :goto_2

    :cond_11
    const/16 v17, 0x0

    const/4 v2, 0x1

    aget-byte v2, v15, v2

    packed-switch v2, :pswitch_data_0

    :cond_12
    :goto_3
    if-eqz v17, :cond_16

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    throw v17

    :pswitch_0
    const/4 v2, 0x3

    aget-byte v2, v15, v2

    packed-switch v2, :pswitch_data_1

    :pswitch_1
    new-instance v17, Ljava/net/SocketException;

    const-string/jumbo v2, "Reply from SOCKS server contains wrong code"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_2
    const/4 v2, 0x4

    new-array v14, v2, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    const/4 v2, 0x4

    move/from16 v0, v21

    if-eq v0, v2, :cond_13

    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    const/4 v2, 0x2

    new-array v15, v2, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    const/4 v2, 0x2

    move/from16 v0, v21

    if-eq v0, v2, :cond_12

    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_3
    const/4 v2, 0x1

    aget-byte v22, v15, v2

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v3, v1, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_14

    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_14
    const/4 v2, 0x2

    new-array v15, v2, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    const/4 v2, 0x2

    move/from16 v0, v21

    if-eq v0, v2, :cond_12

    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_4
    const/4 v2, 0x1

    aget-byte v22, v15, v2

    move/from16 v0, v22

    new-array v14, v0, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_15

    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    const/4 v2, 0x2

    new-array v15, v2, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    const/4 v2, 0x2

    move/from16 v0, v21

    if-eq v0, v2, :cond_12

    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_5
    new-instance v17, Ljava/net/SocketException;

    const-string/jumbo v2, "SOCKS server general failure"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_6
    new-instance v17, Ljava/net/SocketException;

    const-string/jumbo v2, "SOCKS: Connection not allowed by ruleset"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_7
    new-instance v17, Ljava/net/SocketException;

    const-string/jumbo v2, "SOCKS: Network unreachable"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_8
    new-instance v17, Ljava/net/SocketException;

    const-string/jumbo v2, "SOCKS: Host unreachable"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_9
    new-instance v17, Ljava/net/SocketException;

    const-string/jumbo v2, "SOCKS: Connection refused"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_a
    new-instance v17, Ljava/net/SocketException;

    const-string/jumbo v2, "SOCKS: TTL expired"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_b
    new-instance v17, Ljava/net/SocketException;

    const-string/jumbo v2, "SOCKS: Command not supported"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_c
    new-instance v17, Ljava/net/SocketException;

    const-string/jumbo v2, "SOCKS: address type not supported"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_16
    move-object/from16 v0, p0

    iput-object v5, v0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected getInetAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalPort()I
    .locals 1

    iget-object v0, p0, Ljava/net/SocksSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getLocalPort()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0

    :cond_1
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getLocalPort()I

    move-result v0

    return v0
.end method

.method protected getPort()I
    .locals 1

    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getPort()I

    move-result v0

    return v0
.end method

.method setV4()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/SocksSocketImpl;->useV4:Z

    return-void
.end method
