.class Ljava/net/Inet6AddressImpl;
.super Ljava/lang/Object;
.source "Inet6AddressImpl.java"

# interfaces
.implements Ljava/net/InetAddressImpl;


# static fields
.field private static final addressCache:Ljava/net/AddressCache;

.field private static anyLocalAddress:Ljava/net/InetAddress;

.field private static loopbackAddresses:[Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/net/AddressCache;

    invoke-direct {v0}, Ljava/net/AddressCache;-><init>()V

    sput-object v0, Ljava/net/Inet6AddressImpl;->addressCache:Ljava/net/AddressCache;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getHostByAddr0([B)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v4, Landroid/system/OsConstants;->NI_NAMEREQD:I

    invoke-interface {v3, v1, v4}, Llibcore/io/Os;->getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/system/GaiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-virtual {v1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/net/UnknownHostException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
.end method

.method private static lookupHostByName(Ljava/lang/String;I)[Ljava/net/InetAddress;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v6

    invoke-interface {v6}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    sget-object v6, Ljava/net/Inet6AddressImpl;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v6, p0, p1}, Ljava/net/AddressCache;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v6, v2, [Ljava/net/InetAddress;

    if-eqz v6, :cond_0

    check-cast v2, [Ljava/net/InetAddress;

    return-object v2

    :cond_0
    new-instance v6, Ljava/net/UnknownHostException;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    :try_start_0
    new-instance v5, Landroid/system/StructAddrinfo;

    invoke-direct {v5}, Landroid/system/StructAddrinfo;-><init>()V

    sget v6, Landroid/system/OsConstants;->AI_ADDRCONFIG:I

    iput v6, v5, Landroid/system/StructAddrinfo;->ai_flags:I

    sget v6, Landroid/system/OsConstants;->AF_UNSPEC:I

    iput v6, v5, Landroid/system/StructAddrinfo;->ai_family:I

    sget v6, Landroid/system/OsConstants;->SOCK_STREAM:I

    iput v6, v5, Landroid/system/StructAddrinfo;->ai_socktype:I

    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v6, p0, v5, p1}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;

    move-result-object v1

    const/4 v6, 0x0

    array-length v7, v1

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v0, v1, v6

    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v8

    iput-object p0, v8, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    sget-object v6, Ljava/net/Inet6AddressImpl;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v6, p0, p1, v1}, Ljava/net/AddressCache;->put(Ljava/lang/String;I[Ljava/net/InetAddress;)V
    :try_end_0
    .catch Landroid/system/GaiException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/system/GaiException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v6, v6, Landroid/system/ErrnoException;

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Landroid/system/GaiException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Landroid/system/ErrnoException;

    iget v6, v6, Landroid/system/ErrnoException;->errno:I

    sget v7, Landroid/system/OsConstants;->EACCES:I

    if-ne v6, v7, :cond_3

    new-instance v6, Ljava/lang/SecurityException;

    const-string/jumbo v7, "Permission denied (missing INTERNET permission?)"

    invoke-direct {v6, v7, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to resolve host \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget v8, v4, Landroid/system/GaiException;->error:I

    invoke-interface {v7, v8}, Llibcore/io/Os;->gai_strerror(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Ljava/net/Inet6AddressImpl;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v6, p0, p1, v3}, Ljava/net/AddressCache;->putUnknownHost(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v4, v3}, Landroid/system/GaiException;->rethrowAsUnknownHostException(Ljava/lang/String;)Ljava/net/UnknownHostException;

    move-result-object v6

    throw v6
.end method

.method private tcpEcho(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget v5, Landroid/system/OsConstants;->AF_INET6:I

    sget v6, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Llibcore/io/IoBridge;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    if-lez p4, :cond_0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x19

    invoke-static {v2, v6, v5}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    :cond_0
    if-eqz p3, :cond_1

    const/4 v5, 0x0

    invoke-static {v2, p3, v5}, Llibcore/io/IoBridge;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    :cond_1
    const/4 v5, 0x7

    invoke-static {v2, p1, v5, p2}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    return v3

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v5, v0, Landroid/system/ErrnoException;

    if-eqz v5, :cond_3

    check-cast v0, Landroid/system/ErrnoException;

    iget v5, v0, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->ECONNREFUSED:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v5, v6, :cond_2

    :goto_0
    invoke-static {v2}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    return v3

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    throw v3
.end method


# virtual methods
.method public anyLocalAddress()Ljava/net/InetAddress;
    .locals 4

    const-class v2, Ljava/net/Inet6AddressImpl;

    monitor-enter v2

    :try_start_0
    sget-object v1, Ljava/net/Inet6AddressImpl;->anyLocalAddress:Ljava/net/InetAddress;

    if-nez v1, :cond_0

    new-instance v0, Ljava/net/Inet6Address;

    invoke-direct {v0}, Ljava/net/Inet6Address;-><init>()V

    invoke-virtual {v0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    const-string/jumbo v3, "::"

    iput-object v3, v1, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    sput-object v0, Ljava/net/Inet6AddressImpl;->anyLocalAddress:Ljava/net/InetAddress;

    :cond_0
    sget-object v1, Ljava/net/Inet6AddressImpl;->anyLocalAddress:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public clearAddressCache()V
    .locals 1

    sget-object v0, Ljava/net/Inet6AddressImpl;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v0}, Ljava/net/AddressCache;->clear()V

    return-void
.end method

.method public getHostByAddr([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    invoke-direct {p0, p1}, Ljava/net/Inet6AddressImpl;->getHostByAddr0([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected icmpEcho(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/net/Inet4Address;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    sget v11, Landroid/system/OsConstants;->AF_INET:I

    :goto_0
    if-eqz v17, :cond_3

    sget v16, Landroid/system/OsConstants;->IPPROTO_ICMP:I

    :goto_1
    sget v3, Landroid/system/OsConstants;->SOCK_DGRAM:I

    move/from16 v0, v16

    invoke-static {v11, v3, v0}, Llibcore/io/IoBridge;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    if-lez p4, :cond_0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x19

    invoke-static {v1, v4, v3}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    :cond_0
    if-eqz p3, :cond_1

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {v1, v0, v3}, Llibcore/io/IoBridge;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    :cond_1
    move/from16 v21, p2

    const/16 v18, 0x0

    :goto_2
    if-lez v21, :cond_7

    const/16 v3, 0x3e8

    move/from16 v0, v21

    if-lt v0, v3, :cond_4

    const/16 v20, 0x3e8

    :goto_3
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1006

    invoke-static {v1, v4, v3}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    invoke-static/range {v17 .. v18}, Landroid/system/StructIcmpHdr;->IcmpEchoHdr(ZI)Landroid/system/StructIcmpHdr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/system/StructIcmpHdr;->getBytes()[B

    move-result-object v2

    array-length v4, v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v7}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    invoke-static {v1}, Llibcore/io/IoBridge;->getLocalInetSocketAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v15

    array-length v3, v2

    new-array v5, v3, [B

    new-instance v9, Ljava/net/DatagramPacket;

    array-length v3, v2

    invoke-direct {v9, v5, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    array-length v7, v5

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v4, v1

    invoke-static/range {v3 .. v10}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I

    move-result v19

    array-length v3, v2

    move/from16 v0, v19

    if-ne v0, v3, :cond_6

    if-eqz v17, :cond_5

    sget v3, Landroid/system/OsConstants;->ICMP_ECHOREPLY:I

    int-to-byte v14, v3

    :goto_4
    invoke-virtual {v9}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    aget-byte v3, v5, v3

    if-ne v3, v14, :cond_6

    const/4 v3, 0x4

    aget-byte v3, v5, v3

    shr-int/lit8 v4, v15, 0x8

    int-to-byte v4, v4

    if-ne v3, v4, :cond_6

    const/4 v3, 0x5

    aget-byte v3, v5, v3

    int-to-byte v4, v15

    if-ne v3, v4, :cond_6

    const/4 v3, 0x6

    aget-byte v3, v5, v3

    shr-int/lit8 v4, v18, 0x8

    int-to-byte v4, v4

    if-ne v3, v4, :cond_6

    const/4 v3, 0x7

    aget-byte v3, v5, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, v18

    int-to-byte v4, v0

    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    :try_start_1
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, v1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_5
    return v3

    :cond_2
    :try_start_2
    sget v11, Landroid/system/OsConstants;->AF_INET6:I

    goto/16 :goto_0

    :cond_3
    sget v16, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    goto/16 :goto_1

    :cond_4
    move/from16 v20, v21

    goto :goto_3

    :cond_5
    sget v3, Landroid/system/OsConstants;->ICMP6_ECHO_REPLY:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-byte v14, v3

    goto :goto_4

    :cond_6
    sub-int v21, v21, v20

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    :cond_7
    :try_start_3
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v3, v1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_6
    const/4 v3, 0x0

    return v3

    :catch_0
    move-exception v13

    :try_start_4
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v3, v1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_1
    move-exception v12

    goto :goto_6

    :catchall_0
    move-exception v3

    :try_start_5
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, v1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_7
    throw v3

    :catch_2
    move-exception v12

    goto :goto_7

    :catch_3
    move-exception v12

    goto :goto_6

    :catch_4
    move-exception v12

    goto :goto_5
.end method

.method public isReachable(Ljava/net/InetAddress;ILjava/net/NetworkInterface;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v0

    :cond_1
    if-nez v2, :cond_2

    const/4 v3, 0x0

    return v3

    :cond_2
    invoke-virtual {p0, p1, p2, v2, p4}, Ljava/net/Inet6AddressImpl;->icmpEcho(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    return v3

    :cond_3
    invoke-direct {p0, p1, p2, v2, p4}, Ljava/net/Inet6AddressImpl;->tcpEcho(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Z

    move-result v3

    return v3
.end method

.method public lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/net/Inet6AddressImpl;->loopbackAddresses()[Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-static {p1}, Ljava/net/InetAddress;->parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p1, v0}, Ljava/net/InetAddress;->disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Deprecated IPv4 address format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/net/InetAddress;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1

    :cond_3
    invoke-static {p1, p2}, Ljava/net/Inet6AddressImpl;->lookupHostByName(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public loopbackAddresses()[Ljava/net/InetAddress;
    .locals 4

    const-class v1, Ljava/net/Inet6AddressImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/net/Inet6AddressImpl;->loopbackAddresses:[Ljava/net/InetAddress;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/net/InetAddress;

    sget-object v2, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v2, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sput-object v0, Ljava/net/Inet6AddressImpl;->loopbackAddresses:[Ljava/net/InetAddress;

    :cond_0
    sget-object v0, Ljava/net/Inet6AddressImpl;->loopbackAddresses:[Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
