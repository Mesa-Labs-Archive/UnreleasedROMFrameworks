.class public Lcom/android/server/wifi/IcmpEchoPeer;
.super Ljava/lang/Object;
.source "IcmpEchoPeer.java"


# static fields
.field private static final DBG:Z

.field private static final ICMP_HEADER_LENGTH:I = 0x8

.field private static final ICMP_MAX_PAYLOAD_SIZE:I = 0xf618

.field public static final ICMP_PING_SINGLE_PACKET:I = 0x0

.field private static final IPV4_HEADER_LENGTH:I = 0x14

.field private static final MAC_ADDR_LENGTH:I = 0x6

.field private static final MAX_LENGTH:I = 0x5c8

.field public static final RESULT_EXCEPTION:I = -0x4

.field public static final RESULT_IPv6_NOT_SUPPORTED:I = -0x2

.field public static final RESULT_MAC_NOT_FOUND:I = -0x3

.field public static final RESULT_TIMEOUT:I = -0x1

.field private static SMARTCM_DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "IcmpEchoPeer"

.field private static final mPayloadData:Ljava/lang/String; = "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ__"

.field private static final mPayloadDataSize:I


# instance fields
.field private mFragmentMtuSize:I

.field private mGateway:Ljava/net/InetAddress;

.field private mInterfaceName:Ljava/lang/String;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMyAddr:Ljava/net/InetAddress;

.field private mPipelinePingSenderThread:Ljava/lang/Thread;

.field private mPrefixLength:I

.field private final mSocket:Llibcore/net/RawSocket;

.field private mTargetAddr:Ljava/net/InetAddress;

