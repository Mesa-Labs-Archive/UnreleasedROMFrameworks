.class public final Ljava/time/zone/ZoneOffsetTransition;
.super Ljava/lang/Object;
.source "ZoneOffsetTransition.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/time/zone/ZoneOffsetTransition;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x60654e82b3c68362L


# instance fields
.field private final offsetAfter:Ljava/time/ZoneOffset;

.field private final offsetBefore:Ljava/time/ZoneOffset;

.field private final transition:Ljava/time/LocalDateTime;


# direct methods
.method constructor <init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v0

    iput-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    iput-object p3, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    iput-object p4, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    return-void
.end method

.method constructor <init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    iput-object p2, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    iput-object p3, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    return-void
.end method

.method private getDurationSeconds()I
    .locals 2

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneOffsetTransition;
    .locals 2

    const-string/jumbo v0, "transition"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "offsetBefore"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "offsetAfter"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Offsets must not be equal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Nano-of-second must be zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/time/zone/ZoneOffsetTransition;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/zone/ZoneOffsetTransition;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/zone/ZoneOffsetTransition;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Ljava/time/zone/Ser;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v2

    invoke-static {p0}, Ljava/time/zone/Ser;->readOffset(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-static {p0}, Ljava/time/zone/Ser;->readOffset(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Offsets must not be equal"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    new-instance v4, Ljava/time/zone/ZoneOffsetTransition;

    invoke-direct {v4, v2, v3, v1, v0}, Ljava/time/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v4
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/time/zone/Ser;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Ljava/time/zone/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/time/zone/ZoneOffsetTransition;

    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneOffsetTransition;->compareTo(Ljava/time/zone/ZoneOffsetTransition;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/time/zone/ZoneOffsetTransition;)I
    .locals 2

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p1}, Ljava/time/zone/ZoneOffsetTransition;->getInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Ljava/time/zone/ZoneOffsetTransition;

    if-eqz v2, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/time/zone/ZoneOffsetTransition;

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    iget-object v3, v0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    iget-object v3, v0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    iget-object v2, v0, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public getDateTimeAfter()Ljava/time/LocalDateTime;
    .locals 4

    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    invoke-direct {p0}, Ljava/time/zone/ZoneOffsetTransition;->getDurationSeconds()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public getDateTimeBefore()Ljava/time/LocalDateTime;
    .locals 1

    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method public getDuration()Ljava/time/Duration;
    .locals 2

    invoke-direct {p0}, Ljava/time/zone/ZoneOffsetTransition;->getDurationSeconds()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getInstant()Ljava/time/Instant;
    .locals 2

    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public getOffsetAfter()Ljava/time/ZoneOffset;
    .locals 1

    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public getOffsetBefore()Ljava/time/ZoneOffset;
    .locals 1

    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method getValidOffsets()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/ZoneOffset;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/time/ZoneOffset;

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isGap()Z
    .locals 2

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverlap()Z
    .locals 2

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidOffset(Ljava/time/ZoneOffset;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toEpochSecond()J
    .locals 2

    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Transition["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Gap"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "Overlap"

    goto :goto_0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Ljava/time/zone/Ser;->writeEpochSec(JLjava/io/DataOutput;)V

    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-static {v0, p1}, Ljava/time/zone/Ser;->writeOffset(Ljava/time/ZoneOffset;Ljava/io/DataOutput;)V

    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-static {v0, p1}, Ljava/time/zone/Ser;->writeOffset(Ljava/time/ZoneOffset;Ljava/io/DataOutput;)V

    return-void
.end method
