.class public final Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatusCode;
.super Ljava/lang/Object;
.source "SupplicantStatusCode.java"


# static fields
.field public static final FAILURE_ARGS_INVALID:I = 0x2

.field public static final FAILURE_IFACE_DISABLED:I = 0x6

.field public static final FAILURE_IFACE_EXISTS:I = 0x5

.field public static final FAILURE_IFACE_INVALID:I = 0x3

.field public static final FAILURE_IFACE_NOT_DISCONNECTED:I = 0x7

.field public static final FAILURE_IFACE_UNKNOWN:I = 0x4

.field public static final FAILURE_NETWORK_INVALID:I = 0x8

.field public static final FAILURE_NETWORK_UNKNOWN:I = 0x9

.field public static final FAILURE_UNKNOWN:I = 0x1

.field public static final SUCCESS:I


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

    and-int/lit8 v2, p0, 0x0

    if-nez v2, :cond_0

    const-string/jumbo v2, "SUCCESS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :cond_0
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "FAILURE_UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x1

    :cond_1
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "FAILURE_ARGS_INVALID"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x2

    :cond_2
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    const-string/jumbo v2, "FAILURE_IFACE_INVALID"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x3

    :cond_3
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    const-string/jumbo v2, "FAILURE_IFACE_UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x4

    :cond_4
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    const-string/jumbo v2, "FAILURE_IFACE_EXISTS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x5

    :cond_5
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    const-string/jumbo v2, "FAILURE_IFACE_DISABLED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x6

    :cond_6
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    const-string/jumbo v2, "FAILURE_IFACE_NOT_DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x7

    :cond_7
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    const-string/jumbo v2, "FAILURE_NETWORK_INVALID"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x8

    :cond_8
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_9

    const-string/jumbo v2, "FAILURE_NETWORK_UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x9

    :cond_9
    if-eq p0, v0, :cond_a

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

    :cond_a
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string/jumbo v0, "SUCCESS"

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string/jumbo v0, "FAILURE_UNKNOWN"

    return-object v0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string/jumbo v0, "FAILURE_ARGS_INVALID"

    return-object v0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string/jumbo v0, "FAILURE_IFACE_INVALID"

    return-object v0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string/jumbo v0, "FAILURE_IFACE_UNKNOWN"

    return-object v0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const-string/jumbo v0, "FAILURE_IFACE_EXISTS"

    return-object v0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    const-string/jumbo v0, "FAILURE_IFACE_DISABLED"

    return-object v0

    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    const-string/jumbo v0, "FAILURE_IFACE_NOT_DISCONNECTED"

    return-object v0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    const-string/jumbo v0, "FAILURE_NETWORK_INVALID"

    return-object v0

    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    const-string/jumbo v0, "FAILURE_NETWORK_UNKNOWN"

    return-object v0

    :cond_9
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