.field private mTargetMac:[B

.field private mTargetMacStr:Ljava/lang/String;

.field private result:Landroid/os/Bundle;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/IcmpEchoPeer;->DBG:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/IcmpEchoPeer;->SMARTCM_DBG:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/IcmpEchoPeer;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mFragmentMtuSize:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/IcmpEchoPeer;)Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mMyAddr:Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic -get4()I
    .locals 1

    sget v0, Lcom/android/server/wifi/IcmpEchoPeer;->mPayloadDataSize:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/IcmpEchoPeer;)Llibcore/net/RawSocket;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mSocket:Llibcore/net/RawSocket;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/IcmpEchoPeer;)Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/wifi/IcmpEchoPeer;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetMac:[B

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/IcmpEchoPeer;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/IcmpEchoPeer;->getKernelTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/IcmpEchoPeer;->DBG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/IcmpEchoPeer;->SMARTCM_DBG:Z

    const-string/jumbo v0, "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ__"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/server/wifi/IcmpEchoPeer;->mPayloadDataSize:I

    return-void
.end method

.method public constructor <init>(Landroid/net/LinkProperties;Ljava/net/InetAddress;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/16 v10, 0x5c8

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v7, "0.0.0.0"

    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mMyAddr:Ljava/net/InetAddress;

    const-string/jumbo v7, "0.0.0.0"

    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    const-string/jumbo v7, "0.0.0.0"

    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mGateway:Ljava/net/InetAddress;

    const/4 v7, 0x6

    new-array v7, v7, [B

    iput-object v7, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetMac:[B

    iput-object v8, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mLinkProperties:Landroid/net/LinkProperties;

    iput v9, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mPrefixLength:I

    iput v10, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mFragmentMtuSize:I

    iput-object v8, p0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    iput-object p1, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mInterfaceName:Ljava/lang/String;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iput-object v7, p0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    iget-object v7, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mInterfaceName:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mInterfaceName:Ljava/lang/String;

    invoke-static {v7}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getMTU()I

    move-result v7

    add-int/lit8 v3, v7, -0x14

    rem-int/lit8 v4, v3, 0x8

    if-lez v3, :cond_0

    if-gt v3, v10, :cond_0

    sub-int v7, v3, v4

    iput v7, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mFragmentMtuSize:I

    :cond_0
    instance-of v7, p2, Ljava/net/Inet6Address;

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "IPv6 unsupported"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mMyAddr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v7

    iput v7, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mPrefixLength:I

    iget-object v7, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mMyAddr:Ljava/net/InetAddress;

    instance-of v7, v7, Ljava/net/Inet4Address;

    if-eqz v7, :cond_2

    :cond_3
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/RouteInfo;

    invoke-virtual {v5}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v5}, Landroid/net/RouteInfo;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "0.0.0.0/0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_5
    sget-boolean v7, Lcom/android/server/wifi/IcmpEchoPeer;->SMARTCM_DBG:Z

    if-eqz v7, :cond_6

    const-string/jumbo v7, "IcmpEchoPeer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "interfaceName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-boolean v7, Lcom/android/server/wifi/IcmpEchoPeer;->SMARTCM_DBG:Z

    if-eqz v7, :cond_8

    const-string/jumbo v7, "IcmpEchoPeer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mMyAddr / mGateway / mTargetAddr: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mMyAddr:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mPrefixLength:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mPrefixLength:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", MTU:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mFragmentMtuSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_0
    new-instance v7, Llibcore/net/RawSocket;

    iget-object v8, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mInterfaceName:Ljava/lang/String;

    const/16 v9, 0x800

    invoke-direct {v7, v8, v9}, Llibcore/net/RawSocket;-><init>(Ljava/lang/String;S)V

    iput-object v7, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mSocket:Llibcore/net/RawSocket;

    return-void

    :cond_8
    sget-boolean v7, Lcom/android/server/wifi/IcmpEchoPeer;->DBG:Z

    if-eqz v7, :cond_7

    const-string/jumbo v7, "IcmpEchoPeer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MA/GA/TA: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mMyAddr:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", PL:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mPrefixLength:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", MTU:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mFragmentMtuSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getKernelTime()Ljava/lang/String;
    .locals 8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long v0, v4, v6

    long-to-double v4, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v2, v4, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method checksum([BII)J
    .locals 12

    const-wide/32 v10, 0xffff

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    move v1, v0

    :goto_0
    if-lez p3, :cond_1

    add-int/lit8 v0, v1, 0x1

    add-int v6, p2, v1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    int-to-long v6, v6

    add-long/2addr v4, v6

    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_0

    :goto_1
    and-long v6, v4, v10

    const/16 v8, 0x10

    shr-long v8, v4, v8

    add-long/2addr v6, v8

    not-long v6, v6

    and-long v2, v6, v10

    return-wide v2

    :cond_0
    add-int/lit8 v1, v0, 0x1

    add-int v6, p2, v0

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v4, v6

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public close()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mPipelinePingSenderThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mPipelinePingSenderThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x14

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mPipelinePingSenderThread:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/wifi/IcmpEchoPeer;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v2}, Llibcore/net/RawSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-void

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public doPing(II)Landroid/os/Bundle;
    .locals 40

    const-string/jumbo v9, "IcmpEchoPeer:doPing"

    if-nez p2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mFragmentMtuSize:I

    add-int/lit8 p2, v2, -0x8

    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Single Packet Ping - size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v2, Lcom/android/server/wifi/IcmpEchoPeer;->mPayloadDataSize:I

    move/from16 v0, p2

    if-ge v0, v2, :cond_1

    sget p2, Lcom/android/server/wifi/IcmpEchoPeer;->mPayloadDataSize:I

    :cond_1
    const v2, 0xf618

    move/from16 v0, p2

    if-le v0, v2, :cond_2

    const p2, 0xf618

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    const-string/jumbo v4, "timeoutMillis"

    move/from16 v0, p1

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    const-string/jumbo v4, "payloadSize"

    move/from16 v0, p2

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    const-string/jumbo v4, "type"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mGateway:Ljava/net/InetAddress;

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mMyAddr:Ljava/net/InetAddress;

    instance-of v2, v2, Ljava/net/Inet4Address;

    :goto_0
    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    const-string/jumbo v4, "rtt"

    const/4 v5, -0x2

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "res : -2, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    instance-of v4, v4, Ljava/net/Inet4Address;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mGateway:Ljava/net/InetAddress;

    instance-of v4, v4, Ljava/net/Inet4Address;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mMyAddr:Ljava/net/InetAddress;

    instance-of v4, v4, Ljava/net/Inet4Address;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mGateway:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mPrefixLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/wifi/IcmpEchoPeer;->isInLocalNetwork(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->SMARTCM_DBG:Z

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ping to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "(Local Addr) , Payload Size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/IcmpEchoPeer;->getMacAddrFromArpTable(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetMacStr:Ljava/lang/String;

    :goto_2
    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->SMARTCM_DBG:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mTargetMacStr: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetMacStr:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetMacStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    const-string/jumbo v4, "rtt"

    const/4 v5, -0x3

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "res : -3, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    return-object v2

    :cond_7
    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->DBG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ping to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "(LA), "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->SMARTCM_DBG:Z

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ping to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "(To Gateway) , Payload Size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mGateway:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/IcmpEchoPeer;->getMacAddrFromArpTable(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetMacStr:Ljava/lang/String;

    goto/16 :goto_2

    :cond_a
    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->DBG:Z

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ping to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "(TG), "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_b
    const/4 v15, 0x0

    :goto_4
    const/4 v2, 0x6

    if-ge v15, v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetMac:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetMacStr:Ljava/lang/String;

    mul-int/lit8 v5, v15, 0x3

    mul-int/lit8 v6, v15, 0x3

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mFragmentMtuSize:I

    add-int/lit8 v2, v2, 0x14

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    add-int/lit8 v2, p2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mMyAddr:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v18

    new-instance v24, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual/range {v24 .. v24}, Ljava/util/Random;->nextInt()I

    move-result v2

    const/high16 v4, 0x10000

    rem-int/2addr v2, v4

    int-to-short v0, v2

    move/from16 v19, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Random;->nextInt()I

    move-result v2

    const/high16 v4, 0x10000

    div-int/2addr v2, v4

    int-to-short v0, v2

    move/from16 v17, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move/from16 v0, p1

    int-to-long v6, v0

    add-long v38, v4, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v36

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual/range {v16 .. v17}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move/from16 v23, p2

    :goto_5
    sget v2, Lcom/android/server/wifi/IcmpEchoPeer;->mPayloadDataSize:I

    move/from16 v0, v23

    if-gt v0, v2, :cond_15

    const-string/jumbo v2, "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ__"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v2, v4, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    add-int/lit8 v4, p2, 0x8

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v4}, Lcom/android/server/wifi/IcmpEchoPeer;->checksum([BII)J

    move-result-wide v4

    long-to-int v2, v4

    int-to-short v2, v2

    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p2, 0x8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mFragmentMtuSize:I

    if-le v2, v4, :cond_16

    const/16 v21, 0x1

    :goto_6
    add-int/lit8 v8, p2, 0x8

    xor-int/lit8 v14, v21, 0x1

    const/16 v22, 0x0

    :goto_7
    :try_start_0
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v2, 0x45

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-nez v21, :cond_17

    add-int/lit8 v2, v8, 0x14

    int-to-short v2, v2

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :goto_8
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    if-nez v21, :cond_19

    const/16 v2, 0x4000

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :goto_9
    const/16 v2, 0x40

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mMyAddr:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v4, 0x0

    const/16 v5, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/wifi/IcmpEchoPeer;->checksum([BII)J

    move-result-wide v4

    long-to-int v2, v4

    int-to-short v2, v2

    const/16 v4, 0xa

    invoke-virtual {v10, v4, v2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    if-nez v21, :cond_1b

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v10, v2, v4, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :goto_a
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mSocket:Llibcore/net/RawSocket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetMac:[B

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v7, v6}, Llibcore/net/RawSocket;->write([B[BII)I

    if-eqz v14, :cond_1d

    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->DBG:Z

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/IcmpEchoPeer;->getKernelTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "ICMP Echo Request Sent. ALL/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", ipId / icmpId - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/16 v2, 0x5dc

    new-array v3, v2, [B

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v2, v4, v38

    if-gez v2, :cond_26

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v38, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mSocket:Llibcore/net/RawSocket;

    array-length v5, v3

    long-to-int v7, v12

    const/4 v4, 0x0

    const/4 v6, -0x1

    invoke-virtual/range {v2 .. v7}, Llibcore/net/RawSocket;->read([BIIII)I

    move-result v25

    const/16 v2, 0x14

    move/from16 v0, v25

    if-le v0, v2, :cond_e

    const/4 v2, 0x0

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v4, 0x40

    if-ne v2, v4, :cond_e

    const/16 v2, 0x9

    aget-byte v2, v3, v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_e

    const/16 v2, 0xc

    aget-byte v2, v3, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    if-ne v2, v4, :cond_e

    const/16 v2, 0xd

    aget-byte v2, v3, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    if-ne v2, v4, :cond_e

    const/16 v2, 0xe

    aget-byte v2, v3, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    if-ne v2, v4, :cond_e

    const/16 v2, 0xf

    aget-byte v2, v3, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    if-ne v2, v4, :cond_e

    const/16 v2, 0x10

    aget-byte v2, v3, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mMyAddr:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    if-ne v2, v4, :cond_e

    const/16 v2, 0x11

    aget-byte v2, v3, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mMyAddr:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    if-ne v2, v4, :cond_e

    const/16 v2, 0x12

    aget-byte v2, v3, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mMyAddr:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    if-ne v2, v4, :cond_e

    const/16 v2, 0x13

    aget-byte v2, v3, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mMyAddr:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    if-ne v2, v4, :cond_e

    const/4 v2, 0x0

    aget-byte v2, v3, v2

    and-int/lit8 v2, v2, 0xf

    mul-int/lit8 v30, v2, 0x4

    const/16 v2, 0x14

    aget-byte v2, v3, v2

    if-nez v2, :cond_22

    const/16 v2, 0x15

    aget-byte v2, v3, v2

    if-nez v2, :cond_22

    const/16 v2, 0x18

    aget-byte v2, v3, v2

    shr-int/lit8 v4, v17, 0x8

    int-to-byte v4, v4

    if-ne v2, v4, :cond_22

    const/16 v2, 0x19

    aget-byte v2, v3, v2

    move/from16 v0, v17

    int-to-byte v4, v0

    if-ne v2, v4, :cond_22

    sub-int v2, v25, v30

    add-int v28, v28, v2

    const/4 v2, 0x6

    aget-byte v2, v3, v2

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_20

    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->SMARTCM_DBG:Z

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/IcmpEchoPeer;->getKernelTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "ICMP Echo Reply - ICMP parameters matched. - Success."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/16 v26, 0x1

    :cond_10
    :goto_b
    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->SMARTCM_DBG:Z

    if-eqz v2, :cond_11

    const/4 v2, 0x6

    aget-byte v2, v3, v2

    and-int/lit8 v2, v2, 0x1f

    mul-int/lit16 v2, v2, 0x100

    const/4 v4, 0x7

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, v4

    mul-int/lit8 v31, v2, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " / "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", offset: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int v4, v25, v30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_c
    const/4 v2, 0x6

    aget-byte v2, v3, v2

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_12

    xor-int/lit8 v2, v26, 0x1

    if-eqz v2, :cond_12

    const/4 v2, 0x6

    aget-byte v2, v3, v2

    and-int/lit8 v2, v2, 0x1f

    mul-int/lit16 v2, v2, 0x100

    const/4 v4, 0x7

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, v4

    mul-int/lit8 v31, v2, 0x8

    sub-int v2, v25, v30

    add-int v2, v2, v31

    move/from16 v0, v28

    if-ne v2, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    const-string/jumbo v4, "truncated"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v27, 0x1

    :cond_12
    if-nez v26, :cond_13

    if-eqz v27, :cond_e

    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v34, v4, v36

    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->DBG:Z

    if-eqz v2, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/IcmpEchoPeer;->getKernelTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "ICMP Echo reply Successful. RTT: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v34

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", recvBytes: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " / "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v27, :cond_25

    const-string/jumbo v2, " [TRUNCATED]"

    :goto_d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    const-string/jumbo v4, "rtt"

    move-wide/from16 v0, v34

    long-to-int v5, v0

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    const-string/jumbo v4, "pass"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    const-string/jumbo v4, "recvBytes"

    move/from16 v0, v28

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    return-object v2

    :cond_15
    const-string/jumbo v2, "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ__"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string/jumbo v4, "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ__"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const-string/jumbo v2, "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ__"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v23, v23, v2

    goto/16 :goto_5

    :cond_16
    const/16 v21, 0x0

    goto/16 :goto_6

    :cond_17
    if-eqz v14, :cond_18

    add-int/lit8 v2, v8, 0x14

    move/from16 v0, v22

    int-to-short v4, v0

    sub-int/2addr v2, v4

    int-to-short v2, v2

    :try_start_1
    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    const-string/jumbo v4, "rtt"

    const/4 v5, -0x4

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "res : -4, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    return-object v2

    :cond_18
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mFragmentMtuSize:I

    add-int/lit8 v2, v2, 0x14

    int-to-short v2, v2

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto/16 :goto_8

    :cond_19
    if-eqz v14, :cond_1a

    div-int/lit8 v2, v22, 0x8

    int-to-short v2, v2

    or-int/lit8 v2, v2, 0x0

    int-to-short v2, v2

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto/16 :goto_9

    :cond_1a
    div-int/lit8 v2, v22, 0x8

    int-to-short v2, v2

    or-int/lit16 v2, v2, 0x2000

    int-to-short v2, v2

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto/16 :goto_9

    :cond_1b
    if-eqz v14, :cond_1c

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    sub-int v4, v8, v22

    move/from16 v0, v22

    invoke-virtual {v10, v2, v0, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto/16 :goto_a

    :cond_1c
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mFragmentMtuSize:I

    move/from16 v0, v22

    invoke-virtual {v10, v2, v0, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto/16 :goto_a

    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mFragmentMtuSize:I

    add-int v22, v22, v2

    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->SMARTCM_DBG:Z

    if-eqz v2, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/IcmpEchoPeer;->getKernelTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "ICMP Echo Request Sent. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    sub-int v2, v8, v22

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mFragmentMtuSize:I

    if-gt v2, v4, :cond_1f

    const/4 v14, 0x1

    :cond_1f
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_7

    :cond_20
    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->SMARTCM_DBG:Z

    if-eqz v2, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/IcmpEchoPeer;->getKernelTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "ICMP Echo Reply - ICMP parameters matched. - More fragment(s) to come. Retrieve IP Identification."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    if-nez v32, :cond_10

    if-nez v33, :cond_10

    const/4 v2, 0x4

    aget-byte v32, v3, v2

    const/4 v2, 0x5

    aget-byte v33, v3, v2

    goto/16 :goto_b

    :cond_22
    const/4 v2, 0x4

    aget-byte v2, v3, v2

    move/from16 v0, v32

    if-ne v0, v2, :cond_24

    const/4 v2, 0x5

    aget-byte v2, v3, v2

    move/from16 v0, v33

    if-ne v0, v2, :cond_24

    sub-int v2, v25, v30

    add-int v28, v28, v2

    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->SMARTCM_DBG:Z

    if-eqz v2, :cond_23

    const/4 v2, 0x6

    aget-byte v2, v3, v2

    and-int/lit8 v2, v2, 0x1f

    mul-int/lit16 v2, v2, 0x100

    const/4 v4, 0x7

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, v4

    mul-int/lit8 v31, v2, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " / "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", offset: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int v4, v25, v30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    move/from16 v0, v28

    if-lt v0, v8, :cond_11

    const/16 v26, 0x1

    goto/16 :goto_c

    :cond_24
    if-nez v32, :cond_11

    if-nez v33, :cond_11

    sub-int v2, v25, v30

    add-int v29, v29, v2

    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->SMARTCM_DBG:Z

    if-eqz v2, :cond_11

    const/4 v2, 0x6

    aget-byte v2, v3, v2

    and-int/lit8 v2, v2, 0x1f

    mul-int/lit16 v2, v2, 0x100

    const/4 v4, 0x7

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, v4

    mul-int/lit8 v31, v2, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PARTIAL Reception (Missing 1st fragment)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " / "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", offset: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int v4, v25, v30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_25
    const-string/jumbo v2, ""

    goto/16 :goto_d

    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    const-string/jumbo v4, "rtt"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    const-string/jumbo v4, "recvBytes"

    add-int v5, v28, v29

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->DBG:Z

    if-eqz v2, :cond_27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/IcmpEchoPeer;->getKernelTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "ICMP Echo Reply Timeout - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v4, v28, v29

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " / "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    return-object v2

    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "res : -1, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v4, v28, v29

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " / "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public doPingPipeLine(II)Landroid/os/Bundle;
    .locals 32

    const-string/jumbo v4, "IcmpEchoPeer:doPingPipeLine"

    if-nez p2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mFragmentMtuSize:I

    add-int/lit8 p2, v2, -0x8

    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Single Packet Ping - size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v2, Lcom/android/server/wifi/IcmpEchoPeer;->mPayloadDataSize:I

    move/from16 v0, p2

    if-ge v0, v2, :cond_1

    sget p2, Lcom/android/server/wifi/IcmpEchoPeer;->mPayloadDataSize:I

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    const-string/jumbo v3, "timeoutMillis"

    move/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    const-string/jumbo v3, "payloadSize"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    const-string/jumbo v3, "type"

    const/4 v8, 0x1

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mGateway:Ljava/net/InetAddress;

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mMyAddr:Ljava/net/InetAddress;

    instance-of v2, v2, Ljava/net/Inet4Address;

    :goto_0
    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    const-string/jumbo v3, "rtt"

    const/4 v8, -0x2

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "res : -2, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    instance-of v3, v3, Ljava/net/Inet4Address;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mGateway:Ljava/net/InetAddress;

    instance-of v3, v3, Ljava/net/Inet4Address;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mMyAddr:Ljava/net/InetAddress;

    instance-of v3, v3, Ljava/net/Inet4Address;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mGateway:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mPrefixLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v8}, Lcom/android/server/wifi/IcmpEchoPeer;->isInLocalNetwork(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->SMARTCM_DBG:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ping to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "(Local Addr) , Payload Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/IcmpEchoPeer;->getMacAddrFromArpTable(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetMacStr:Ljava/lang/String;

    :goto_2
    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->SMARTCM_DBG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTargetMacStr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetMacStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetMacStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    const-string/jumbo v3, "rtt"

    const/4 v8, -0x3

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "res : -3, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    return-object v2

    :cond_6
    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->DBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ping to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "(LA), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->SMARTCM_DBG:Z

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ping to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "(To Gateway) , Payload Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mGateway:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/IcmpEchoPeer;->getMacAddrFromArpTable(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetMacStr:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->DBG:Z

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ping to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "(TG), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    const/16 v16, 0x0

    :goto_4
    const/4 v2, 0x6

    move/from16 v0, v16

    if-ge v0, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetMac:[B

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetMacStr:Ljava/lang/String;

    mul-int/lit8 v8, v16, 0x3

    mul-int/lit8 v10, v16, 0x3

    add-int/lit8 v10, v10, 0x2

    invoke-virtual {v3, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0x10

    invoke-static {v3, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    :cond_b
    move/from16 v5, p2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mFragmentMtuSize:I

    add-int/lit8 v17, v2, -0x8

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    div-int v3, v5, v17

    rem-int v2, v5, v17

    if-nez v2, :cond_13

    const/4 v2, 0x0

    :goto_5
    add-int v7, v3, v2

    new-instance v10, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/wifi/IcmpEchoPeer$1;

    move-object/from16 v3, p0

    move/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wifi/IcmpEchoPeer$1;-><init>(Lcom/android/server/wifi/IcmpEchoPeer;Ljava/lang/String;ILjava/util/HashMap;II)V

    invoke-direct {v10, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mPipelinePingSenderThread:Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mPipelinePingSenderThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    move/from16 v0, p1

    int-to-long v2, v0

    add-long v30, v26, v2

    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->SMARTCM_DBG:Z

    if-eqz v2, :cond_c

    const-string/jumbo v2, "[Start RX]"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/16 v2, 0x5dc

    new-array v9, v2, [B

    const/16 v28, 0x0

    const/16 v19, 0x0

    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v2, v2, v30

    if-gez v2, :cond_14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v14, v30, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-gez v2, :cond_e

    const-wide/16 v14, 0xa

    :cond_e
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mSocket:Llibcore/net/RawSocket;

    array-length v11, v9

    long-to-int v13, v14

    const/4 v10, 0x0

    const/4 v12, -0x1

    invoke-virtual/range {v8 .. v13}, Llibcore/net/RawSocket;->read([BIIII)I

    move-result v18

    const/16 v2, 0x14

    move/from16 v0, v18

    if-le v0, v2, :cond_d

    const/4 v2, 0x0

    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v3, 0x40

    if-ne v2, v3, :cond_d

    const/16 v2, 0x9

    aget-byte v2, v9, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    const/16 v2, 0xc

    aget-byte v2, v9, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    const/4 v8, 0x0

    aget-byte v3, v3, v8

    if-ne v2, v3, :cond_d

    const/16 v2, 0xd

    aget-byte v2, v9, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    const/4 v8, 0x1

    aget-byte v3, v3, v8

    if-ne v2, v3, :cond_d

    const/16 v2, 0xe

    aget-byte v2, v9, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    const/4 v8, 0x2

    aget-byte v3, v3, v8

    if-ne v2, v3, :cond_d

    const/16 v2, 0xf

    aget-byte v2, v9, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    const/4 v8, 0x3

    aget-byte v3, v3, v8

    if-ne v2, v3, :cond_d

    const/16 v2, 0x10

    aget-byte v2, v9, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mMyAddr:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    const/4 v8, 0x0

    aget-byte v3, v3, v8

    if-ne v2, v3, :cond_d

    const/16 v2, 0x11

    aget-byte v2, v9, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mMyAddr:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    const/4 v8, 0x1

    aget-byte v3, v3, v8

    if-ne v2, v3, :cond_d

    const/16 v2, 0x12

    aget-byte v2, v9, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mMyAddr:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    const/4 v8, 0x2

    aget-byte v3, v3, v8

    if-ne v2, v3, :cond_d

    const/16 v2, 0x13

    aget-byte v2, v9, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mMyAddr:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    const/4 v8, 0x3

    aget-byte v3, v3, v8

    if-ne v2, v3, :cond_d

    const/4 v2, 0x0

    aget-byte v2, v9, v2

    and-int/lit8 v2, v2, 0xf

    mul-int/lit8 v21, v2, 0x4

    const/4 v2, 0x4

    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit16 v2, v2, 0x100

    const/4 v3, 0x5

    aget-byte v3, v9, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    int-to-short v0, v2

    move/from16 v22, v0

    const/16 v2, 0x18

    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit16 v2, v2, 0x100

    const/16 v3, 0x19

    aget-byte v3, v9, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    int-to-short v0, v2

    move/from16 v20, v0

    const/16 v2, 0x1a

    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit16 v2, v2, 0x100

    const/16 v3, 0x1b

    aget-byte v3, v9, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    int-to-short v0, v2

    move/from16 v23, v0

    const/16 v2, 0x14

    aget-byte v2, v9, v2

    if-nez v2, :cond_10

    const/16 v2, 0x15

    aget-byte v2, v9, v2

    if-nez v2, :cond_10

    invoke-static/range {v23 .. v23}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->SMARTCM_DBG:Z

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/IcmpEchoPeer;->getKernelTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ICMP Echo Reply - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int v3, v18, v21

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", ipId/icmpId/seqNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    sub-int v2, v18, v21

    add-int/lit8 v2, v2, -0x8

    add-int v19, v19, v2

    add-int/lit8 v28, v28, 0x1

    :cond_10
    move/from16 v0, v28

    if-ne v0, v7, :cond_d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v24, v2, v26

    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->DBG:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/IcmpEchoPeer;->getKernelTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ICMP Echo reply Successful. RTT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", recvPackets: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    const-string/jumbo v3, "rtt"

    move-wide/from16 v0, v24

    long-to-int v8, v0

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    const-string/jumbo v3, "pass"

    const/4 v8, 0x1

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    const-string/jumbo v3, "recvBytes"

    move/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    const-string/jumbo v3, "recvPkt"

    move/from16 v0, v28

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    const-string/jumbo v3, "sentPkt"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->SMARTCM_DBG:Z

    if-eqz v2, :cond_12

    const-string/jumbo v2, "[RX Complete] Success"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    return-object v2

    :cond_13
    const/4 v2, 0x1

    goto/16 :goto_5

    :cond_14
    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->SMARTCM_DBG:Z

    if-eqz v2, :cond_15

    const-string/jumbo v2, "[RX Complete] Timeout"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    const-string/jumbo v3, "rtt"

    const/4 v8, -0x1

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    const-string/jumbo v3, "recvBytes"

    move/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    const-string/jumbo v3, "recvPkt"

    move/from16 v0, v28

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    const-string/jumbo v3, "sentPkt"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-boolean v2, Lcom/android/server/wifi/IcmpEchoPeer;->DBG:Z

    if-eqz v2, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/IcmpEchoPeer;->getKernelTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ICMP Echo Reply Timeout - PKT count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/IcmpEchoPeer;->result:Landroid/os/Bundle;

    return-object v2

    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "res : -1, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/IcmpEchoPeer;->mTargetAddr:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method getIpAddressInBanary(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 12

    const-string/jumbo v6, ""

    invoke-virtual {p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "/"

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "\\."

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    array-length v9, v4

    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v7, v4, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, ""

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    rsub-int/lit8 v10, v10, 0x8

    if-ge v1, v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v8, Lcom/android/server/wifi/IcmpEchoPeer;->SMARTCM_DBG:Z

    if-eqz v8, :cond_2

    const-string/jumbo v8, "IcmpEchoPeer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v6
.end method

.method public getMacAddrFromArpTable(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 12

    if-nez p1, :cond_0

    const-string/jumbo v8, "IcmpEchoPeer"

    const-string/jumbo v9, "getMacAddrFromArpTable - addr == null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, ""

    return-object v8

    :cond_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v8, "IcmpEchoPeer"

    const-string/jumbo v9, "getMacAddrFromArpTable - ipAddr == null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, ""

    return-object v8

    :cond_1
    const/4 v0, 0x0

    const-string/jumbo v8, "/"

    const-string/jumbo v9, ""

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x5

    move-object v1, v0

    :goto_0
    if-ltz v7, :cond_b

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string/jumbo v9, "/proc/net/arp"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_3
    sget-boolean v8, Lcom/android/server/wifi/IcmpEchoPeer;->SMARTCM_DBG:Z

    if-eqz v8, :cond_4

    const-string/jumbo v8, "IcmpEchoPeer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IP not found from ARP table. Remaining trials: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/16 v8, 0x32

    invoke-virtual {p1, v8}, Ljava/net/InetAddress;->isReachable(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v7, v7, -0x1

    if-eqz v0, :cond_5

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_5
    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_6
    :try_start_3
    const-string/jumbo v8, " +"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    array-length v8, v6

    const/4 v9, 0x4

    if-lt v8, v9, :cond_2

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x3

    aget-object v5, v6, v8

    const-string/jumbo v8, "..:..:..:..:..:.."

    invoke-virtual {v5, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "00:00:00:00:00:00"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    sget-boolean v8, Lcom/android/server/wifi/IcmpEchoPeer;->SMARTCM_DBG:Z

    if-eqz v8, :cond_7

    const-string/jumbo v8, "IcmpEchoPeer"

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_8
    if-eqz v0, :cond_9

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_9
    :goto_2
    return-object v5

    :catch_0
    move-exception v2

    const-string/jumbo v8, "IcmpEchoPeer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getMacAddrFromArpTable br.close() IOE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v2

    const-string/jumbo v8, "IcmpEchoPeer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getMacAddrFromArpTable br.close() IOE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_2
    move-exception v2

    move-object v0, v1

    :goto_3
    :try_start_5
    const-string/jumbo v8, "IcmpEchoPeer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getMacAddrFromArpTable Exception"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_5

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v2

    const-string/jumbo v8, "IcmpEchoPeer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getMacAddrFromArpTable br.close() IOE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catchall_0
    move-exception v8

    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_a

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_a
    :goto_5
    throw v8

    :catch_4
    move-exception v2

    const-string/jumbo v9, "IcmpEchoPeer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getMacAddrFromArpTable br.close() IOE"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_b
    const-string/jumbo v8, ""

    return-object v8

    :catchall_1
    move-exception v8

    goto :goto_4

    :catch_5
    move-exception v2

    goto :goto_3
.end method

.method isInLocalNetwork(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/IcmpEchoPeer;->getIpAddressInBanary(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/android/server/wifi/IcmpEchoPeer;->getIpAddressInBanary(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x20

    if-ge p3, v2, :cond_0

    invoke-virtual {v1, v4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    return v4
.end method
