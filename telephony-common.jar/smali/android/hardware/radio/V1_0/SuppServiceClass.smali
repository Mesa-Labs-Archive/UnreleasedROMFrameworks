.class public final Landroid/hardware/radio/V1_0/SuppServiceClass;
.super Ljava/lang/Object;
.source "SuppServiceClass.java"


# static fields
.field public static final DATA:I = 0x2

.field public static final DATA_ASYNC:I = 0x20

.field public static final DATA_SYNC:I = 0x10

.field public static final FAX:I = 0x4

.field public static final MAX:I = 0x80

.field public static final NONE:I = 0x0

.field public static final PACKET:I = 0x40

.field public static final PAD:I = 0x80

.field public static final SMS:I = 0x8

.field public static final VOICE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x80

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    and-int/lit8 v2, p0, 0x0

    if-nez v2, :cond_0

    const-string/jumbo v2, "NONE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :cond_0
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "VOICE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x1

    :cond_1
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "DATA"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x2

    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    const-string/jumbo v2, "FAX"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x4

    :cond_3
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    const-string/jumbo v2, "SMS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x8

    :cond_4
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    const-string/jumbo v2, "DATA_SYNC"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x10

    :cond_5
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    const-string/jumbo v2, "DATA_ASYNC"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x20

    :cond_6
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    const-string/jumbo v2, "PACKET"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x40

    :cond_7
    and-int/lit16 v2, p0, 0x80

    if-ne v2, v4, :cond_8

    const-string/jumbo v2, "PAD"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v0, v0, 0x80

    :cond_8
    and-int/lit16 v2, p0, 0x80

    if-ne v2, v4, :cond_9

    const-string/jumbo v2, "MAX"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v0, v0, 0x80

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

    const/16 v1, 0x80

    if-nez p0, :cond_0

    const-string/jumbo v0, "NONE"

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string/jumbo v0, "VOICE"

    return-object v0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string/jumbo v0, "DATA"

    return-object v0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string/jumbo v0, "FAX"

    return-object v0

    :cond_3
    const/16 v0, 0x8

    if-ne p0, v0, :cond_4

    const-string/jumbo v0, "SMS"

    return-object v0

    :cond_4
    const/16 v0, 0x10

    if-ne p0, v0, :cond_5

    const-string/jumbo v0, "DATA_SYNC"

    return-object v0

    :cond_5
    const/16 v0, 0x20

    if-ne p0, v0, :cond_6

    const-string/jumbo v0, "DATA_ASYNC"

    return-object v0

    :cond_6
    const/16 v0, 0x40

    if-ne p0, v0, :cond_7

    const-string/jumbo v0, "PACKET"

    return-object v0

    :cond_7
    if-ne p0, v1, :cond_8

    const-string/jumbo v0, "PAD"

    return-object v0

    :cond_8
    if-ne p0, v1, :cond_9

    const-string/jumbo v0, "MAX"

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
