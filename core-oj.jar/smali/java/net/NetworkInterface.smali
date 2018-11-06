.class public final Ljava/net/NetworkInterface;
.super Ljava/lang/Object;
.source "NetworkInterface.java"


# static fields
.field private static final defaultIndex:I

.field private static final defaultInterface:Ljava/net/NetworkInterface;


# instance fields
.field private addrs:[Ljava/net/InetAddress;

.field private bindings:[Ljava/net/InterfaceAddress;

.field private childs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation
.end field

.field private displayName:Ljava/lang/String;

.field private hardwareAddr:[B

.field private index:I

.field private name:Ljava/lang/String;

.field private parent:Ljava/net/NetworkInterface;

.field private virtual:Z


# direct methods
.method static synthetic -get0(Ljava/net/NetworkInterface;)[Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/net/DefaultInterface;->getDefault()Ljava/net/NetworkInterface;

    move-result-object v0

    sput-object v0, Ljava/net/NetworkInterface;->defaultInterface:Ljava/net/NetworkInterface;

    sget-object v0, Ljava/net/NetworkInterface;->defaultInterface:Ljava/net/NetworkInterface;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/net/NetworkInterface;->defaultInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v0

    sput v0, Ljava/net/NetworkInterface;->defaultIndex:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput v0, Ljava/net/NetworkInterface;->defaultIndex:I

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/NetworkInterface;->virtual:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I[Ljava/net/InetAddress;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/NetworkInterface;->virtual:Z

    iput-object p1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    iput p2, p0, Ljava/net/NetworkInterface;->index:I

    iput-object p3, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    return-void
.end method

.method private static getAll()[Ljava/net/NetworkInterface;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    sget-object v23, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface/range {v23 .. v23}, Llibcore/io/Os;->getifaddrs()[Landroid/system/StructIfaddrs;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    const/16 v23, 0x0

    array-length v0, v13

    move/from16 v24, v0

    :goto_0
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    aget-object v11, v13, v23

    iget-object v0, v11, Landroid/system/StructIfaddrs;->ifa_name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    if-nez v14, :cond_0

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v23

    throw v23

    :cond_1
    new-instance v20, Ljava/util/HashMap;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    sget-object v24, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Llibcore/io/Os;->if_nametoindex(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_2

    new-instance v18, Ljava/net/NetworkInterface;

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v15, v2}, Ljava/net/NetworkInterface;-><init>(Ljava/lang/String;I[Ljava/net/InetAddress;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/system/StructIfaddrs;

    iget-object v0, v11, Landroid/system/StructIfaddrs;->ifa_addr:Ljava/net/InetAddress;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    iget-object v0, v11, Landroid/system/StructIfaddrs;->ifa_addr:Ljava/net/InetAddress;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v24, Ljava/net/InterfaceAddress;

    iget-object v0, v11, Landroid/system/StructIfaddrs;->ifa_addr:Ljava/net/InetAddress;

    move-object/from16 v25, v0

    iget-object v0, v11, Landroid/system/StructIfaddrs;->ifa_broadaddr:Ljava/net/InetAddress;

    move-object/from16 v23, v0

    check-cast v23, Ljava/net/Inet4Address;

    iget-object v0, v11, Landroid/system/StructIfaddrs;->ifa_netmask:Ljava/net/InetAddress;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Ljava/net/InterfaceAddress;-><init>(Ljava/net/InetAddress;Ljava/net/Inet4Address;Ljava/net/InetAddress;)V

    move-object/from16 v0, v24

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, v11, Landroid/system/StructIfaddrs;->hwaddr:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    iget-object v0, v11, Landroid/system/StructIfaddrs;->hwaddr:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    iput-object v0, v1, Ljava/net/NetworkInterface;->hardwareAddr:[B

    goto :goto_2

    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/net/InetAddress;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/net/InetAddress;

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    iput-object v0, v1, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/net/InterfaceAddress;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/net/InterfaceAddress;

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    iput-object v0, v1, Ljava/net/NetworkInterface;->bindings:[Ljava/net/InterfaceAddress;

    new-instance v23, Ljava/util/ArrayList;

    const/16 v24, 0x0

    invoke-direct/range {v23 .. v24}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    iput-object v0, v1, Ljava/net/NetworkInterface;->childs:Ljava/util/List;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/net/NetworkInterface;

    invoke-virtual/range {v18 .. v18}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v19

    const/16 v23, 0x3a

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v6, v0, :cond_7

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/net/NetworkInterface;

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput-boolean v0, v1, Ljava/net/NetworkInterface;->virtual:Z

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    iput-object v0, v1, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    move-object/from16 v0, v21

    iget-object v0, v0, Ljava/net/NetworkInterface;->childs:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Ljava/net/NetworkInterface;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/net/NetworkInterface;

    return-object v23
.end method

.method public static getByIndex(I)Ljava/net/NetworkInterface;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v2, 0x0

    if-gez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Interface index can\'t be negative"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {}, Ljava/net/NetworkInterface;->getAll()[Ljava/net/NetworkInterface;

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v4

    if-ne v4, p0, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v7, 0x0

    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    instance-of v4, p0, Ljava/net/Inet4Address;

    if-nez v4, :cond_1

    instance-of v4, p0, Ljava/net/Inet6Address;

    :goto_0
    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "invalid address type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/net/NetworkInterface;->getAll()[Ljava/net/NetworkInterface;

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v3

    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v2, v3, v4

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0, p0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    return-object v2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-object v7
.end method

.method public static getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    invoke-static {}, Ljava/net/NetworkInterface;->getAll()[Ljava/net/NetworkInterface;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v5
.end method

.method static getDefault()Ljava/net/NetworkInterface;
    .locals 1

    sget-object v0, Ljava/net/NetworkInterface;->defaultInterface:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method private getFlags()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->rawOs:Llibcore/io/Os;

    sget v4, Landroid/system/OsConstants;->AF_INET:I

    sget v5, Landroid/system/OsConstants;->SOCK_DGRAM:I

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    sget-object v3, Llibcore/io/Libcore;->rawOs:Llibcore/io/Os;

    iget-object v4, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Llibcore/io/Os;->ioctlFlags(Ljava/io/FileDescriptor;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return v3

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v3, Ljava/net/SocketException;

    invoke-direct {v3, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    throw v3

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static getNetworkInterfaces()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-static {}, Ljava/net/NetworkInterface;->getAll()[Ljava/net/NetworkInterface;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    instance-of v8, p1, Ljava/net/NetworkInterface;

    if-nez v8, :cond_0

    return v7

    :cond_0
    move-object v4, p1

    check-cast v4, Ljava/net/NetworkInterface;

    iget-object v8, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    iget-object v9, v4, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    return v7

    :cond_1
    iget-object v8, v4, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    if-eqz v8, :cond_2

    return v7

    :cond_2
    iget-object v8, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    if-nez v8, :cond_4

    iget-object v8, v4, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    if-nez v8, :cond_3

    :goto_0
    return v6

    :cond_3
    move v6, v7

    goto :goto_0

    :cond_4
    iget-object v8, v4, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    if-nez v8, :cond_5

    return v7

    :cond_5
    iget-object v8, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    array-length v8, v8

    iget-object v9, v4, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    array-length v9, v9

    if-eq v8, v9, :cond_6

    return v7

    :cond_6
    iget-object v5, v4, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    array-length v0, v5

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_a

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_7

    iget-object v8, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    aget-object v8, v8, v2

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v1, 0x1

    :cond_7
    if-nez v1, :cond_9

    return v7

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_a
    return v6
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    iget-object v1, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHardwareAddress()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "NetworkInterface doesn\'t exist anymore"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, v0, Ljava/net/NetworkInterface;->hardwareAddr:[B

    return-object v1
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Ljava/net/NetworkInterface;->index:I

    return v0
.end method

.method public getInetAddresses()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/net/NetworkInterface$1checkedAddresses;

    invoke-direct {v0, p0}, Ljava/net/NetworkInterface$1checkedAddresses;-><init>(Ljava/net/NetworkInterface;)V

    return-object v0
.end method

.method public getInterfaceAddresses()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, p0, Ljava/net/NetworkInterface;->bindings:[Ljava/net/InterfaceAddress;

    if-eqz v4, :cond_1

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Ljava/net/NetworkInterface;->bindings:[Ljava/net/InterfaceAddress;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v4, p0, Ljava/net/NetworkInterface;->bindings:[Ljava/net/InterfaceAddress;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    :cond_0
    iget-object v4, p0, Ljava/net/NetworkInterface;->bindings:[Ljava/net/InterfaceAddress;

    aget-object v4, v4, v1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getMTU()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->rawOs:Llibcore/io/Os;

    sget v4, Landroid/system/OsConstants;->AF_INET:I

    sget v5, Landroid/system/OsConstants;->SOCK_DGRAM:I

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    sget-object v3, Llibcore/io/Libcore;->rawOs:Llibcore/io/Os;

    iget-object v4, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Llibcore/io/Os;->ioctlMTU(Ljava/io/FileDescriptor;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return v3

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v3, Ljava/net/SocketException;

    invoke-direct {v3, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    throw v3

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/net/NetworkInterface;
    .locals 1

    iget-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method public getSubInterfaces()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/net/NetworkInterface;->childs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isLoopback()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/net/NetworkInterface;->getFlags()I

    move-result v1

    sget v2, Landroid/system/OsConstants;->IFF_LOOPBACK:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPointToPoint()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/net/NetworkInterface;->getFlags()I

    move-result v1

    sget v2, Landroid/system/OsConstants;->IFF_POINTOPOINT:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isUp()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/net/NetworkInterface;->getFlags()I

    move-result v1

    sget v2, Landroid/system/OsConstants;->IFF_UP:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isVirtual()Z
    .locals 1

    iget-boolean v0, p0, Ljava/net/NetworkInterface;->virtual:Z

    return v0
.end method

.method public supportsMulticast()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/net/NetworkInterface;->getFlags()I

    move-result v1

    sget v2, Landroid/system/OsConstants;->IFF_MULTICAST:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "name:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    iget-object v1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    goto :goto_0
.end method
