.class final Ljava/time/chrono/ChronoPeriodImpl;
.super Ljava/lang/Object;
.source "ChronoPeriodImpl.java"

# interfaces
.implements Ljava/time/chrono/ChronoPeriod;
.implements Ljava/io/Serializable;


# static fields
.field private static final SUPPORTED_UNITS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0xd5c8c11b1L


# instance fields
.field private final chrono:Ljava/time/chrono/Chronology;

.field final days:I

.field final months:I

.field final years:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljava/time/chrono/ChronoPeriodImpl;->SUPPORTED_UNITS:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/time/chrono/Chronology;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "chrono"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    iput p2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    iput p3, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    iput p4, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    return-void
.end method

.method private monthRange()J
    .locals 6

    iget-object v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/time/chrono/Chronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->isFixed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->isIntValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/chrono/ChronoPeriodImpl;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/time/chrono/Chronology;->of(Ljava/lang/String;)Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    new-instance v4, Ljava/time/chrono/ChronoPeriodImpl;

    invoke-direct {v4, v0, v3, v2, v1}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/Chronology;III)V

    return-object v4
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateAmount(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriodImpl;
    .locals 4

    const-string/jumbo v1, "amount"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v1, p1, Ljava/time/chrono/ChronoPeriodImpl;

    if-nez v1, :cond_0

    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to obtain ChronoPeriod from TemporalAmount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/ChronoPeriodImpl;

    iget-object v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-virtual {v0}, Ljava/time/chrono/ChronoPeriodImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Chronology mismatch, expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {v3}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/time/chrono/ChronoPeriodImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v3

    invoke-interface {v3}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v0
.end method

.method private validateChrono(Ljava/time/temporal/TemporalAccessor;)V
    .locals 4

    const-string/jumbo v1, "temporal"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {v1, v0}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Chronology mismatch, expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {v3}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method


# virtual methods
.method public addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 6

    invoke-direct {p0, p1}, Ljava/time/chrono/ChronoPeriodImpl;->validateChrono(Ljava/time/temporal/TemporalAccessor;)V

    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-nez v2, :cond_2

    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v2, :cond_0

    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    :cond_0
    :goto_0
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-eqz v2, :cond_1

    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    invoke-direct {p0}, Ljava/time/chrono/ChronoPeriodImpl;->monthRange()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    iget v4, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v2, :cond_4

    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    :cond_4
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Ljava/time/chrono/ChronoPeriodImpl;

    if-eqz v2, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/time/chrono/ChronoPeriodImpl;

    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    iget v3, v0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    iget v3, v0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    iget v3, v0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    iget-object v2, v0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {v1, v2}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public get(Ljava/time/temporal/TemporalUnit;)J
    .locals 3

    sget-object v0, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_0

    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_1

    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v0, v0

    return-wide v0

    :cond_1
    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_2

    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    int-to-long v0, v0

    return-wide v0

    :cond_2
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChronology()Ljava/time/chrono/Chronology;
    .locals 1

    iget-object v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    return-object v0
.end method

.method public getUnits()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/time/chrono/ChronoPeriodImpl;->SUPPORTED_UNITS:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {v1}, Ljava/time/chrono/Chronology;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isNegative()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-ltz v2, :cond_0

    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isZero()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-nez v1, :cond_0

    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-nez v1, :cond_0

    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriod;
    .locals 7

    invoke-direct {p0, p1}, Ljava/time/chrono/ChronoPeriodImpl;->validateAmount(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriodImpl;

    move-result-object v0

    new-instance v1, Ljava/time/chrono/ChronoPeriodImpl;

    iget-object v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    iget v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    iget v4, v0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    invoke-static {v3, v4}, Ljava/lang/Math;->subtractExact(II)I

    move-result v3

    iget v4, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    iget v5, v0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    invoke-static {v4, v5}, Ljava/lang/Math;->subtractExact(II)I

    move-result v4

    iget v5, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    iget v6, v0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    invoke-static {v5, v6}, Ljava/lang/Math;->subtractExact(II)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/Chronology;III)V

    return-object v1
.end method

.method public multipliedBy(I)Ljava/time/chrono/ChronoPeriod;
    .locals 5

    invoke-virtual {p0}, Ljava/time/chrono/ChronoPeriodImpl;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/time/chrono/ChronoPeriodImpl;

    iget-object v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    invoke-static {v2, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v2

    iget v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    invoke-static {v3, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v3

    iget v4, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    invoke-static {v4, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/Chronology;III)V

    return-object v0
.end method

.method public normalized()Ljava/time/chrono/ChronoPeriod;
    .locals 12

    invoke-direct {p0}, Ljava/time/chrono/ChronoPeriodImpl;->monthRange()J

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmp-long v3, v0, v8

    if-lez v3, :cond_1

    iget v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v8, v3

    mul-long/2addr v8, v0

    iget v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v10, v3

    add-long v6, v8, v10

    div-long v4, v6, v0

    rem-long v8, v6, v0

    long-to-int v2, v8

    iget v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v8, v3

    cmp-long v3, v4, v8

    if-nez v3, :cond_0

    iget v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-ne v2, v3, :cond_0

    return-object p0

    :cond_0
    new-instance v3, Ljava/time/chrono/ChronoPeriodImpl;

    iget-object v8, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-static {v4, v5}, Ljava/lang/Math;->toIntExact(J)I

    move-result v9

    iget v10, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    invoke-direct {v3, v8, v9, v2, v10}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/Chronology;III)V

    return-object v3

    :cond_1
    return-object p0
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriod;
    .locals 7

    invoke-direct {p0, p1}, Ljava/time/chrono/ChronoPeriodImpl;->validateAmount(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriodImpl;

    move-result-object v0

    new-instance v1, Ljava/time/chrono/ChronoPeriodImpl;

    iget-object v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    iget v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    iget v4, v0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    invoke-static {v3, v4}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    iget v4, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    iget v5, v0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    invoke-static {v4, v5}, Ljava/lang/Math;->addExact(II)I

    move-result v4

    iget v5, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    iget v6, v0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    invoke-static {v5, v6}, Ljava/lang/Math;->addExact(II)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/Chronology;III)V

    return-object v1
.end method

.method public subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 6

    invoke-direct {p0, p1}, Ljava/time/chrono/ChronoPeriodImpl;->validateChrono(Ljava/time/temporal/TemporalAccessor;)V

    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-nez v2, :cond_2

    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v2, :cond_0

    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    :cond_0
    :goto_0
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-eqz v2, :cond_1

    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    invoke-direct {p0}, Ljava/time/chrono/ChronoPeriodImpl;->monthRange()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    iget v4, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v2, :cond_4

    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    :cond_4
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/time/chrono/ChronoPeriodImpl;->isZero()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/time/chrono/ChronoPeriodImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v2

    invoke-interface {v2}, Ljava/time/chrono/Chronology;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " P0D"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/time/chrono/ChronoPeriodImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {v1}, Ljava/time/chrono/Chronology;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v1, :cond_1

    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-eqz v1, :cond_2

    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-eqz v1, :cond_3

    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {v0}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/time/chrono/Ser;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Ljava/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method
