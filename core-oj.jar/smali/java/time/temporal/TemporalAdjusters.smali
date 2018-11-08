.class public final Ljava/time/temporal/TemporalAdjusters;
.super Ljava/lang/Object;
.source "TemporalAdjusters.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dayOfWeekInMonth(ILjava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .locals 2

    const-string/jumbo v1, "dayOfWeek"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    if-ltz p0, :cond_0

    new-instance v1, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$11;

    invoke-direct {v1, v0, p0}, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$11;-><init>(II)V

    return-object v1

    :cond_0
    new-instance v1, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$12;

    invoke-direct {v1, v0, p0}, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$12;-><init>(II)V

    return-object v1
.end method

.method public static firstDayOfMonth()Ljava/time/temporal/TemporalAdjuster;
    .locals 1

    new-instance v0, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30;

    invoke-direct {v0}, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30;-><init>()V

    return-object v0
.end method

.method public static firstDayOfNextMonth()Ljava/time/temporal/TemporalAdjuster;
    .locals 1

    new-instance v0, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$1;

    invoke-direct {v0}, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$1;-><init>()V

    return-object v0
.end method

.method public static firstDayOfNextYear()Ljava/time/temporal/TemporalAdjuster;
    .locals 1

    new-instance v0, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$2;

    invoke-direct {v0}, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$2;-><init>()V

    return-object v0
.end method

.method public static firstDayOfYear()Ljava/time/temporal/TemporalAdjuster;
    .locals 1

    new-instance v0, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$3;

    invoke-direct {v0}, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$3;-><init>()V

    return-object v0
.end method

.method public static firstInMonth(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/time/temporal/TemporalAdjusters;->dayOfWeekInMonth(ILjava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_time_temporal_TemporalAdjusters_10273(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 4

    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Ljava/time/temporal/Temporal;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v2

    invoke-interface {p0, v0, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_time_temporal_TemporalAdjusters_10953(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 4

    const-wide/16 v2, 0x1

    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v0, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_time_temporal_TemporalAdjusters_15151(IILjava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 10

    const-wide/16 v8, 0x1

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p2, v3, v8, v9}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    sub-int v3, p0, v0

    add-int/lit8 v3, v3, 0x7

    rem-int/lit8 v1, v3, 0x7

    int-to-long v4, v1

    int-to-long v6, p1

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x7

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    long-to-int v1, v4

    int-to-long v4, v1

    sget-object v3, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v3

    return-object v3
.end method

.method static synthetic lambda$-java_time_temporal_TemporalAdjusters_15513(IILjava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 10

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p2, v4}, Ljava/time/temporal/Temporal;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v4

    invoke-interface {p2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    sub-int v1, p0, v0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    int-to-long v4, v1

    neg-int v3, p1

    int-to-long v6, v3

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x7

    mul-long/2addr v6, v8

    sub-long/2addr v4, v6

    long-to-int v1, v4

    int-to-long v4, v1

    sget-object v3, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v3

    return-object v3

    :cond_1
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x7

    goto :goto_0
.end method

.method static synthetic lambda$-java_time_temporal_TemporalAdjusters_17076(ILjava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 5

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    sub-int v1, v0, p0

    if-ltz v1, :cond_0

    rsub-int/lit8 v2, v1, 0x7

    :goto_0
    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v2

    return-object v2

    :cond_0
    neg-int v2, v1

    goto :goto_0
.end method

.method static synthetic lambda$-java_time_temporal_TemporalAdjusters_18421(ILjava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 5

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    if-ne v0, p0, :cond_0

    return-object p1

    :cond_0
    sub-int v1, v0, p0

    if-ltz v1, :cond_1

    rsub-int/lit8 v2, v1, 0x7

    :goto_0
    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v2

    return-object v2

    :cond_1
    neg-int v2, v1

    goto :goto_0
.end method

.method static synthetic lambda$-java_time_temporal_TemporalAdjusters_19758(ILjava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 5

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    sub-int v1, p0, v0

    if-ltz v1, :cond_0

    rsub-int/lit8 v2, v1, 0x7

    :goto_0
    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v2

    return-object v2

    :cond_0
    neg-int v2, v1

    goto :goto_0
.end method

.method static synthetic lambda$-java_time_temporal_TemporalAdjusters_21123(ILjava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 5

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    if-ne v0, p0, :cond_0

    return-object p1

    :cond_0
    sub-int v1, p0, v0

    if-ltz v1, :cond_1

    rsub-int/lit8 v2, v1, 0x7

    :goto_0
    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v2

    return-object v2

    :cond_1
    neg-int v2, v1

    goto :goto_0
.end method

.method static synthetic lambda$-java_time_temporal_TemporalAdjusters_6256(Ljava/util/function/UnaryOperator;Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 3

    invoke-static {p1}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/LocalDate;

    invoke-interface {p1, v1}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$-java_time_temporal_TemporalAdjusters_7152(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 4

    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    const-wide/16 v2, 0x1

    invoke-interface {p0, v0, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_time_temporal_TemporalAdjusters_8020(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 4

    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Ljava/time/temporal/Temporal;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v2

    invoke-interface {p0, v0, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_time_temporal_TemporalAdjusters_8763(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 4

    const-wide/16 v2, 0x1

    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v0, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_time_temporal_TemporalAdjusters_9532(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 4

    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    const-wide/16 v2, 0x1

    invoke-interface {p0, v0, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public static lastDayOfMonth()Ljava/time/temporal/TemporalAdjuster;
    .locals 1

    new-instance v0, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$4;

    invoke-direct {v0}, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$4;-><init>()V

    return-object v0
.end method

.method public static lastDayOfYear()Ljava/time/temporal/TemporalAdjuster;
    .locals 1

    new-instance v0, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$5;

    invoke-direct {v0}, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$5;-><init>()V

    return-object v0
.end method

.method public static lastInMonth(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0, p0}, Ljava/time/temporal/TemporalAdjusters;->dayOfWeekInMonth(ILjava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v0

    return-object v0
.end method

.method public static next(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .locals 2

    invoke-virtual {p0}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    new-instance v1, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$7;

    invoke-direct {v1, v0}, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$7;-><init>(I)V

    return-object v1
.end method

.method public static nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .locals 2

    invoke-virtual {p0}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    new-instance v1, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$8;

    invoke-direct {v1, v0}, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$8;-><init>(I)V

    return-object v1
.end method

.method public static ofDateAdjuster(Ljava/util/function/UnaryOperator;)Ljava/time/temporal/TemporalAdjuster;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator",
            "<",
            "Ljava/time/LocalDate;",
            ">;)",
            "Ljava/time/temporal/TemporalAdjuster;"
        }
    .end annotation

    const-string/jumbo v0, "dateBasedAdjuster"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$6;

    invoke-direct {v0, p0}, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$6;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static previous(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .locals 2

    invoke-virtual {p0}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    new-instance v1, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$9;

    invoke-direct {v1, v0}, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$9;-><init>(I)V

    return-object v1
.end method

.method public static previousOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .locals 2

    invoke-virtual {p0}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    new-instance v1, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$10;

    invoke-direct {v1, v0}, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$10;-><init>(I)V

    return-object v1
.end method
