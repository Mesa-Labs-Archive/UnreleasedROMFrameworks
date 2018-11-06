.class public final Ljava/net/Inet6Address;
.super Ljava/net/InetAddress;
.source "Inet6Address.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/Inet6Address$Inet6AddressHolder;
    }
.end annotation


# static fields
.field public static final ANY:Ljava/net/InetAddress;

.field private static final FIELDS_OFFSET:J

.field static final INADDRSZ:I = 0x10

.field private static final INT16SZ:I = 0x2

.field public static final LOOPBACK:Ljava/net/InetAddress;

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x5f7c2081522c8021L


# instance fields
.field private final transient holder6:Ljava/net/Inet6Address$Inet6AddressHolder;


# direct methods
.method static synthetic -wrap0([BLjava/net/NetworkInterface;)I
    .locals 1

    invoke-static {p0, p1}, Ljava/net/Inet6Address;->deriveNumericScope([BLjava/net/NetworkInterface;)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 7

    const/16 v5, 0x10

    const/4 v6, 0x0

    new-instance v2, Ljava/net/Inet6Address;

    const-string/jumbo v3, "::"

    new-array v4, v5, [B

    fill-array-data v4, :array_0

    invoke-direct {v2, v3, v4, v6}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BI)V

    sput-object v2, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    new-instance v2, Ljava/net/Inet6Address;

    const-string/jumbo v3, "ip6-localhost"

    new-array v4, v5, [B

    fill-array-data v4, :array_1

    invoke-direct {v2, v3, v4, v6}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BI)V

    sput-object v2, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/io/ObjectStreamField;

    new-instance v3, Ljava/io/ObjectStreamField;

    const-string/jumbo v4, "ipaddress"

    const-class v5, [B

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v2, v6

    new-instance v3, Ljava/io/ObjectStreamField;

    const-string/jumbo v4, "scope_id"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-instance v3, Ljava/io/ObjectStreamField;

    const-string/jumbo v4, "scope_id_set"

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    new-instance v3, Ljava/io/ObjectStreamField;

    const-string/jumbo v4, "scope_ifname_set"

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v4, 0x3

    aput-object v3, v2, v4

    new-instance v3, Ljava/io/ObjectStreamField;

    const-string/jumbo v4, "ifname"

    const-class v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v4, 0x4

    aput-object v3, v2, v4

    sput-object v2, Ljava/net/Inet6Address;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    const-class v2, Ljava/net/Inet6Address;

    const-string/jumbo v3, "holder6"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/net/Inet6Address;->FIELDS_OFFSET:J

    sput-object v1, Ljava/net/Inet6Address;->UNSAFE:Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    iget-object v0, p0, Ljava/net/Inet6Address;->holder:Ljava/net/InetAddress$InetAddressHolder;

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    invoke-virtual {v0, v2, v1}, Ljava/net/InetAddress$InetAddressHolder;->init(Ljava/lang/String;I)V

    new-instance v0, Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-direct {v0, p0, v2}, Ljava/net/Inet6Address$Inet6AddressHolder;-><init>(Ljava/net/Inet6Address;Ljava/net/Inet6Address$Inet6AddressHolder;)V

    iput-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;[B)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    new-instance v1, Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-direct {v1, p0, v2}, Ljava/net/Inet6Address$Inet6AddressHolder;-><init>(Ljava/net/Inet6Address;Ljava/net/Inet6Address$Inet6AddressHolder;)V

    iput-object v1, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Ljava/net/Inet6Address;->initif(Ljava/lang/String;[BLjava/net/NetworkInterface;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;[BI)V
    .locals 2

    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    iget-object v0, p0, Ljava/net/Inet6Address;->holder:Ljava/net/InetAddress$InetAddressHolder;

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    invoke-virtual {v0, p1, v1}, Ljava/net/InetAddress$InetAddressHolder;->init(Ljava/lang/String;I)V

    new-instance v0, Ljava/net/Inet6Address$Inet6AddressHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/net/Inet6Address$Inet6AddressHolder;-><init>(Ljava/net/Inet6Address;Ljava/net/Inet6Address$Inet6AddressHolder;)V

    iput-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0, p2, p3}, Ljava/net/Inet6Address$Inet6AddressHolder;->init([BI)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    new-instance v0, Ljava/net/Inet6Address$Inet6AddressHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/net/Inet6Address$Inet6AddressHolder;-><init>(Ljava/net/Inet6Address;Ljava/net/Inet6Address$Inet6AddressHolder;)V

    iput-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-direct {p0, p1, p2, p3}, Ljava/net/Inet6Address;->initstr(Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;[BLjava/net/NetworkInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    new-instance v0, Ljava/net/Inet6Address$Inet6AddressHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/net/Inet6Address$Inet6AddressHolder;-><init>(Ljava/net/Inet6Address;Ljava/net/Inet6Address$Inet6AddressHolder;)V

    iput-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-direct {p0, p1, p2, p3}, Ljava/net/Inet6Address;->initif(Ljava/lang/String;[BLjava/net/NetworkInterface;)V

    return-void
.end method

.method private deriveNumericScope(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-object v3, v3, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    invoke-static {v3, v2}, Ljava/net/Inet6Address;->deriveNumericScope([BLjava/net/NetworkInterface;)I

    move-result v3

    return v3

    :catch_0
    move-exception v0

    new-instance v3, Ljava/net/UnknownHostException;

    const-string/jumbo v4, "could not enumerate local network interfaces"

    invoke-direct {v3, v4}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v3, Ljava/net/UnknownHostException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No matching address found for interface : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static deriveNumericScope([BLjava/net/NetworkInterface;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    instance-of v3, v0, Ljava/net/Inet6Address;

    if-eqz v3, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/net/Inet6Address;

    invoke-virtual {v2}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v3

    invoke-static {p0, v3}, Ljava/net/Inet6Address;->isDifferentLocalAddressType([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v3

    return v3

    :cond_1
    new-instance v3, Ljava/net/UnknownHostException;

    const-string/jumbo v4, "no scope_id found"

    invoke-direct {v3, v4}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/net/Inet6Address;

    invoke-direct {v0, p0, p1, p2}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BI)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/net/UnknownHostException;

    const-string/jumbo v1, "addr is of illegal length"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getByAddress(Ljava/lang/String;[BLjava/net/NetworkInterface;)Ljava/net/Inet6Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/net/Inet6Address;

    invoke-direct {v0, p0, p1, p2}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BLjava/net/NetworkInterface;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/net/UnknownHostException;

    const-string/jumbo v1, "addr is of illegal length"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initif(Ljava/lang/String;[BLjava/net/NetworkInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    iput-object p1, v1, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    const/4 v0, -0x1

    iget-object v1, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v1, p2, p3}, Ljava/net/Inet6Address$Inet6AddressHolder;->init([BLjava/net/NetworkInterface;)V

    array-length v1, p2

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    :cond_0
    iget-object v1, p0, Ljava/net/Inet6Address;->holder:Ljava/net/InetAddress$InetAddressHolder;

    invoke-virtual {v1, p1, v0}, Ljava/net/InetAddress$InetAddressHolder;->init(Ljava/lang/String;I)V

    return-void
.end method

.method private initstr(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    :try_start_0
    invoke-static {p3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/net/UnknownHostException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no such interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/net/UnknownHostException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SocketException thrown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, v1}, Ljava/net/Inet6Address;->initif(Ljava/lang/String;[BLjava/net/NetworkInterface;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method private static isDifferentLocalAddressType([B[B)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/net/Inet6Address;->isLinkLocalAddress([B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/net/Inet6Address;->isLinkLocalAddress([B)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Ljava/net/Inet6Address;->isSiteLocalAddress([B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/net/Inet6Address;->isSiteLocalAddress([B)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static isLinkLocalAddress([B)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_1

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xc0

    const/16 v3, 0x80

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static isSiteLocalAddress([B)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_1

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xc0

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static numericToTextFormat([B)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    shl-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/net/Inet6Address;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v12, Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    if-eq v1, v12, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v7, "invalid address type"

    invoke-direct {v1, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v10

    const-string/jumbo v1, "ipaddress"

    invoke-virtual {v10, v1, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const-string/jumbo v1, "scope_id"

    const/4 v12, -0x1

    invoke-virtual {v10, v1, v12}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v1, "scope_id_set"

    invoke-virtual {v10, v1, v13}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v1, "scope_ifname_set"

    invoke-virtual {v10, v1, v13}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v6

    const-string/jumbo v1, "ifname"

    invoke-virtual {v10, v1, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_1

    const-string/jumbo v1, ""

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v11}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    if-nez v5, :cond_2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v1, v2

    const/16 v12, 0x10

    if-eq v1, v12, :cond_3

    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "invalid address length: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v12, v2

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/4 v6, 0x1

    :try_start_1
    invoke-static {v2, v5}, Ljava/net/Inet6Address;->deriveNumericScope([BLjava/net/NetworkInterface;)I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v9

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress$InetAddressHolder;->getFamily()I

    move-result v1

    sget v12, Landroid/system/OsConstants;->AF_INET6:I

    if-eq v1, v12, :cond_4

    new-instance v1, Ljava/io/InvalidObjectException;

    const-string/jumbo v7, "invalid address family type"

    invoke-direct {v1, v7}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/net/Inet6Address$Inet6AddressHolder;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Ljava/net/Inet6Address$Inet6AddressHolder;-><init>(Ljava/net/Inet6Address;[BIZLjava/net/NetworkInterface;ZLjava/net/Inet6Address$Inet6AddressHolder;)V

    sget-object v1, Ljava/net/Inet6Address;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v12, Ljava/net/Inet6Address;->FIELDS_OFFSET:J

    invoke-virtual {v1, p0, v12, v13, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :catch_1
    move-exception v8

    goto :goto_0
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-object v2, v2, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname:Ljava/net/NetworkInterface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-object v2, v2, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname_set:Z

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    const-string/jumbo v2, "ipaddress"

    iget-object v3, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-object v3, v3, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "scope_id"

    iget-object v3, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget v3, v3, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id:I

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string/jumbo v2, "scope_id_set"

    iget-object v3, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-boolean v3, v3, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id_set:Z

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    const-string/jumbo v2, "scope_ifname_set"

    iget-object v3, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-boolean v3, v3, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname_set:Z

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    const-string/jumbo v2, "ifname"

    invoke-virtual {v1, v2, v0}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-eqz p1, :cond_0

    instance-of v1, p1, Ljava/net/Inet6Address;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/net/Inet6Address;

    iget-object v1, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-object v2, v0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v1, v2}, Ljava/net/Inet6Address$Inet6AddressHolder;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAddress()[B
    .locals 1

    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-object v0, v0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 2

    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->NI_NUMERICHOST:I

    invoke-interface {v0, p0, v1}, Llibcore/io/Os;->getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScopeId()I
    .locals 1

    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget v0, v0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id:I

    return v0
.end method

.method public getScopedInterface()Ljava/net/NetworkInterface;
    .locals 1

    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-object v0, v0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAnyLocalAddress()Z
    .locals 1

    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isAnyLocalAddress()Z

    move-result v0

    return v0
.end method

.method public isIPv4CompatibleAddress()Z
    .locals 1

    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isIPv4CompatibleAddress()Z

    move-result v0

    return v0
.end method

.method public isLinkLocalAddress()Z
    .locals 1

    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isLinkLocalAddress()Z

    move-result v0

    return v0
.end method

.method public isLoopbackAddress()Z
    .locals 1

    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isLoopbackAddress()Z

    move-result v0

    return v0
.end method

.method public isMCGlobal()Z
    .locals 1

    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isMCGlobal()Z

    move-result v0

    return v0
.end method

.method public isMCLinkLocal()Z
    .locals 1

    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isMCLinkLocal()Z

    move-result v0

    return v0
.end method

.method public isMCNodeLocal()Z
    .locals 1

    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isMCNodeLocal()Z

    move-result v0

    return v0
.end method

.method public isMCOrgLocal()Z
    .locals 1

    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isMCOrgLocal()Z

    move-result v0

    return v0
.end method

.method public isMCSiteLocal()Z
    .locals 1

    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isMCSiteLocal()Z

    move-result v0

    return v0
.end method

.method public isMulticastAddress()Z
    .locals 1

    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isMulticastAddress()Z

    move-result v0

    return v0
.end method

.method public isSiteLocalAddress()Z
    .locals 1

    iget-object v0, p0, Ljava/net/Inet6Address;->holder6:Ljava/net/Inet6Address$Inet6AddressHolder;

    invoke-virtual {v0}, Ljava/net/Inet6Address$Inet6AddressHolder;->isSiteLocalAddress()Z

    move-result v0

    return v0
.end method
