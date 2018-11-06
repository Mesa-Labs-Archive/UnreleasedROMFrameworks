.class public final Ljava/time/Period;
.super Ljava/lang/Object;
.source "Period.java"

# interfaces
.implements Ljava/time/chrono/ChronoPeriod;
.implements Ljava/io/Serializable;


# static fields
.field private static final PATTERN:Ljava/util/regex/Pattern;

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

.field public static final ZERO:Ljava/time/Period;

.field private static final serialVersionUID:J = -0xcbe97ad039fbcL


# instance fields
.field private final days:I

.field private final months:I

.field private final years:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    new-instance v0, Ljava/time/Period;

    invoke-direct {v0, v2, v2, v2}, Ljava/time/Period;-><init>(III)V

    sput-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    const-string/jumbo v0, "([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?"

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/time/Period;->PATTERN:Ljava/util/regex/Pattern;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljava/time/Period;->SUPPORTED_UNITS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava/time/Period;->years:I

    iput p2, p0, Ljava/time/Period;->months:I

    iput p3, p0, Ljava/time/Period;->days:I

    return-void
.end method

.method public static between(Ljava/time/LocalDate;Ljava/time/LocalDate;)Ljava/time/Period;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method private static create(III)Ljava/time/Period;
    .locals 1

    or-int v0, p0, p1

    or-int/2addr v0, p2

    if-nez v0, :cond_0

    sget-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    return-object v0

    :cond_0
    new-instance v0, Ljava/time/Period;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/Period;-><init>(III)V

    return-object v0
.end method

