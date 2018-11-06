.class public final Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$WpsConfigError;
.super Ljava/lang/Object;
.source "ISupplicantStaIfaceCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WpsConfigError"
.end annotation


# static fields
.field public static final CHAN_24_NOT_SUPPORTED:S = 0x3s

.field public static final CHAN_50_NOT_SUPPORTED:S = 0x4s

.field public static final CHAN_60G_NOT_SUPPORTED:S = 0x13s

.field public static final DECRYPTION_CRC_FAILURE:S = 0x2s

.field public static final DEVICE_BUSY:S = 0xes

.field public static final DEV_PASSWORD_AUTH_FAILURE:S = 0x12s

.field public static final FAILED_DHCP_CONFIG:S = 0x9s

.field public static final IP_ADDR_CONFLICT:S = 0xas

.field public static final MSG_TIMEOUT:S = 0x10s

.field public static final MULTIPLE_PBC_DETECTED:S = 0xcs

.field public static final NETWORK_ASSOC_FAILURE:S = 0x7s

.field public static final NETWORK_AUTH_FAILURE:S = 0x6s

.field public static final NO_CONN_TO_REGISTRAR:S = 0xbs

.field public static final NO_DHCP_RESPONSE:S = 0x8s

.field public static final NO_ERROR:S = 0x0s

.field public static final OOB_IFACE_READ_ERROR:S = 0x1s

.field public static final PUBLIC_KEY_HASH_MISMATCH:S = 0x14s

.field public static final REG_SESS_TIMEOUT:S = 0x11s

.field public static final ROGUE_SUSPECTED:S = 0xds

.field public static final SETUP_LOCKED:S = 0xfs

.field public static final SIGNAL_TOO_WEAK:S = 0x5s


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(S)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    and-int/lit8 v2, p0, 0x0

    if-nez v2, :cond_0

    const-string/jumbo v2, "NO_ERROR"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-short v0, v3

    :cond_0
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "OOB_IFACE_READ_ERROR"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v0, 0x1

    int-to-short v0, v2

    :cond_1
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "DECRYPTION_CRC_FAILURE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v0, 0x2

    int-to-short v0, v2

    :cond_2
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    const-string/jumbo v2, "CHAN_24_NOT_SUPPORTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v0, 0x3

    int-to-short v0, v2

    :cond_3
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    const-string/jumbo v2, "CHAN_50_NOT_SUPPORTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v0, 0x4

    int-to-short v0, v2

    :cond_4
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    const-string/jumbo v2, "SIGNAL_TOO_WEAK"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v0, 0x5

    int-to-short v0, v2

    :cond_5
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    const-string/jumbo v2, "NETWORK_AUTH_FAILURE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v0, 0x6

    int-to-short v0, v2

    :cond_6
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    const-string/jumbo v2, "NETWORK_ASSOC_FAILURE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v0, 0x7

    int-to-short v0, v2

    :cond_7
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    const-string/jumbo v2, "NO_DHCP_RESPONSE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v0, 0x8

    int-to-short v0, v2

    :cond_8
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_9

    const-string/jumbo v2, "FAILED_DHCP_CONFIG"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v0, 0x9

    int-to-short v0, v2

    :cond_9
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_a

    const-string/jumbo v2, "IP_ADDR_CONFLICT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v0, 0xa

    int-to-short v0, v2

    :cond_a
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_b

    const-string/jumbo v2, "NO_CONN_TO_REGISTRAR"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v0, 0xb

    int-to-short v0, v2

    :cond_b
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_c

    const-string/jumbo v2, "MULTIPLE_PBC_DETECTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v0, 0xc

    int-to-short v0, v2

    :cond_c
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_d

    const-string/jumbo v2, "ROGUE_SUSPECTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v0, 0xd

    int-to-short v0, v2

    :cond_d
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_e

    const-string/jumbo v2, "DEVICE_BUSY"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v0, 0xe

    int-to-short v0, v2

    :cond_e
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_f

    const-string/jumbo v2, "SETUP_LOCKED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v0, 0xf

    int-to-short v0, v2

    :cond_f
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_10

    const-string/jumbo v2, "MSG_TIMEOUT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v0, 0x10

    int-to-short v0, v2

    :cond_10
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_11

    const-string/jumbo v2, "REG_SESS_TIMEOUT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v0, 0x11

    int-to-short v0, v2

    :cond_11
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_12

    const-string/jumbo v2, "DEV_PASSWORD_AUTH_FAILURE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v0, 0x12

    int-to-short v0, v2

    :cond_12
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_13

    const-string/jumbo v2, "CHAN_60G_NOT_SUPPORTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v0, 0x13

    int-to-short v0, v2

    :cond_13
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_14

    const-string/jumbo v2, "PUBLIC_KEY_HASH_MISMATCH"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v0, 0x14

    int-to-short v0, v2

    :cond_14
    if-eq p0, v0, :cond_15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v0

    and-int/2addr v3, p0

    int-to-short v3, v3

    invoke-static {v3}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(S)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string/jumbo v0, "NO_ERROR"

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string/jumbo v0, "OOB_IFACE_READ_ERROR"

    return-object v0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string/jumbo v0, "DECRYPTION_CRC_FAILURE"

    return-object v0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string/jumbo v0, "CHAN_24_NOT_SUPPORTED"

    return-object v0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string/jumbo v0, "CHAN_50_NOT_SUPPORTED"

    return-object v0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const-string/jumbo v0, "SIGNAL_TOO_WEAK"

    return-object v0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    const-string/jumbo v0, "NETWORK_AUTH_FAILURE"

    return-object v0

    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    const-string/jumbo v0, "NETWORK_ASSOC_FAILURE"

    return-object v0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    const-string/jumbo v0, "NO_DHCP_RESPONSE"

    return-object v0

    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    const-string/jumbo v0, "FAILED_DHCP_CONFIG"

    return-object v0

    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    const-string/jumbo v0, "IP_ADDR_CONFLICT"

    return-object v0

    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    const-string/jumbo v0, "NO_CONN_TO_REGISTRAR"

    return-object v0

    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    const-string/jumbo v0, "MULTIPLE_PBC_DETECTED"

    return-object v0

    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    const-string/jumbo v0, "ROGUE_SUSPECTED"

    return-object v0

    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    const-string/jumbo v0, "DEVICE_BUSY"

    return-object v0

    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    const-string/jumbo v0, "SETUP_LOCKED"

    return-object v0

    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    const-string/jumbo v0, "MSG_TIMEOUT"

    return-object v0

    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    const-string/jumbo v0, "REG_SESS_TIMEOUT"

    return-object v0

    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    const-string/jumbo v0, "DEV_PASSWORD_AUTH_FAILURE"

    return-object v0

    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    const-string/jumbo v0, "CHAN_60G_NOT_SUPPORTED"

    return-object v0

    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    const-string/jumbo v0, "PUBLIC_KEY_HASH_MISMATCH"

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
