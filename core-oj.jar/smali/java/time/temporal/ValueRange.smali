.class public final Ljava/time/temporal/ValueRange;
.super Ljava/lang/Object;
.source "ValueRange.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x658e56a90d32a548L


# instance fields
.field private final maxLargest:J

.field private final maxSmallest:J

.field private final minLargest:J

.field private final minSmallest:J


# direct methods
.method private constructor <init>(JJJJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    iput-wide p3, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    iput-wide p5, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    iput-wide p7, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    return-void
.end method

.method private genInvalidFieldMessage(Ljava/time/temporal/TemporalField;J)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid value for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (valid values "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid value (valid values "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static of(JJ)Ljava/time/temporal/ValueRange;
    .locals 10

    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Minimum value must be less than maximum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/time/temporal/ValueRange;

    move-wide v2, p0

    move-wide v4, p0

    move-wide v6, p2

    move-wide v8, p2

    invoke-direct/range {v1 .. v9}, Ljava/time/temporal/ValueRange;-><init>(JJJJ)V

    return-object v1
.end method

.method public static of(JJJ)Ljava/time/temporal/ValueRange;
    .locals 8

    move-wide v0, p0

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Ljava/time/temporal/ValueRange;->of(JJJJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public static of(JJJJ)Ljava/time/temporal/ValueRange;
    .locals 10

    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Smallest minimum value must be less than largest minimum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v0, p4, p6

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Smallest maximum value must be less than largest maximum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    cmp-long v0, p2, p6

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Minimum value must be less than maximum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v1, Ljava/time/temporal/ValueRange;

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Ljava/time/temporal/ValueRange;-><init>(JJJJ)V

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Smallest minimum value must be less than largest minimum value"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Smallest maximum value must be less than largest maximum value"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Minimum value must be less than maximum value"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public checkValidIntValue(JLjava/time/temporal/TemporalField;)I
    .locals 3

    invoke-virtual {p0, p1, p2}, Ljava/time/temporal/ValueRange;->isValidIntValue(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/time/DateTimeException;

    invoke-direct {p0, p3, p1, p2}, Ljava/time/temporal/ValueRange;->genInvalidFieldMessage(Ljava/time/temporal/TemporalField;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    long-to-int v0, p1

    return v0
.end method

.method public checkValidValue(JLjava/time/temporal/TemporalField;)J
    .locals 3

    invoke-virtual {p0, p1, p2}, Ljava/time/temporal/ValueRange;->isValidValue(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/time/DateTimeException;

    invoke-direct {p0, p3, p1, p2}, Ljava/time/temporal/ValueRange;->genInvalidFieldMessage(Ljava/time/temporal/TemporalField;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-wide p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Ljava/time/temporal/ValueRange;

    if-eqz v3, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ValueRange;

    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    iget-wide v6, v0, Ljava/time/temporal/ValueRange;->minSmallest:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    iget-wide v6, v0, Ljava/time/temporal/ValueRange;->minLargest:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    iget-wide v6, v0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    iget-wide v6, v0, Ljava/time/temporal/ValueRange;->maxLargest:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    return v2
.end method

.method public getLargestMinimum()J
    .locals 2

    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    return-wide v0
.end method

.method public getMaximum()J
    .locals 2

    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    return-wide v0
.end method

.method public getMinimum()J
    .locals 2

    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    return-wide v0
.end method

.method public getSmallestMaximum()J
    .locals 2

    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 12

    const-wide/16 v10, 0x30

    const-wide/16 v8, 0x20

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    const-wide/16 v6, 0x10

    add-long/2addr v4, v6

    long-to-int v4, v4

    shl-long/2addr v2, v4

    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    add-long/2addr v4, v10

    long-to-int v4, v4

    shr-long/2addr v2, v4

    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    add-long/2addr v4, v8

    long-to-int v4, v4

    shl-long/2addr v2, v4

    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    add-long/2addr v4, v8

    long-to-int v4, v4

    shr-long/2addr v2, v4

    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    add-long/2addr v4, v10

    long-to-int v4, v4

    shl-long/2addr v2, v4

    const/16 v4, 0x10

    shr-long v0, v2, v4

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public isFixed()Z
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isIntValue()Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v2

    const-wide/32 v4, -0x80000000

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isValidIntValue(J)Z
    .locals 1

    invoke-virtual {p0}, Ljava/time/temporal/ValueRange;->isIntValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/time/temporal/ValueRange;->isValidValue(J)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidValue(J)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/16 v6, 0x2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    iget-wide v4, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
