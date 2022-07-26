.class public final Landroid/hardware/radio/V1_0/RadioConst;
.super Ljava/lang/Object;
.source "RadioConst.java"


# static fields
.field public static final CARD_MAX_APPS:I = 0x8

.field public static final CDMA_ALPHA_INFO_BUFFER_LENGTH:I = 0x40

.field public static final CDMA_MAX_NUMBER_OF_INFO_RECS:I = 0xa

.field public static final CDMA_NUMBER_INFO_BUFFER_LENGTH:I = 0x51

.field public static final MAX_CLIENT_ID_LENGTH:I = 0x2

.field public static final MAX_DEBUG_SOCKET_NAME_LENGTH:I = 0xc

.field public static final MAX_QEMU_PIPE_NAME_LENGTH:I = 0xb

.field public static final MAX_RILDS:I = 0x3

.field public static final MAX_SOCKET_NAME_LENGTH:I = 0x6

.field public static final MAX_UUID_LENGTH:I = 0x40

.field public static final NUM_SERVICE_CLASSES:I = 0x7

.field public static final NUM_TX_POWER_LEVELS:I = 0x5

.field public static final SS_INFO_MAX:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x40

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    and-int/lit8 v2, p0, 0x40

    if-ne v2, v4, :cond_0

    const-string/jumbo v2, "CDMA_ALPHA_INFO_BUFFER_LENGTH"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x40

    :cond_0
    and-int/lit8 v2, p0, 0x51

    const/16 v3, 0x51

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "CDMA_NUMBER_INFO_BUFFER_LENGTH"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x51

    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "MAX_RILDS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x3

    :cond_2
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    const-string/jumbo v2, "MAX_SOCKET_NAME_LENGTH"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x6

    :cond_3
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    const-string/jumbo v2, "MAX_CLIENT_ID_LENGTH"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x2

    :cond_4
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_5

    const-string/jumbo v2, "MAX_DEBUG_SOCKET_NAME_LENGTH"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0xc

    :cond_5
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_6

    const-string/jumbo v2, "MAX_QEMU_PIPE_NAME_LENGTH"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0xb

    :cond_6
    and-int/lit8 v2, p0, 0x40

    if-ne v2, v4, :cond_7

    const-string/jumbo v2, "MAX_UUID_LENGTH"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x40

    :cond_7
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    const-string/jumbo v2, "CARD_MAX_APPS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x8

    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    const-string/jumbo v2, "CDMA_MAX_NUMBER_OF_INFO_RECS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0xa

    :cond_9
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_a

    const-string/jumbo v2, "SS_INFO_MAX"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x4

    :cond_a
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_b

    const-string/jumbo v2, "NUM_SERVICE_CLASSES"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x7

    :cond_b
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_c

    const-string/jumbo v2, "NUM_TX_POWER_LEVELS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x5

    :cond_c
    if-eq p0, v0, :cond_d

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

    :cond_d
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    const/16 v1, 0x40

    if-ne p0, v1, :cond_0

    const-string/jumbo v0, "CDMA_ALPHA_INFO_BUFFER_LENGTH"

    return-object v0

    :cond_0
    const/16 v0, 0x51

    if-ne p0, v0, :cond_1

    const-string/jumbo v0, "CDMA_NUMBER_INFO_BUFFER_LENGTH"

    return-object v0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string/jumbo v0, "MAX_RILDS"

    return-object v0

    :cond_2
    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    const-string/jumbo v0, "MAX_SOCKET_NAME_LENGTH"

    return-object v0

    :cond_3
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    const-string/jumbo v0, "MAX_CLIENT_ID_LENGTH"

    return-object v0

    :cond_4
    const/16 v0, 0xc

    if-ne p0, v0, :cond_5

    const-string/jumbo v0, "MAX_DEBUG_SOCKET_NAME_LENGTH"

    return-object v0

    :cond_5
    const/16 v0, 0xb

    if-ne p0, v0, :cond_6

    const-string/jumbo v0, "MAX_QEMU_PIPE_NAME_LENGTH"

    return-object v0

    :cond_6
    if-ne p0, v1, :cond_7

    const-string/jumbo v0, "MAX_UUID_LENGTH"

    return-object v0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    const-string/jumbo v0, "CARD_MAX_APPS"

    return-object v0

    :cond_8
    const/16 v0, 0xa

    if-ne p0, v0, :cond_9

    const-string/jumbo v0, "CDMA_MAX_NUMBER_OF_INFO_RECS"

    return-object v0

    :cond_9
    const/4 v0, 0x4

    if-ne p0, v0, :cond_a

    const-string/jumbo v0, "SS_INFO_MAX"

    return-object v0

    :cond_a
    const/4 v0, 0x7

    if-ne p0, v0, :cond_b

    const-string/jumbo v0, "NUM_SERVICE_CLASSES"

    return-object v0

    :cond_b
    const/4 v0, 0x5

    if-ne p0, v0, :cond_c

    const-string/jumbo v0, "NUM_TX_POWER_LEVELS"

    return-object v0

    :cond_c
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
