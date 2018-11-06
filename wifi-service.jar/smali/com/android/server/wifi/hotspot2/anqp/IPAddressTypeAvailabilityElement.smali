.class public Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;
.super Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
.source "IPAddressTypeAvailabilityElement.java"


# static fields
.field public static final EXPECTED_BUFFER_LENGTH:I = 0x1

.field private static final IPV4_AVAILABILITY:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final IPV4_AVAILABILITY_MASK:I = 0x3f

.field public static final IPV4_DOUBLE_NAT:I = 0x4

.field public static final IPV4_NOT_AVAILABLE:I = 0x0

.field public static final IPV4_PORT_RESTRICTED:I = 0x2

.field public static final IPV4_PORT_RESTRICTED_AND_DOUBLE_NAT:I = 0x6

.field public static final IPV4_PORT_RESTRICTED_AND_SINGLE_NAT:I = 0x5

.field public static final IPV4_PUBLIC:I = 0x1

.field public static final IPV4_SINGLE_NAT:I = 0x3

.field public static final IPV4_UNKNOWN:I = 0x7

.field private static final IPV6_AVAILABILITY:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final IPV6_AVAILABILITY_MASK:I = 0x3

.field public static final IPV6_AVAILABLE:I = 0x1

.field public static final IPV6_NOT_AVAILABLE:I = 0x0

.field public static final IPV6_UNKNOWN:I = 0x2


# instance fields
.field private final mV4Availability:I

.field private final mV6Availability:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV4_AVAILABILITY:Ljava/util/Set;

    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV4_AVAILABILITY:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV4_AVAILABILITY:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV4_AVAILABILITY:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV4_AVAILABILITY:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV4_AVAILABILITY:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV4_AVAILABILITY:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV4_AVAILABILITY:Ljava/util/Set;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV6_AVAILABILITY:Ljava/util/Set;

    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV6_AVAILABILITY:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV6_AVAILABILITY:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV6_AVAILABILITY:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;)V

    iput p1, p0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->mV4Availability:I

    iput p2, p0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->mV6Availability:I

    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected buffer length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v0, v3, 0xff

    and-int/lit8 v2, v0, 0x3

    sget-object v3, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV6_AVAILABILITY:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x2

    :cond_1
    shr-int/lit8 v3, v0, 0x2

    and-int/lit8 v1, v3, 0x3f

    sget-object v3, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV4_AVAILABILITY:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x7

    :cond_2
    new-instance v3, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;

    invoke-direct {v3, v1, v2}, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;-><init>(II)V

    return-object v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;

    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->mV4Availability:I

    iget v4, v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->mV4Availability:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->mV6Availability:I

    iget v4, v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->mV6Availability:I

    if-ne v3, v4, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public getV4Availability()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->mV4Availability:I

    return v0
.end method

.method public getV6Availability()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->mV6Availability:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->mV4Availability:I

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->mV6Availability:I

    add-int/lit8 v1, v1, 0x2

    shl-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IPAddressTypeAvailability{mV4Availability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->mV4Availability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mV6Availability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->mV6Availability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
