.class final enum Ljava/time/temporal/IsoFields$Field$3;
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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/time/temporal/IsoFields$Field$3;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    invoke-virtual {p0, p1}, Ljava/time/temporal/IsoFields$Field$3;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public getBaseUnit()Ljava/time/temporal/TemporalUnit;
    .locals 1

    sget-object v0, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v2, "locale"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/text/DateTimePatternGenerator;->getFrozenInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/icu/text/DateTimePatternGenerator;->getAppendItemName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/time/temporal/IsoFields$Field$3;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFrom(Ljava/time/temporal/TemporalAccessor;)J
    .locals 2

    invoke-virtual {p0, p1}, Ljava/time/temporal/IsoFields$Field$3;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string/jumbo v1, "Unsupported field: WeekOfWeekBasedYear"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    invoke-static {v0}, Ljava/time/temporal/IsoFields$Field;->-wrap3(Ljava/time/LocalDate;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getRangeUnit()Ljava/time/temporal/TemporalUnit;
    .locals 1

    sget-object v0, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
    .locals 1

    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

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

    const-wide/16 v2, 0x34

    const-wide/16 v4, 0x35

    invoke-static/range {v0 .. v5}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/time/temporal/IsoFields$Field$3;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string/jumbo v1, "Unsupported field: WeekOfWeekBasedYear"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    invoke-static {v0}, Ljava/time/temporal/IsoFields$Field;->-wrap4(Ljava/time/LocalDate;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .locals 16
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

    sget-object v9, Ljava/time/temporal/IsoFields$Field$3;->WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    sget-object v9, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v8, :cond_0

    if-nez v6, :cond_1

    :cond_0
    const/4 v9, 0x0

    return-object v9

    :cond_1
    sget-object v9, Ljava/time/temporal/IsoFields$Field$3;->WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-virtual {v9}, Ljava/time/temporal/IsoFields$Field;->range()Ljava/time/temporal/ValueRange;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sget-object v14, Ljava/time/temporal/IsoFields$Field$3;->WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-virtual {v9, v12, v13, v14}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v7

    sget-object v9, Ljava/time/temporal/IsoFields$Field$3;->WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static/range {p2 .. p2}, Ljava/time/temporal/IsoFields$Field;->-wrap5(Ljava/time/temporal/TemporalAccessor;)V

    const/4 v9, 0x1

    const/4 v12, 0x4

    invoke-static {v7, v9, v12}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v2

    sget-object v9, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p3

    if-ne v0, v9, :cond_4

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v12, 0x7

    cmp-long v9, v4, v12

    if-lez v9, :cond_3

    const-wide/16 v12, 0x1

    sub-long v12, v4, v12

    const-wide/16 v14, 0x7

    div-long/2addr v12, v14

    invoke-virtual {v2, v12, v13}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v2

    const-wide/16 v12, 0x1

    sub-long v12, v4, v12

    const-wide/16 v14, 0x7

    rem-long/2addr v12, v14

    const-wide/16 v14, 0x1

    add-long v4, v12, v14

    :cond_2
    :goto_0
    const-wide/16 v12, 0x1

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v9

    sget-object v12, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v9, v12, v4, v5}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object v2

    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Ljava/time/temporal/IsoFields$Field$3;->WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_3
    const-wide/16 v12, 0x1

    cmp-long v9, v4, v12

    if-gez v9, :cond_2

    const-wide/16 v12, 0x7

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v12

    const-wide/16 v14, 0x7

    div-long/2addr v12, v14

    invoke-virtual {v2, v12, v13}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v2

    const-wide/16 v12, 0x6

    add-long/2addr v12, v4

    const-wide/16 v14, 0x7

    rem-long/2addr v12, v14

    const-wide/16 v14, 0x1

    add-long v4, v12, v14

    goto :goto_0

    :cond_4
    sget-object v9, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v3

    const-wide/16 v12, 0x1

    cmp-long v9, v10, v12

    if-ltz v9, :cond_5

    const-wide/16 v12, 0x34

    cmp-long v9, v10, v12

    if-lez v9, :cond_6

    :cond_5
    sget-object v9, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p3

    if-ne v0, v9, :cond_7

    invoke-static {v2}, Ljava/time/temporal/IsoFields$Field;->-wrap4(Ljava/time/LocalDate;)Ljava/time/temporal/ValueRange;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v9, v10, v11, v0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    :cond_6
    :goto_2
    const-wide/16 v12, 0x1

    sub-long v12, v10, v12

    invoke-virtual {v2, v12, v13}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v9

    sget-object v12, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    int-to-long v14, v3

    invoke-virtual {v9, v12, v14, v15}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object v2

    goto :goto_1

    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/time/temporal/IsoFields$Field$3;->range()Ljava/time/temporal/ValueRange;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v9, v10, v11, v0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    goto :goto_2
.end method

.method public bridge synthetic resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/temporal/TemporalAccessor;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/temporal/IsoFields$Field$3;->resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "WeekOfWeekBasedYear"

    return-object v0
.end method
