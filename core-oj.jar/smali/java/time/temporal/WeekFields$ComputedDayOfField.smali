.class Ljava/time/temporal/WeekFields$ComputedDayOfField;
.super Ljava/lang/Object;
.source "WeekFields.java"

# interfaces
.implements Ljava/time/temporal/TemporalField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/temporal/WeekFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ComputedDayOfField"
.end annotation


# static fields
.field private static final DAY_OF_WEEK_RANGE:Ljava/time/temporal/ValueRange;

.field private static final WEEK_OF_MONTH_RANGE:Ljava/time/temporal/ValueRange;

.field private static final WEEK_OF_WEEK_BASED_YEAR_RANGE:Ljava/time/temporal/ValueRange;

.field private static final WEEK_OF_YEAR_RANGE:Ljava/time/temporal/ValueRange;


# instance fields
.field private final baseUnit:Ljava/time/temporal/TemporalUnit;

.field private final name:Ljava/lang/String;

.field private final range:Ljava/time/temporal/ValueRange;

.field private final rangeUnit:Ljava/time/temporal/TemporalUnit;

.field private final weekDef:Ljava/time/temporal/WeekFields;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-wide/16 v8, 0x34

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x7

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    sput-object v4, Ljava/time/temporal/WeekFields$ComputedDayOfField;->DAY_OF_WEEK_RANGE:Ljava/time/temporal/ValueRange;

    const-wide/16 v4, 0x4

    const-wide/16 v6, 0x6

    invoke-static/range {v0 .. v7}, Ljava/time/temporal/ValueRange;->of(JJJJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    sput-object v4, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_MONTH_RANGE:Ljava/time/temporal/ValueRange;

    const-wide/16 v6, 0x36

    move-wide v4, v8

    invoke-static/range {v0 .. v7}, Ljava/time/temporal/ValueRange;->of(JJJJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_YEAR_RANGE:Ljava/time/temporal/ValueRange;

    const-wide/16 v6, 0x35

    move-wide v4, v8

    invoke-static/range {v2 .. v7}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_WEEK_BASED_YEAR_RANGE:Ljava/time/temporal/ValueRange;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/time/temporal/WeekFields;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->name:Ljava/lang/String;

    iput-object p2, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    iput-object p3, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->baseUnit:Ljava/time/temporal/TemporalUnit;

    iput-object p4, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    iput-object p5, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    return-void
.end method

.method private computeWeek(II)I
    .locals 2

    add-int/lit8 v0, p1, 0x7

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    return v0
.end method

.method private localizedDayOfWeek(I)I
    .locals 3

    iget-object v1, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v1}, Ljava/time/temporal/WeekFields;->getFirstDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    sub-int v1, p1, v0

    const/4 v2, 0x7

    invoke-static {v1, v2}, Ljava/lang/Math;->floorMod(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I
    .locals 4

    iget-object v2, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v2}, Ljava/time/temporal/WeekFields;->getFirstDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/DayOfWeek;->getValue()I

    move-result v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    sub-int v2, v0, v1

    const/4 v3, 0x7

    invoke-static {v2, v3}, Ljava/lang/Math;->floorMod(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method private localizedWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)I
    .locals 10

    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v1

    sget-object v8, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v6

    sget-object v8, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    invoke-direct {p0, v2, v1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v4

    invoke-direct {p0, v4, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v8, v6, -0x1

    return v8

    :cond_0
    sget-object v8, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v8

    long-to-int v7, v8

    iget-object v8, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v8}, Ljava/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v8

    add-int/2addr v8, v7

    invoke-direct {p0, v4, v8}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    if-lt v5, v3, :cond_1

    add-int/lit8 v8, v6, 0x1

    return v8

    :cond_1
    return v6
.end method

.method private localizedWeekOfMonth(Ljava/time/temporal/TemporalAccessor;)J
    .locals 6

    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v1

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-direct {p0, v0, v1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v2

    invoke-direct {p0, v2, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    int-to-long v4, v3

    return-wide v4
.end method

.method private localizedWeekOfWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)I
    .locals 11

    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v2

    sget-object v8, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    invoke-direct {p0, v3, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v5

    invoke-direct {p0, v5, v3}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v8

    invoke-interface {v8, p1}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    int-to-long v8, v3

    sget-object v10, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, v8, v9, v10}, Ljava/time/chrono/ChronoLocalDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)I

    move-result v8

    return v8

    :cond_0
    const/16 v8, 0x32

    if-le v6, v8, :cond_1

    sget-object v8, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v8

    long-to-int v7, v8

    iget-object v8, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v8}, Ljava/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v8

    add-int/2addr v8, v7

    invoke-direct {p0, v5, v8}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v4

    if-lt v6, v4, :cond_1

    sub-int v8, v6, v4

    add-int/lit8 v6, v8, 0x1

    :cond_1
    return v6
.end method

.method private localizedWeekOfYear(Ljava/time/temporal/TemporalAccessor;)J
    .locals 6

    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v0

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v2

    invoke-direct {p0, v2, v1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    int-to-long v4, v3

    return-wide v4
.end method

.method static ofDayOfWeekField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;
    .locals 6

    new-instance v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;

    const-string/jumbo v1, "DayOfWeek"

    sget-object v3, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/WeekFields$ComputedDayOfField;->DAY_OF_WEEK_RANGE:Ljava/time/temporal/ValueRange;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Ljava/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Ljava/time/temporal/WeekFields;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    return-object v0
.end method

.method private ofWeekBasedYear(Ljava/time/chrono/Chronology;III)Ljava/time/chrono/ChronoLocalDate;
    .locals 9

    const/4 v6, 0x1

    invoke-interface {p1, p2, v6, v6}, Ljava/time/chrono/Chronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v2

    invoke-direct {p0, v6, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v4

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->lengthOfYear()I

    move-result v5

    iget-object v6, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v6}, Ljava/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v6

    add-int/2addr v6, v5

    invoke-direct {p0, v4, v6}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    add-int/lit8 v6, v3, -0x1

    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    move-result p3

    neg-int v6, v4

    add-int/lit8 v7, p4, -0x1

    add-int/2addr v6, v7

    add-int/lit8 v7, p3, -0x1

    mul-int/lit8 v7, v7, 0x7

    add-int v1, v6, v7

    int-to-long v6, v1

    sget-object v8, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, v6, v7, v8}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v6

    return-object v6
.end method

.method static ofWeekBasedYearField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;
    .locals 6

    new-instance v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;

    const-string/jumbo v1, "WeekBasedYear"

    sget-object v3, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Ljava/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Ljava/time/temporal/WeekFields;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    return-object v0
.end method

.method static ofWeekOfMonthField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;
    .locals 6

    new-instance v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;

    const-string/jumbo v1, "WeekOfMonth"

    sget-object v3, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_MONTH_RANGE:Ljava/time/temporal/ValueRange;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Ljava/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Ljava/time/temporal/WeekFields;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    return-object v0
.end method

.method static ofWeekOfWeekBasedYearField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;
    .locals 6

    new-instance v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;

    const-string/jumbo v1, "WeekOfWeekBasedYear"

    sget-object v3, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    sget-object v4, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    sget-object v5, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_WEEK_BASED_YEAR_RANGE:Ljava/time/temporal/ValueRange;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Ljava/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Ljava/time/temporal/WeekFields;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    return-object v0
.end method

.method static ofWeekOfYearField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;
    .locals 6

    new-instance v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;

    const-string/jumbo v1, "WeekOfYear"

    sget-object v3, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_YEAR_RANGE:Ljava/time/temporal/ValueRange;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Ljava/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Ljava/time/temporal/WeekFields;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    return-object v0
.end method

.method private rangeByWeek(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 8

    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v0

    invoke-interface {p1, p2}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    invoke-direct {p0, v3, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v2

    invoke-interface {p1, p2}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-direct {p0, v2, v3}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v6

    long-to-int v3, v6

    invoke-direct {p0, v2, v3}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    int-to-long v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v3

    return-object v3
.end method

.method private rangeWeekOfWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .locals 12

    sget-object v8, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_YEAR_RANGE:Ljava/time/temporal/ValueRange;

    return-object v8

    :cond_0
    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v2

    sget-object v8, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    invoke-direct {p0, v3, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v5

    invoke-direct {p0, v5, v3}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v6

    if-nez v6, :cond_1

    invoke-static {p1}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v8

    invoke-interface {v8, p1}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    add-int/lit8 v8, v3, 0x7

    int-to-long v8, v8

    sget-object v10, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, v8, v9, v10}, Ljava/time/chrono/ChronoLocalDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeWeekOfWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v8

    return-object v8

    :cond_1
    sget-object v8, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v8

    long-to-int v7, v8

    iget-object v8, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v8}, Ljava/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v8

    add-int/2addr v8, v7

    invoke-direct {p0, v5, v8}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v4

    if-lt v6, v4, :cond_2

    invoke-static {p1}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v8

    invoke-interface {v8, p1}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    sub-int v8, v7, v3

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v8, v8, 0x7

    int-to-long v8, v8

    sget-object v10, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, v8, v9, v10}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeWeekOfWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v8

    return-object v8

    :cond_2
    const-wide/16 v8, 0x1

    add-int/lit8 v10, v4, -0x1

    int-to-long v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    return-object v8
.end method

.method private resolveWBY(Ljava/util/Map;Ljava/time/chrono/Chronology;ILjava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/chrono/Chronology;",
            "I",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    iget-object v9, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v9}, Ljava/time/temporal/WeekFields;->-get1(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v9

    invoke-interface {v9}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v10

    iget-object v9, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v9}, Ljava/time/temporal/WeekFields;->-get1(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v9, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v9}, Ljava/time/temporal/WeekFields;->-get1(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v9

    invoke-virtual {v10, v12, v13, v9}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v8

    sget-object v9, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p4

    if-ne v0, v9, :cond_1

    const/4 v9, 0x1

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {p0, v0, v8, v9, v1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->ofWeekBasedYear(Ljava/time/chrono/Chronology;III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    iget-object v9, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v9}, Ljava/time/temporal/WeekFields;->-get2(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v10, 0x1

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v4

    sget-object v9, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v2, v4, v5, v9}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v9}, Ljava/time/temporal/WeekFields;->-get1(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v9}, Ljava/time/temporal/WeekFields;->-get2(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_1
    iget-object v9, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v9}, Ljava/time/temporal/WeekFields;->-get2(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v9

    invoke-interface {v9}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v10

    iget-object v9, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v9}, Ljava/time/temporal/WeekFields;->-get2(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v9, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v9}, Ljava/time/temporal/WeekFields;->-get2(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v9

    invoke-virtual {v10, v12, v13, v9}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v3

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {p0, v0, v8, v3, v1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->ofWeekBasedYear(Ljava/time/chrono/Chronology;III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    sget-object v9, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p4

    if-ne v0, v9, :cond_0

    invoke-direct {p0, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)I

    move-result v9

    if-eq v9, v8, :cond_0

    new-instance v9, Ljava/time/DateTimeException;

    const-string/jumbo v10, "Strict mode rejected resolved date as it is in a different week-based-year"

    invoke-direct {v9, v10}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private resolveWoM(Ljava/util/Map;Ljava/time/chrono/Chronology;IJJILjava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/chrono/Chronology;",
            "IJJI",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    sget-object v9, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p9

    if-ne v0, v9, :cond_1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v0, v1, v9, v10}, Ljava/time/chrono/Chronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v9

    const-wide/16 v10, 0x1

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v10

    sget-object v12, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v9, v10, v11, v12}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfMonth(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v10

    move-wide/from16 v0, p6

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v6

    invoke-direct {p0, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v9

    sub-int v3, p8, v9

    const-wide/16 v10, 0x7

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v10

    int-to-long v12, v3

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v10

    sget-object v9, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v2, v10, v11, v9}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_1
    sget-object v9, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, p4

    invoke-virtual {v9, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v4

    const/4 v9, 0x1

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v0, v1, v4, v9}, Ljava/time/chrono/Chronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    iget-object v9, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    move-wide/from16 v0, p6

    invoke-virtual {v9, v0, v1, p0}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v8

    int-to-long v10, v8

    invoke-direct {p0, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfMonth(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    long-to-int v5, v10

    invoke-direct {p0, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v9

    sub-int v3, p8, v9

    mul-int/lit8 v9, v5, 0x7

    add-int/2addr v9, v3

    int-to-long v10, v9

    sget-object v9, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v2, v10, v11, v9}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    sget-object v9, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p9

    if-ne v0, v9, :cond_0

    sget-object v9, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v9}, Ljava/time/chrono/ChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v10

    cmp-long v9, v10, p4

    if-eqz v9, :cond_0

    new-instance v9, Ljava/time/DateTimeException;

    const-string/jumbo v10, "Strict mode rejected resolved date as it is in a different month"

    invoke-direct {v9, v10}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private resolveWoY(Ljava/util/Map;Ljava/time/chrono/Chronology;IJILjava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/chrono/Chronology;",
            "IJI",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-interface {p2, p3, v8, v9}, Ljava/time/chrono/Chronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    sget-object v8, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p7

    if-ne v0, v8, :cond_1

    invoke-direct {p0, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v8

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v6

    invoke-direct {p0, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v8

    sub-int v3, p6, v8

    const-wide/16 v8, 0x7

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v8

    int-to-long v10, v3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v8

    sget-object v10, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v2, v8, v9, v10}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_1
    iget-object v8, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    move-wide/from16 v0, p4

    invoke-virtual {v8, v0, v1, p0}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v5

    int-to-long v8, v5

    invoke-direct {p0, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-int v4, v8

    invoke-direct {p0, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v8

    sub-int v3, p6, v8

    mul-int/lit8 v8, v4, 0x7

    add-int/2addr v8, v3

    int-to-long v8, v8

    sget-object v10, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v2, v8, v9, v10}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    sget-object v8, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p7

    if-ne v0, v8, :cond_0

    sget-object v8, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v8}, Ljava/time/chrono/ChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v8

    int-to-long v10, p3

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    new-instance v8, Ljava/time/DateTimeException;

    const-string/jumbo v9, "Strict mode rejected resolved date as it is in a different year"

    invoke-direct {v8, v9}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private startOfWeekOffset(II)I
    .locals 4

    sub-int v2, p1, p2

    const/4 v3, 0x7

    invoke-static {v2, v3}, Ljava/lang/Math;->floorMod(II)I

    move-result v1

    neg-int v0, v1

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v3}, Ljava/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v3

    if-le v2, v3, :cond_0

    rsub-int/lit8 v0, v1, 0x7

    :cond_0
    return v0
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

    iget-object v4, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    invoke-virtual {v4, p2, p3, p0}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v2

    invoke-interface {p1, p0}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    if-ne v2, v0, :cond_0

    return-object p1

    :cond_0
    iget-object v4, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v4}, Ljava/time/temporal/WeekFields;->-get0(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    iget-object v4, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v4}, Ljava/time/temporal/WeekFields;->-get2(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    invoke-static {p1}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v4

    long-to-int v5, p2

    invoke-direct {p0, v4, v5, v3, v1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->ofWeekBasedYear(Ljava/time/chrono/Chronology;III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    return-object v4

    :cond_1
    sub-int v4, v2, v0

    int-to-long v4, v4

    iget-object v6, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->baseUnit:Ljava/time/temporal/TemporalUnit;

    invoke-interface {p1, v4, v5, v6}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v4

    return-object v4
.end method

.method public getBaseUnit()Ljava/time/temporal/TemporalUnit;
    .locals 1

    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->baseUnit:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v2, "locale"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v2, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v3, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne v2, v3, :cond_1

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
    iget-object v1, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->name:Ljava/lang/String;

    return-object v2
.end method

.method public getFrom(Ljava/time/temporal/TemporalAccessor;)J
    .locals 3

    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfMonth(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    :cond_2
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/WeekFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_3
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_4

    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unreachable, rangeUnit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRangeUnit()Ljava/time/temporal/TemporalUnit;
    .locals 1

    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public isDateBased()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
    .locals 2

    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_1

    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_2

    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/WeekFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    if-ne v0, v1, :cond_3

    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0

    :cond_3
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_4

    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public isTimeBased()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public range()Ljava/time/temporal/ValueRange;
    .locals 1

    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    return-object v0
.end method

.method public rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .locals 3

    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_1

    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-direct {p0, p1, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeByWeek(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_2

    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-direct {p0, p1, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeByWeek(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/WeekFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeWeekOfWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_4

    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unreachable, rangeUnit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .locals 30
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

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->toIntExact(J)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    if-ne v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    invoke-virtual {v4, v0, v1, v2}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v4}, Ljava/time/temporal/WeekFields;->getFirstDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/DayOfWeek;->getValue()I

    move-result v27

    add-int/lit8 v4, v27, -0x1

    add-int/lit8 v5, v22, -0x1

    add-int/2addr v4, v5

    const/4 v5, 0x7

    invoke-static {v4, v5}, Ljava/lang/Math;->floorMod(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v0, v4

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    return-object v4

    :cond_0
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    return-object v4

    :cond_1
    sget-object v5, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(I)I

    move-result v12

    invoke-static/range {p2 .. p2}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v6

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v5, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne v4, v5, :cond_2

    sget-object v4, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move/from16 v0, v26

    int-to-long v10, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v13, p3

    invoke-direct/range {v4 .. v13}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->resolveWoM(Ljava/util/Map;Ljava/time/chrono/Chronology;IJJILjava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    return-object v4

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne v4, v5, :cond_5

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, v6

    move/from16 v17, v7

    move/from16 v20, v12

    move-object/from16 v21, p3

    invoke-direct/range {v14 .. v21}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->resolveWoY(Ljava/util/Map;Ljava/time/chrono/Chronology;IJILjava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    return-object v4

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v5, Ljava/time/temporal/WeekFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    if-eq v4, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-ne v4, v5, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v4}, Ljava/time/temporal/WeekFields;->-get1(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v4}, Ljava/time/temporal/WeekFields;->-get2(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v6, v12, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->resolveWBY(Ljava/util/Map;Ljava/time/chrono/Chronology;ILjava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    return-object v4

    :cond_5
    const/4 v4, 0x0

    return-object v4
.end method

.method public bridge synthetic resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/temporal/TemporalAccessor;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v1}, Ljava/time/temporal/WeekFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