.method public static from(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;
    .locals 10

    instance-of v7, p0, Ljava/time/Period;

    if-eqz v7, :cond_0

    check-cast p0, Ljava/time/Period;

    return-object p0

    :cond_0
    instance-of v7, p0, Ljava/time/chrono/ChronoPeriod;

    if-eqz v7, :cond_1

    sget-object v8, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-object v7, p0

    check-cast v7, Ljava/time/chrono/ChronoPeriod;

    invoke-interface {v7}, Ljava/time/chrono/ChronoPeriod;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/time/DateTimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Period requires ISO chronology: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    const-string/jumbo v7, "amount"

    invoke-static {p0, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/time/temporal/TemporalAmount;->getUnits()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/temporal/TemporalUnit;

    invoke-interface {p0, v2}, Ljava/time/temporal/TemporalAmount;->get(Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v4

    sget-object v7, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne v2, v7, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Math;->toIntExact(J)I

    move-result v6

    goto :goto_0

    :cond_2
    sget-object v7, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne v2, v7, :cond_3

    invoke-static {v4, v5}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    goto :goto_0

    :cond_3
    sget-object v7, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    if-ne v2, v7, :cond_4

    invoke-static {v4, v5}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    goto :goto_0

    :cond_4
    new-instance v7, Ljava/time/DateTimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unit must be Years, Months or Days, but was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_5
    invoke-static {v6, v1, v0}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v7

    return-object v7
.end method

.method public static of(III)Ljava/time/Period;
    .locals 1

    invoke-static {p0, p1, p2}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static ofDays(I)Ljava/time/Period;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, p0}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static ofMonths(I)Ljava/time/Period;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, v0}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static ofWeeks(I)Ljava/time/Period;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x7

    invoke-static {p0, v0}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v0

    invoke-static {v1, v1, v0}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static ofYears(I)Ljava/time/Period;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/Period;
    .locals 14

    const/4 v13, 0x0

    const-string/jumbo v11, "text"

    invoke-static {p0, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v11, Ljava/time/Period;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v11, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_3

    const-string/jumbo v11, "-"

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v6, -0x1

    :goto_0
    const/4 v11, 0x2

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x4

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x5

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-nez v9, :cond_0

    if-eqz v4, :cond_2

    :cond_0
    :try_start_0
    invoke-static {p0, v9, v6}, Ljava/time/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v10

    invoke-static {p0, v4, v6}, Ljava/time/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v5

    invoke-static {p0, v7, v6}, Ljava/time/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v8

    invoke-static {p0, v0, v6}, Ljava/time/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v1

    const/4 v11, 0x7

    invoke-static {v8, v11}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v11

    invoke-static {v1, v11}, Ljava/lang/Math;->addExact(II)I

    move-result v1

    invoke-static {v10, v5, v1}, Ljava/time/Period;->create(III)Ljava/time/Period;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    return-object v11

    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_0

    if-nez v7, :cond_0

    :cond_3
    new-instance v11, Ljava/time/format/DateTimeParseException;

    const-string/jumbo v12, "Text cannot be parsed to a Period"

    invoke-direct {v11, v12, p0, v13}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v11

    :catch_0
    move-exception v2

    new-instance v11, Ljava/time/format/DateTimeParseException;

    const-string/jumbo v12, "Text cannot be parsed to a Period"

    invoke-direct {v11, v12, p0, v13, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V

    throw v11
.end method

.method private static parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return v4

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :try_start_0
    invoke-static {v1, p2}, Ljava/lang/Math;->multiplyExact(II)I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/time/format/DateTimeParseException;

    const-string/jumbo v3, "Text cannot be parsed to a Period"

    invoke-direct {v2, v3, p0, v4, v0}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V

    throw v2
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/Period;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-static {v2, v1, v0}, Ljava/time/Period;->of(III)Ljava/time/Period;

    move-result-object v3

    return-object v3
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

    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v1, v0}, Ljava/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Chronology mismatch, expected: ISO, actual: "

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

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/time/Ser;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 5

    invoke-direct {p0, p1}, Ljava/time/Period;->validateChrono(Ljava/time/temporal/TemporalAccessor;)V

    iget v2, p0, Ljava/time/Period;->months:I

    if-nez v2, :cond_2

    iget v2, p0, Ljava/time/Period;->years:I

    if-eqz v2, :cond_0

    iget v2, p0, Ljava/time/Period;->years:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    :cond_0
    :goto_0
    iget v2, p0, Ljava/time/Period;->days:I

    if-eqz v2, :cond_1

    iget v2, p0, Ljava/time/Period;->days:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    invoke-virtual {p0}, Ljava/time/Period;->toTotalMonths()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Ljava/time/Period;

    if-eqz v3, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/time/Period;

    iget v3, p0, Ljava/time/Period;->years:I

    iget v4, v0, Ljava/time/Period;->years:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Ljava/time/Period;->months:I

    iget v4, v0, Ljava/time/Period;->months:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Ljava/time/Period;->days:I

    iget v4, v0, Ljava/time/Period;->days:I

    if-ne v3, v4, :cond_1

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

.method public get(Ljava/time/temporal/TemporalUnit;)J
    .locals 3

    sget-object v0, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/time/Period;->getYears()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ljava/time/Period;->getMonths()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_1
    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Ljava/time/Period;->getDays()I

    move-result v0

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

.method public bridge synthetic getChronology()Ljava/time/chrono/Chronology;
    .locals 1

    invoke-virtual {p0}, Ljava/time/Period;->getChronology()Ljava/time/chrono/IsoChronology;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Ljava/time/chrono/IsoChronology;
    .locals 1

    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    return-object v0
.end method

.method public getDays()I
    .locals 1

    iget v0, p0, Ljava/time/Period;->days:I

    return v0
.end method

.method public getMonths()I
    .locals 1

    iget v0, p0, Ljava/time/Period;->months:I

    return v0
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

    sget-object v0, Ljava/time/Period;->SUPPORTED_UNITS:Ljava/util/List;

    return-object v0
.end method

.method public getYears()I
    .locals 1

    iget v0, p0, Ljava/time/Period;->years:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Ljava/time/Period;->years:I

    iget v1, p0, Ljava/time/Period;->months:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/time/Period;->days:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isNegative()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Ljava/time/Period;->years:I

    if-ltz v2, :cond_0

    iget v2, p0, Ljava/time/Period;->months:I

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Ljava/time/Period;->days:I

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isZero()Z
    .locals 1

    sget-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;
    .locals 5

    invoke-static {p1}, Ljava/time/Period;->from(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;

    move-result-object v0

    iget v1, p0, Ljava/time/Period;->years:I

    iget v2, v0, Ljava/time/Period;->years:I

    invoke-static {v1, v2}, Ljava/lang/Math;->subtractExact(II)I

    move-result v1

    iget v2, p0, Ljava/time/Period;->months:I

    iget v3, v0, Ljava/time/Period;->months:I

    invoke-static {v2, v3}, Ljava/lang/Math;->subtractExact(II)I

    move-result v2

    iget v3, p0, Ljava/time/Period;->days:I

    iget v4, v0, Ljava/time/Period;->days:I

    invoke-static {v3, v4}, Ljava/lang/Math;->subtractExact(II)I

    move-result v3

    invoke-static {v1, v2, v3}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriod;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/Period;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public minusDays(J)Ljava/time/Period;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Period;->plusDays(J)Ljava/time/Period;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/Period;->plusDays(J)Ljava/time/Period;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Period;->plusDays(J)Ljava/time/Period;

    move-result-object v0

    goto :goto_0
.end method

.method public minusMonths(J)Ljava/time/Period;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Period;->plusMonths(J)Ljava/time/Period;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/Period;->plusMonths(J)Ljava/time/Period;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Period;->plusMonths(J)Ljava/time/Period;

    move-result-object v0

    goto :goto_0
.end method

.method public minusYears(J)Ljava/time/Period;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Period;->plusYears(J)Ljava/time/Period;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/Period;->plusYears(J)Ljava/time/Period;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Period;->plusYears(J)Ljava/time/Period;

    move-result-object v0

    goto :goto_0
.end method

.method public multipliedBy(I)Ljava/time/Period;
    .locals 3

    sget-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    iget v0, p0, Ljava/time/Period;->years:I

    invoke-static {v0, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v0

    iget v1, p0, Ljava/time/Period;->months:I

    invoke-static {v1, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v1

    iget v2, p0, Ljava/time/Period;->days:I

    invoke-static {v2, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic multipliedBy(I)Ljava/time/chrono/ChronoPeriod;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/Period;->multipliedBy(I)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public negated()Ljava/time/Period;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/time/Period;->multipliedBy(I)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic negated()Ljava/time/chrono/ChronoPeriod;
    .locals 1

    invoke-virtual {p0}, Ljava/time/Period;->negated()Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public normalized()Ljava/time/Period;
    .locals 8

    const-wide/16 v6, 0xc

    invoke-virtual {p0}, Ljava/time/Period;->toTotalMonths()J

    move-result-wide v4

    div-long v2, v4, v6

    rem-long v6, v4, v6

    long-to-int v0, v6

    iget v1, p0, Ljava/time/Period;->years:I

    int-to-long v6, v1

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    iget v1, p0, Ljava/time/Period;->months:I

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    iget v6, p0, Ljava/time/Period;->days:I

    invoke-static {v1, v0, v6}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic normalized()Ljava/time/chrono/ChronoPeriod;
    .locals 1

    invoke-virtual {p0}, Ljava/time/Period;->normalized()Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;
    .locals 5

    invoke-static {p1}, Ljava/time/Period;->from(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;

    move-result-object v0

    iget v1, p0, Ljava/time/Period;->years:I

    iget v2, v0, Ljava/time/Period;->years:I

    invoke-static {v1, v2}, Ljava/lang/Math;->addExact(II)I

    move-result v1

    iget v2, p0, Ljava/time/Period;->months:I

    iget v3, v0, Ljava/time/Period;->months:I

    invoke-static {v2, v3}, Ljava/lang/Math;->addExact(II)I

    move-result v2

    iget v3, p0, Ljava/time/Period;->days:I

    iget v4, v0, Ljava/time/Period;->days:I

    invoke-static {v3, v4}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    invoke-static {v1, v2, v3}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriod;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/Period;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public plusDays(J)Ljava/time/Period;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Ljava/time/Period;->years:I

    iget v1, p0, Ljava/time/Period;->months:I

    iget v2, p0, Ljava/time/Period;->days:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toIntExact(J)I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public plusMonths(J)Ljava/time/Period;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Ljava/time/Period;->years:I

    iget v1, p0, Ljava/time/Period;->months:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    iget v2, p0, Ljava/time/Period;->days:I

    invoke-static {v0, v1, v2}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public plusYears(J)Ljava/time/Period;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Ljava/time/Period;->years:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    iget v1, p0, Ljava/time/Period;->months:I

    iget v2, p0, Ljava/time/Period;->days:I

    invoke-static {v0, v1, v2}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 5

    invoke-direct {p0, p1}, Ljava/time/Period;->validateChrono(Ljava/time/temporal/TemporalAccessor;)V

    iget v2, p0, Ljava/time/Period;->months:I

    if-nez v2, :cond_2

    iget v2, p0, Ljava/time/Period;->years:I

    if-eqz v2, :cond_0

    iget v2, p0, Ljava/time/Period;->years:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    :cond_0
    :goto_0
    iget v2, p0, Ljava/time/Period;->days:I

    if-eqz v2, :cond_1

    iget v2, p0, Ljava/time/Period;->days:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    invoke-virtual {p0}, Ljava/time/Period;->toTotalMonths()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    sget-object v1, Ljava/time/Period;->ZERO:Ljava/time/Period;

    if-ne p0, v1, :cond_0

    const-string/jumbo v1, "P0D"

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/time/Period;->years:I

    if-eqz v1, :cond_1

    iget v1, p0, Ljava/time/Period;->years:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Ljava/time/Period;->months:I

    if-eqz v1, :cond_2

    iget v1, p0, Ljava/time/Period;->months:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Ljava/time/Period;->days:I

    if-eqz v1, :cond_3

    iget v1, p0, Ljava/time/Period;->days:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toTotalMonths()J
    .locals 4

    iget v0, p0, Ljava/time/Period;->years:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget v2, p0, Ljava/time/Period;->months:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public withDays(I)Ljava/time/Period;
    .locals 2

    iget v0, p0, Ljava/time/Period;->days:I

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Ljava/time/Period;->years:I

    iget v1, p0, Ljava/time/Period;->months:I

    invoke-static {v0, v1, p1}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public withMonths(I)Ljava/time/Period;
    .locals 2

    iget v0, p0, Ljava/time/Period;->months:I

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Ljava/time/Period;->years:I

    iget v1, p0, Ljava/time/Period;->days:I

    invoke-static {v0, p1, v1}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public withYears(I)Ljava/time/Period;
    .locals 2

    iget v0, p0, Ljava/time/Period;->years:I

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Ljava/time/Period;->months:I

    iget v1, p0, Ljava/time/Period;->days:I

    invoke-static {p1, v0, v1}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ljava/time/Period;->years:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Ljava/time/Period;->months:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Ljava/time/Period;->days:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method
