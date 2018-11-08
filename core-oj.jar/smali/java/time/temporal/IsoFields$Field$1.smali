.class final enum Ljava/time/temporal/IsoFields$Field$1;
.super Ljava/time/temporal/IsoFields$Field;
.source "IsoFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/temporal/IsoFields$Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/time/temporal/IsoFields$Field;-><init>(Ljava/lang/String;ILjava/time/temporal/IsoFields$Field;)V

    return-void
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/time/temporal/IsoFields$Field$1;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/time/temporal/IsoFields$Field$1;->range()Ljava/time/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/time/temporal/Temporal;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    sub-long v6, p2, v0

    add-long/2addr v4, v6

    invoke-interface {p1, v2, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method public getBaseUnit()Ljava/time/temporal/TemporalUnit;
    .locals 1

    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public getFrom(Ljava/time/temporal/TemporalAccessor;)J
    .locals 7

    invoke-virtual {p0, p1}, Ljava/time/temporal/IsoFields$Field$1;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string/jumbo v5, "Unsupported field: DayOfQuarter"

    invoke-direct {v4, v5}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    sget-object v4, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    invoke-static {}, Ljava/time/temporal/IsoFields$Field;->-get0()[I

    move-result-object v5

    add-int/lit8 v4, v1, -0x1

    div-int/lit8 v6, v4, 0x3

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v4, v2, v3}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    :goto_0
    add-int/2addr v4, v6

    aget v4, v5, v4

    sub-int v4, v0, v4

    int-to-long v4, v4

    return-wide v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getRangeUnit()Ljava/time/temporal/TemporalUnit;
    .locals 1

    sget-object v0, Ljava/time/temporal/IsoFields;->QUARTER_YEARS:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
    .locals 1

    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/time/temporal/IsoFields$Field;->-wrap0(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public range()Ljava/time/temporal/ValueRange;
    .locals 6

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x5a

    const-wide/16 v4, 0x5c

    invoke-static/range {v0 .. v5}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .locals 10

    const-wide/16 v8, 0x5b

    const-wide/16 v6, 0x1

    invoke-virtual {p0, p1}, Ljava/time/temporal/IsoFields$Field$1;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string/jumbo v5, "Unsupported field: DayOfQuarter"

    invoke-direct {v4, v5}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    sget-object v4, Ljava/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-interface {p1, v4}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    cmp-long v4, v0, v6

    if-nez v4, :cond_2

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v4, v2, v3}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_1
    const-wide/16 v4, 0x5a

    invoke-static {v6, v7, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x2

    cmp-long v4, v0, v4

    if-nez v4, :cond_3

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    return-object v4

    :cond_3
    const-wide/16 v4, 0x3

    cmp-long v4, v0, v4

    if-eqz v4, :cond_4

    const-wide/16 v4, 0x4

    cmp-long v4, v0, v4

    if-nez v4, :cond_5

    :cond_4
    const-wide/16 v4, 0x5c

    invoke-static {v6, v7, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    return-object v4

    :cond_5
    invoke-virtual {p0}, Ljava/time/temporal/IsoFields$Field$1;->range()Ljava/time/temporal/ValueRange;

    move-result-object v4

    return-object v4
.end method

.method public resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/temporal/TemporalAccessor;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    sget-object v7, Ljava/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v6, :cond_0

    if-nez v4, :cond_1

    :cond_0
    const/4 v7, 0x0

    return-object v7

    :cond_1
    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v5

    sget-object v7, Ljava/time/temporal/IsoFields$Field$1;->DAY_OF_QUARTER:Ljava/time/temporal/IsoFields$Field;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p2}, Ljava/time/temporal/IsoFields$Field;->-wrap5(Ljava/time/temporal/TemporalAccessor;)V

    sget-object v7, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne p3, v7, :cond_2

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {v5, v7, v8}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v8

    const-wide/16 v10, 0x3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v0

    const-wide/16 v8, 0x1

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v2

    :goto_0
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Ljava/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-interface {p1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v7

    return-object v7

    :cond_2
    sget-object v7, Ljava/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-virtual {v7}, Ljava/time/temporal/IsoFields$Field;->range()Ljava/time/temporal/ValueRange;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v10, Ljava/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-virtual {v7, v8, v9, v10}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    invoke-static {v5, v7, v8}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    const-wide/16 v8, 0x1

    cmp-long v7, v2, v8

    if-ltz v7, :cond_3

    const-wide/16 v8, 0x5a

    cmp-long v7, v2, v8

    if-lez v7, :cond_4

    :cond_3
    sget-object v7, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne p3, v7, :cond_5

    invoke-virtual {p0, v0}, Ljava/time/temporal/IsoFields$Field$1;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v7

    invoke-virtual {v7, v2, v3, p0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    :cond_4
    :goto_1
    const-wide/16 v8, 0x1

    sub-long/2addr v2, v8

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ljava/time/temporal/IsoFields$Field$1;->range()Ljava/time/temporal/ValueRange;

    move-result-object v7

    invoke-virtual {v7, v2, v3, p0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    goto :goto_1
.end method

.method public bridge synthetic resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/temporal/TemporalAccessor;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/temporal/IsoFields$Field$1;->resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "DayOfQuarter"

    return-object v0
.end method
