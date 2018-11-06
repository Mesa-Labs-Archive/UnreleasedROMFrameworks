.class public final Ljava/time/chrono/IsoChronology;
.super Ljava/time/chrono/AbstractChronology;
.source "IsoChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Ljava/time/chrono/IsoChronology;

.field private static final serialVersionUID:J = -0x13fd57b046d9ef27L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/time/chrono/IsoChronology;

    invoke-direct {v0}, Ljava/time/chrono/IsoChronology;-><init>()V

    sput-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/time/chrono/AbstractChronology;-><init>()V

    return-void
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


# virtual methods
.method public date(III)Ljava/time/LocalDate;
    .locals 1

    invoke-static {p1, p2, p3}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public date(Ljava/time/chrono/Era;III)Ljava/time/LocalDate;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/IsoChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3, p4}, Ljava/time/chrono/IsoChronology;->date(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;
    .locals 1

    invoke-static {p1}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic date(III)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/IsoChronology;->date(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic date(Ljava/time/chrono/Era;III)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/time/chrono/IsoChronology;->date(Ljava/time/chrono/Era;III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/chrono/IsoChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public dateEpochDay(J)Ljava/time/LocalDate;
    .locals 1

    invoke-static {p1, p2}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateEpochDay(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/IsoChronology;->dateEpochDay(J)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow()Ljava/time/LocalDate;
    .locals 1

    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/IsoChronology;->dateNow(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Ljava/time/Clock;)Ljava/time/LocalDate;
    .locals 1

    const-string/jumbo v0, "clock"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/IsoChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Ljava/time/ZoneId;)Ljava/time/LocalDate;
    .locals 1

    invoke-static {p1}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/IsoChronology;->dateNow(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow()Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0}, Ljava/time/chrono/IsoChronology;->dateNow()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow(Ljava/time/Clock;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/chrono/IsoChronology;->dateNow(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/chrono/IsoChronology;->dateNow(Ljava/time/ZoneId;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public dateYearDay(II)Ljava/time/LocalDate;
    .locals 1

    invoke-static {p1, p2}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/LocalDate;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/IsoChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Ljava/time/chrono/IsoChronology;->dateYearDay(II)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/IsoChronology;->dateYearDay(II)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/IsoChronology;->dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic eraOf(I)Ljava/time/chrono/Era;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/chrono/IsoChronology;->eraOf(I)Ljava/time/chrono/IsoEra;

    move-result-object v0

    return-object v0
.end method

.method public eraOf(I)Ljava/time/chrono/IsoEra;
    .locals 1

    invoke-static {p1}, Ljava/time/chrono/IsoEra;->of(I)Ljava/time/chrono/IsoEra;

    move-result-object v0

    return-object v0
.end method

.method public eras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/chrono/Era;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/time/chrono/IsoEra;->values()[Ljava/time/chrono/IsoEra;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "iso8601"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ISO"

    return-object v0
.end method

.method public isLeapYear(J)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x3

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const-wide/16 v2, 0x64

    rem-long v2, p1, v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide/16 v2, 0x190

    rem-long v2, p1, v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;
    .locals 1

    invoke-static {p1}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/chrono/IsoChronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public period(III)Ljava/time/Period;
    .locals 1

    invoke-static {p1, p2, p3}, Ljava/time/Period;->of(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic period(III)Ljava/time/chrono/ChronoPeriod;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/IsoChronology;->period(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public prolepticYear(Ljava/time/chrono/Era;I)I
    .locals 2

    instance-of v0, p1, Ljava/time/chrono/IsoEra;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "Era must be IsoEra"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Ljava/time/chrono/IsoEra;->CE:Ljava/time/chrono/IsoEra;

    if-ne p1, v0, :cond_1

    :goto_0
    return p2

    :cond_1
    rsub-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;
    .locals 1

    invoke-virtual {p1}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/LocalDate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/LocalDate;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDate;

    return-object v0
.end method

.method public bridge synthetic resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/IsoChronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method resolveProlepticMonth(Ljava/util/Map;Ljava/time/format/ResolverStyle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")V"
        }
    .end annotation

    const-wide/16 v6, 0xc

    sget-object v1, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    sget-object v1, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq p2, v1, :cond_0

    sget-object v1, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_0
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {p0, p1, v1, v2, v3}, Ljava/time/chrono/IsoChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v2

    invoke-virtual {p0, p1, v1, v2, v3}, Ljava/time/chrono/IsoChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    :cond_1
    return-void
.end method

.method resolveYMD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/LocalDate;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/LocalDate;"
        }
    .end annotation

    sget-object v8, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v6

    sget-object v7, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne p2, v7, :cond_0

    sget-object v7, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v4

    sget-object v7, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v7

    return-object v7

    :cond_0
    sget-object v8, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    sget-object v7, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v3

    sget-object v8, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    sget-object v7, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    sget-object v7, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    if-ne p2, v7, :cond_2

    const/4 v7, 0x4

    if-eq v3, v7, :cond_1

    const/4 v7, 0x6

    if-ne v3, v7, :cond_3

    :cond_1
    const/16 v7, 0x1e

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_2
    :goto_0
    invoke-static {v6, v3, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v7

    return-object v7

    :cond_3
    const/16 v7, 0x9

    if-eq v3, v7, :cond_1

    const/16 v7, 0xb

    if-eq v3, v7, :cond_1

    const/4 v7, 0x2

    if-ne v3, v7, :cond_2

    sget-object v7, Ljava/time/Month;->FEBRUARY:Ljava/time/Month;

    int-to-long v8, v6

    invoke-static {v8, v9}, Ljava/time/Year;->isLeap(J)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/time/Month;->length(Z)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0
.end method

.method bridge synthetic resolveYMD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/IsoChronology;->resolveYMD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method resolveYearOfEra(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/LocalDate;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/LocalDate;"
        }
    .end annotation

    const-wide/16 v10, 0x0

    const-wide/16 v6, 0x1

    const/4 v8, 0x0

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_a

    sget-object v3, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq p2, v3, :cond_0

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_0
    sget-object v3, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_7

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne p2, v3, :cond_4

    if-eqz v1, :cond_3

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-lez v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_0
    invoke-virtual {p0, p1, v3, v4, v5}, Ljava/time/chrono/IsoChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    :cond_1
    :goto_1
    return-object v8

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v4

    goto :goto_0

    :cond_3
    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-lez v4, :cond_6

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_2
    invoke-virtual {p0, p1, v3, v4, v5}, Ljava/time/chrono/IsoChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v4

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-nez v3, :cond_8

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, p1, v3, v4, v5}, Ljava/time/chrono/IsoChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    goto :goto_1

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v10

    if-nez v3, :cond_9

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v4

    invoke-virtual {p0, p1, v3, v4, v5}, Ljava/time/chrono/IsoChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    goto :goto_1

    :cond_9
    new-instance v3, Ljava/time/DateTimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid value for era: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    sget-object v3, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v4, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    sget-object v3, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    goto/16 :goto_1
.end method

.method bridge synthetic resolveYearOfEra(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/IsoChronology;->resolveYearOfEra(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/time/chrono/AbstractChronology;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 1

    invoke-static {p1, p2}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;
    .locals 1

    invoke-static {p1}, Ljava/time/ZonedDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/IsoChronology;->zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/chrono/IsoChronology;->zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method
