.class public final Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;
.super Ljava/lang/Object;
.source "NanDiscoveryCommonConfig.java"


# instance fields
.field public configRangingIndications:I

.field public disableDiscoveryTerminationIndication:Z

.field public disableFollowupReceivedIndication:Z

.field public disableMatchExpirationIndication:Z

.field public discoveryCount:B

.field public discoveryMatchIndicator:I

.field public discoveryWindowPeriod:S

.field public distanceEgressCm:S

.field public distanceIngressCm:S

.field public final extendedServiceSpecificInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public rangingIntervalMsec:I

.field public rangingRequired:Z

.field public final rxMatchFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public final securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

.field public final serviceName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public final serviceSpecificInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public sessionId:B

.field public ttlSec:S

.field public final txMatchFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public useRssiThreshold:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    new-instance v0, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;",
            ">;"
        }
    .end annotation

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    mul-int/lit16 v1, v12, 0xb0

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v13

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v12, :cond_0

    new-instance v11, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    invoke-direct {v11}, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;-><init>()V

    mul-int/lit16 v1, v9, 0xb0

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-object v10
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v4, 0x8

    invoke-virtual {v0, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit16 v4, v2, 0xb0

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    mul-int/lit16 v5, v1, 0xb0

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    return v4

    :cond_0
    if-nez p1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->sessionId:B

    iget-byte v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->sessionId:B

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->ttlSec:S

    iget-short v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->ttlSec:S

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    iget-short v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    if-eq v1, v2, :cond_5

    return v3

    :cond_5
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryCount:B

    iget-byte v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryCount:B

    if-eq v1, v2, :cond_6

    return v3

    :cond_6
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    :cond_7
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    if-eq v1, v2, :cond_8

    return v3

    :cond_8
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    :cond_9
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    :cond_a
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    :cond_b
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    :cond_c
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    iget-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    if-eq v1, v2, :cond_d

    return v3

    :cond_d
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    iget-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    if-eq v1, v2, :cond_e

    return v3

    :cond_e
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    iget-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    if-eq v1, v2, :cond_f

    return v3

    :cond_f
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    iget-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    if-eq v1, v2, :cond_10

    return v3

    :cond_10
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v3

    :cond_11
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingRequired:Z

    iget-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingRequired:Z

    if-eq v1, v2, :cond_12

    return v3

    :cond_12
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingIntervalMsec:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingIntervalMsec:I

    if-eq v1, v2, :cond_13

    return v3

    :cond_13
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->configRangingIndications:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->configRangingIndications:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v3

    :cond_14
    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceIngressCm:S

    iget-short v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceIngressCm:S

    if-eq v1, v2, :cond_15

    return v3

    :cond_15
    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceEgressCm:S

    iget-short v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceEgressCm:S

    if-eq v1, v2, :cond_16

    return v3

    :cond_16
    return v4
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Object;

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->sessionId:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->ttlSec:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryCount:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingRequired:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingIntervalMsec:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->configRangingIndications:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceIngressCm:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceEgressCm:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 17

    const-wide/16 v4, 0x0

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    move-object/from16 v0, p0

    iput-byte v3, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->sessionId:B

    const-wide/16 v4, 0x2

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v3

    move-object/from16 v0, p0

    iput-short v3, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->ttlSec:S

    const-wide/16 v4, 0x4

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v3

    move-object/from16 v0, p0

    iput-short v3, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    const-wide/16 v4, 0x6

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    move-object/from16 v0, p0

    iput-byte v3, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryCount:B

    const-wide/16 v4, 0x8

    add-long v4, v4, p3

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    mul-int/lit8 v3, v12, 0x1

    int-to-long v4, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const-wide/16 v8, 0x8

    add-long v8, v8, p3

    const-wide/16 v14, 0x0

    add-long/2addr v8, v14

    const/4 v10, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v12, :cond_0

    mul-int/lit8 v3, v2, 0x1

    int-to-long v4, v3

    invoke-virtual {v13, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v11

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x18

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    const-wide/16 v4, 0x20

    add-long v4, v4, p3

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    mul-int/lit8 v3, v12, 0x1

    int-to-long v4, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const-wide/16 v8, 0x20

    add-long v8, v8, p3

    const-wide/16 v14, 0x0

    add-long/2addr v8, v14

    const/4 v10, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v12, :cond_1

    mul-int/lit8 v3, v2, 0x1

    int-to-long v4, v3

    invoke-virtual {v13, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v11

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x30

    add-long v4, v4, p3

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    mul-int/lit8 v3, v12, 0x1

    int-to-long v4, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const-wide/16 v8, 0x30

    add-long v8, v8, p3

    const-wide/16 v14, 0x0

    add-long/2addr v8, v14

    const/4 v10, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v12, :cond_2

    mul-int/lit8 v3, v2, 0x1

    int-to-long v4, v3

    invoke-virtual {v13, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v11

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v4, 0x40

    add-long v4, v4, p3

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    mul-int/lit8 v3, v12, 0x1

    int-to-long v4, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const-wide/16 v8, 0x40

    add-long v8, v8, p3

    const-wide/16 v14, 0x0

    add-long/2addr v8, v14

    const/4 v10, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v12, :cond_3

    mul-int/lit8 v3, v2, 0x1

    int-to-long v4, v3

    invoke-virtual {v13, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v11

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const-wide/16 v4, 0x50

    add-long v4, v4, p3

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    mul-int/lit8 v3, v12, 0x1

    int-to-long v4, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const-wide/16 v8, 0x50

    add-long v8, v8, p3

    const-wide/16 v14, 0x0

    add-long/2addr v8, v14

    const/4 v10, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v12, :cond_4

    mul-int/lit8 v3, v2, 0x1

    int-to-long v4, v3

    invoke-virtual {v13, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v11

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    const-wide/16 v4, 0x60

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    const-wide/16 v4, 0x61

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    const-wide/16 v4, 0x62

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    const-wide/16 v4, 0x63

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    const-wide/16 v4, 0x68

    add-long v4, v4, p3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v4, 0xa0

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingRequired:Z

    const-wide/16 v4, 0xa4

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingIntervalMsec:I

    const-wide/16 v4, 0xa8

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->configRangingIndications:I

    const-wide/16 v4, 0xac

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v3

    move-object/from16 v0, p0

    iput-short v3, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceIngressCm:S

    const-wide/16 v4, 0xae

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v3

    move-object/from16 v0, p0

    iput-short v3, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceEgressCm:S

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 4

    const-wide/16 v2, 0xb0

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ".sessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->sessionId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .ttlSec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->ttlSec:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .discoveryWindowPeriod = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .discoveryCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryCount:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .serviceName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .discoveryMatchIndicator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/NanMatchAlg;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .serviceSpecificInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .extendedServiceSpecificInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .rxMatchFilter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .txMatchFilter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .useRssiThreshold = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .disableDiscoveryTerminationIndication = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .disableMatchExpirationIndication = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .disableFollowupReceivedIndication = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .securityConfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .rangingRequired = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .rangingIntervalMsec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingIntervalMsec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .configRangingIndications = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->configRangingIndications:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/NanRangingIndication;->dumpBitfield(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .distanceIngressCm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceIngressCm:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .distanceEgressCm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceEgressCm:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 8

    const-wide/16 v4, 0x0

    add-long/2addr v4, p2

    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->sessionId:B

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v4, 0x2

    add-long/2addr v4, p2

    iget-short v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->ttlSec:S

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt16(JS)V

    const-wide/16 v4, 0x4

    add-long/2addr v4, p2

    iget-short v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt16(JS)V

    const-wide/16 v4, 0x6

    add-long/2addr v4, p2

    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryCount:B

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v4, 0x8

    add-long/2addr v4, p2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x8

    add-long/2addr v4, p2

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    mul-int/lit8 v3, v0, 0x1

    int-to-long v4, v3

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x8

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v4, 0x18

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v4, 0x20

    add-long/2addr v4, p2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x20

    add-long/2addr v4, p2

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    mul-int/lit8 v3, v0, 0x1

    int-to-long v4, v3

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x20

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v4, 0x30

    add-long/2addr v4, p2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x30

    add-long/2addr v4, p2

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_2

    mul-int/lit8 v3, v0, 0x1

    int-to-long v4, v3

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v4, 0x30

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v4, 0x40

    add-long/2addr v4, p2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x40

    add-long/2addr v4, p2

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_3

    mul-int/lit8 v3, v0, 0x1

    int-to-long v4, v3

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const-wide/16 v4, 0x40

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v4, 0x50

    add-long/2addr v4, p2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x50

    add-long/2addr v4, p2

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_4

    mul-int/lit8 v3, v0, 0x1

    int-to-long v4, v3

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    const-wide/16 v4, 0x50

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v4, 0x60

    add-long/2addr v4, p2

    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v4, 0x61

    add-long/2addr v4, p2

    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v4, 0x62

    add-long/2addr v4, p2

    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v4, 0x63

    add-long/2addr v4, p2

    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    const-wide/16 v4, 0x68

    add-long/2addr v4, p2

    invoke-virtual {v3, p1, v4, v5}, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v4, 0xa0

    add-long/2addr v4, p2

    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingRequired:Z

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v4, 0xa4

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingIntervalMsec:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xa8

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->configRangingIndications:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xac

    add-long/2addr v4, p2

    iget-short v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceIngressCm:S

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt16(JS)V

    const-wide/16 v4, 0xae

    add-long/2addr v4, p2

    iget-short v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceEgressCm:S

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt16(JS)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 4

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xb0

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
