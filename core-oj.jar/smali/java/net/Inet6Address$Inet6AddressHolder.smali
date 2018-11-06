.class Ljava/net/Inet6Address$Inet6AddressHolder;
.super Ljava/lang/Object;
.source "Inet6Address.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/Inet6Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Inet6AddressHolder"
.end annotation


# instance fields
.field ipaddress:[B

.field scope_id:I

.field scope_id_set:Z

.field scope_ifname:Ljava/net/NetworkInterface;

.field scope_ifname_set:Z

.field final synthetic this$0:Ljava/net/Inet6Address;


# direct methods
.method private constructor <init>(Ljava/net/Inet6Address;)V
    .locals 1

    iput-object p1, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->this$0:Ljava/net/Inet6Address;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    return-void
.end method

.method synthetic constructor <init>(Ljava/net/Inet6Address;Ljava/net/Inet6Address$Inet6AddressHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/net/Inet6Address$Inet6AddressHolder;-><init>(Ljava/net/Inet6Address;)V

    return-void
.end method

.method private constructor <init>(Ljava/net/Inet6Address;[BIZLjava/net/NetworkInterface;Z)V
    .locals 0

    iput-object p1, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->this$0:Ljava/net/Inet6Address;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    iput p3, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id:I

    iput-boolean p4, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id_set:Z

    iput-boolean p6, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname_set:Z

    iput-object p5, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname:Ljava/net/NetworkInterface;

    return-void
.end method

.method synthetic constructor <init>(Ljava/net/Inet6Address;[BIZLjava/net/NetworkInterface;ZLjava/net/Inet6Address$Inet6AddressHolder;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Ljava/net/Inet6Address$Inet6AddressHolder;-><init>(Ljava/net/Inet6Address;[BIZLjava/net/NetworkInterface;Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v1, p1, Ljava/net/Inet6Address$Inet6AddressHolder;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/net/Inet6Address$Inet6AddressHolder;

    iget-object v1, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    iget-object v2, v0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x10

    iget-object v4, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_1

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_1
    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    if-ge v2, v6, :cond_0

    shl-int/lit8 v4, v0, 0x8

    iget-object v5, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v5, v5, v2

    add-int v0, v4, v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method init([BI)V
    .locals 1

    invoke-virtual {p0, p1}, Ljava/net/Inet6Address$Inet6AddressHolder;->setAddr([B)V

    if-lez p2, :cond_0

    iput p2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id_set:Z

    :cond_0
    return-void
.end method

.method init([BLjava/net/NetworkInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Ljava/net/Inet6Address$Inet6AddressHolder;->setAddr([B)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    invoke-static {v0, p2}, Ljava/net/Inet6Address;->-wrap0([BLjava/net/NetworkInterface;)I

    move-result v0

    iput v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id:I

    iput-boolean v1, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id_set:Z

    iput-object p2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname:Ljava/net/NetworkInterface;

    iput-boolean v1, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname_set:Z

    :cond_0
    return-void
.end method

.method isAnyLocalAddress()Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x10

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v3, v3, v0

    or-int/2addr v3, v1

    int-to-byte v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method isIPv4CompatibleAddress()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v0, v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v1, 0x6

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v1, 0x7

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/16 v1, 0x8

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/16 v1, 0x9

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/16 v1, 0xa

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/16 v1, 0xb

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    return v3

    :cond_0
    return v2
.end method

.method isLinkLocalAddress()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v0

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

.method isLoopbackAddress()Z
    .locals 6

    const/16 v5, 0xf

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v4, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v4, v4, v0

    or-int/2addr v4, v1

    int-to-byte v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    iget-object v4, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v4, v4, v5

    if-ne v4, v2, :cond_1

    :goto_1
    return v2

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method isMCGlobal()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    const/16 v3, 0xe

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

.method isMCLinkLocal()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

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

.method isMCNodeLocal()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method isMCOrgLocal()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    const/16 v3, 0x8

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

.method isMCSiteLocal()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x5

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

.method isMulticastAddress()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xff

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isSiteLocalAddress()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v0

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

.method setAddr([B)V
    .locals 3

    const/16 v2, 0x10

    const/4 v1, 0x0

    array-length v0, p1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_0
    return-void
.end method
