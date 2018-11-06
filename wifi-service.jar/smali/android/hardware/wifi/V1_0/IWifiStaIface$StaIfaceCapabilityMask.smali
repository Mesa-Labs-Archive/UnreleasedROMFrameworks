.class public final Landroid/hardware/wifi/V1_0/IWifiStaIface$StaIfaceCapabilityMask;
.super Ljava/lang/Object;
.source "IWifiStaIface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/V1_0/IWifiStaIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StaIfaceCapabilityMask"
.end annotation


# static fields
.field public static final APF:I = 0x1

.field public static final BACKGROUND_SCAN:I = 0x2

.field public static final CONTROL_ROAMING:I = 0x10

.field public static final DEBUG_PACKET_FATE:I = 0x4000

.field public static final HOTSPOT:I = 0x100

.field public static final KEEP_ALIVE:I = 0x2000

.field public static final LINK_LAYER_STATS:I = 0x4

.field public static final ND_OFFLOAD:I = 0x1000

.field public static final PNO:I = 0x200

.field public static final PROBE_IE_WHITELIST:I = 0x20

.field public static final RSSI_MONITOR:I = 0x8

.field public static final SCAN_RAND:I = 0x40

.field public static final STA_5G:I = 0x80

.field public static final TDLS:I = 0x400

.field public static final TDLS_OFFCHANNEL:I = 0x800


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "APF"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "BACKGROUND_SCAN"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x2

    :cond_1
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "LINK_LAYER_STATS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x4

    :cond_2
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    const-string/jumbo v2, "RSSI_MONITOR"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x8

    :cond_3
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    const-string/jumbo v2, "CONTROL_ROAMING"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x10

    :cond_4
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    const-string/jumbo v2, "PROBE_IE_WHITELIST"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x20

    :cond_5
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    const-string/jumbo v2, "SCAN_RAND"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x40

    :cond_6
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    const-string/jumbo v2, "STA_5G"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v0, v0, 0x80

    :cond_7
    and-int/lit16 v2, p0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_8

    const-string/jumbo v2, "HOTSPOT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v0, v0, 0x100

    :cond_8
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_9

    const-string/jumbo v2, "PNO"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v0, v0, 0x200

    :cond_9
    and-int/lit16 v2, p0, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_a

    const-string/jumbo v2, "TDLS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v0, v0, 0x400

    :cond_a
    and-int/lit16 v2, p0, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_b

    const-string/jumbo v2, "TDLS_OFFCHANNEL"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v0, v0, 0x800

    :cond_b
    and-int/lit16 v2, p0, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_c

    const-string/jumbo v2, "ND_OFFLOAD"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v0, v0, 0x1000

    :cond_c
    and-int/lit16 v2, p0, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_d

    const-string/jumbo v2, "KEEP_ALIVE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v0, v0, 0x2000

    :cond_d
    and-int/lit16 v2, p0, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_e

    const-string/jumbo v2, "DEBUG_PACKET_FATE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v0, v0, 0x4000

    :cond_e
    if-eq p0, v0, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v0

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "APF"

    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string/jumbo v0, "BACKGROUND_SCAN"

    return-object v0

    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    const-string/jumbo v0, "LINK_LAYER_STATS"

    return-object v0

    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    const-string/jumbo v0, "RSSI_MONITOR"

    return-object v0

    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    const-string/jumbo v0, "CONTROL_ROAMING"

    return-object v0

    :cond_4
    const/16 v0, 0x20

    if-ne p0, v0, :cond_5

    const-string/jumbo v0, "PROBE_IE_WHITELIST"

    return-object v0

    :cond_5
    const/16 v0, 0x40

    if-ne p0, v0, :cond_6

    const-string/jumbo v0, "SCAN_RAND"

    return-object v0

    :cond_6
    const/16 v0, 0x80

    if-ne p0, v0, :cond_7

    const-string/jumbo v0, "STA_5G"

    return-object v0

    :cond_7
    const/16 v0, 0x100

    if-ne p0, v0, :cond_8

    const-string/jumbo v0, "HOTSPOT"

    return-object v0

    :cond_8
    const/16 v0, 0x200

    if-ne p0, v0, :cond_9

    const-string/jumbo v0, "PNO"

    return-object v0

    :cond_9
    const/16 v0, 0x400

    if-ne p0, v0, :cond_a

    const-string/jumbo v0, "TDLS"

    return-object v0

    :cond_a
    const/16 v0, 0x800

    if-ne p0, v0, :cond_b

    const-string/jumbo v0, "TDLS_OFFCHANNEL"

    return-object v0

    :cond_b
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_c

    const-string/jumbo v0, "ND_OFFLOAD"

    return-object v0

    :cond_c
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_d

    const-string/jumbo v0, "KEEP_ALIVE"

    return-object v0

    :cond_d
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_e

    const-string/jumbo v0, "DEBUG_PACKET_FATE"

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
