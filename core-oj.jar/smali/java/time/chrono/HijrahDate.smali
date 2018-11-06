.class public final Ljava/time/chrono/HijrahDate;
.super Ljava/time/chrono/ChronoLocalDateImpl;
.source "HijrahDate.java"

# interfaces
.implements Ljava/time/chrono/ChronoLocalDate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/time/chrono/ChronoLocalDateImpl",
        "<",
        "Ljava/time/chrono/HijrahDate;",
        ">;",
        "Ljava/time/chrono/ChronoLocalDate;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic -java-time-temporal-ChronoFieldSwitchesValues:[I = null

.field private static final serialVersionUID:J = -0x4846033461a5e4e4L


# instance fields
.field private final transient chrono:Ljava/time/chrono/HijrahChronology;

.field private final transient dayOfMonth:I

.field private final transient monthOfYear:I

.field private final transient prolepticYear:I


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoFieldSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/time/chrono/HijrahDate;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/time/chrono/HijrahDate;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Ljava/time/temporal/ChronoField;->values()[Ljava/time/temporal/ChronoField;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1d

    :goto_0
    :try_start_1
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1c

    :goto_1
    :try_start_2
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1b

    :goto_2
    :try_start_3
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1a

    :goto_3
    :try_start_4
    sget-object v1, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_19

    :goto_4
    :try_start_5
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_18

    :goto_5
    :try_start_6
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_17

    :goto_6
    :try_start_7
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_16

    :goto_7
    :try_start_8
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_15

    :goto_8
    :try_start_9
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_14

    :goto_9
    :try_start_a
    sget-object v1, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_13

    :goto_a
    :try_start_b
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_12

    :goto_b
    :try_start_c
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_11

    :goto_c
    :try_start_d
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_10

    :goto_d
    :try_start_e
    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_f

    :goto_e
    :try_start_f
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_e

    :goto_f
    :try_start_10
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_d

    :goto_10
    :try_start_11
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_c

    :goto_11
    :try_start_12
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_b

    :goto_12
    :try_start_13
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_a

    :goto_13
    :try_start_14
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_9

    :goto_14
    :try_start_15
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_8

    :goto_15
    :try_start_16
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_7

    :goto_16
    :try_start_17
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_6

    :goto_17
    :try_start_18
    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_5

    :goto_18
    :try_start_19
    sget-object v1, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_4

    :goto_19
    :try_start_1a
    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_3

    :goto_1a
    :try_start_1b
    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_2

    :goto_1b
    :try_start_1c
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1

    :goto_1c
    :try_start_1d
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_0

    :goto_1d
    sput-object v0, Ljava/time/chrono/HijrahDate;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1d

    :catch_1
    move-exception v1

    goto :goto_1c

    :catch_2
    move-exception v1

    goto :goto_1b

    :catch_3
    move-exception v1

    goto :goto_1a

    :catch_4
    move-exception v1

    goto :goto_19

    :catch_5
    move-exception v1

    goto :goto_18

    :catch_6
    move-exception v1

    goto :goto_17

    :catch_7
    move-exception v1

    goto :goto_16

    :catch_8
    move-exception v1

    goto :goto_15

    :catch_9
    move-exception v1

    goto :goto_14

    :catch_a
    move-exception v1

    goto :goto_13

    :catch_b
    move-exception v1

    goto/16 :goto_12

    :catch_c
    move-exception v1

    goto/16 :goto_11

    :catch_d
    move-exception v1

    goto/16 :goto_10

    :catch_e
    move-exception v1

    goto/16 :goto_f

    :catch_f
    move-exception v1

    goto/16 :goto_e

    :catch_10
    move-exception v1

    goto/16 :goto_d

    :catch_11
    move-exception v1

    goto/16 :goto_c

    :catch_12
    move-exception v1

    goto/16 :goto_b

    :catch_13
    move-exception v1

    goto/16 :goto_a

    :catch_14
    move-exception v1

    goto/16 :goto_9

    :catch_15
    move-exception v1

    goto/16 :goto_8

    :catch_16
    move-exception v1

    goto/16 :goto_7

    :catch_17
    move-exception v1

    goto/16 :goto_6

    :catch_18
    move-exception v1

    goto/16 :goto_5

    :catch_19
    move-exception v1

    goto/16 :goto_4

    :catch_1a
    move-exception v1

    goto/16 :goto_3

    :catch_1b
    move-exception v1

    goto/16 :goto_2

    :catch_1c
    move-exception v1

    goto/16 :goto_1

    :catch_1d
    move-exception v1

    goto/16 :goto_0
.end method

.method private constructor <init>(Ljava/time/chrono/HijrahChronology;III)V
    .locals 0

    invoke-direct {p0}, Ljava/time/chrono/ChronoLocalDateImpl;-><init>()V

    invoke-virtual {p1, p2, p3, p4}, Ljava/time/chrono/HijrahChronology;->getEpochDay(III)J

    iput-object p1, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    iput p2, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iput p3, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    iput p4, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    return-void
.end method

.method private constructor <init>(Ljava/time/chrono/HijrahChronology;J)V
    .locals 2

    invoke-direct {p0}, Ljava/time/chrono/ChronoLocalDateImpl;-><init>()V

    long-to-int v1, p2

    invoke-virtual {p1, v1}, Ljava/time/chrono/HijrahChronology;->getHijrahDateInfo(I)[I

    move-result-object v0

    iput-object p1, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    return-void
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/HijrahDate;
    .locals 1

    sget-object v0, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    invoke-virtual {v0, p0}, Ljava/time/chrono/HijrahChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method private getDayOfWeek()I
    .locals 6

    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    const-wide/16 v4, 0x7

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private getDayOfYear()I
    .locals 3

    iget-object v0, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    iget v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v2, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    invoke-virtual {v0, v1, v2}, Ljava/time/chrono/HijrahChronology;->getDayOfYear(II)I

    move-result v0

    iget v1, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getEraValue()I
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getProlepticMonth()J
    .locals 4

    iget v0, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget v2, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static now()Ljava/time/chrono/HijrahDate;
    .locals 1

    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/chrono/HijrahDate;->now(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;
    .locals 4

    sget-object v0, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    invoke-static {p0}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Ljava/time/chrono/HijrahDate;->ofEpochDay(Ljava/time/chrono/HijrahChronology;J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/ZoneId;)Ljava/time/chrono/HijrahDate;
    .locals 1

    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/chrono/HijrahDate;->now(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public static of(III)Ljava/time/chrono/HijrahDate;
    .locals 1

    sget-object v0, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    invoke-virtual {v0, p0, p1, p2}, Ljava/time/chrono/HijrahChronology;->date(III)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method static of(Ljava/time/chrono/HijrahChronology;III)Ljava/time/chrono/HijrahDate;
    .locals 1

    new-instance v0, Ljava/time/chrono/HijrahDate;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/time/chrono/HijrahDate;-><init>(Ljava/time/chrono/HijrahChronology;III)V

    return-object v0
.end method

.method static ofEpochDay(Ljava/time/chrono/HijrahChronology;J)Ljava/time/chrono/HijrahDate;
    .locals 1

    new-instance v0, Ljava/time/chrono/HijrahDate;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/chrono/HijrahDate;-><init>(Ljava/time/chrono/HijrahChronology;J)V

    return-object v0
.end method

.method static readExternal(Ljava/io/ObjectInput;)Ljava/time/chrono/HijrahDate;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahChronology;

    invoke-interface {p0}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    invoke-interface {p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v2

    invoke-interface {p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v1

    invoke-virtual {v0, v3, v2, v1}, Ljava/time/chrono/HijrahChronology;->date(III)Ljava/time/chrono/HijrahDate;

    move-result-object v4

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

.method private resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;
    .locals 2

    iget-object v1, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    invoke-virtual {v1, p1, p2}, Ljava/time/chrono/HijrahChronology;->getMonthLength(II)I

    move-result v0

    if-le p3, v0, :cond_0

    move p3, v0

    :cond_0
    iget-object v1, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    invoke-static {v1, p1, p2, p3}, Ljava/time/chrono/HijrahDate;->of(Ljava/time/chrono/HijrahChronology;III)Ljava/time/chrono/HijrahDate;

    move-result-object v1

    return-object v1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/time/chrono/Ser;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Ljava/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalTime;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<",
            "Ljava/time/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Ljava/time/chrono/HijrahDate;

    if-eqz v2, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/time/chrono/HijrahDate;

    iget v2, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v3, v0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    iget v3, v0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    iget v3, v0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/chrono/HijrahChronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public bridge synthetic getChronology()Ljava/time/chrono/Chronology;
    .locals 1

    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Ljava/time/chrono/HijrahChronology;
    .locals 1

    iget-object v0, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    return-object v0
.end method

.method public bridge synthetic getEra()Ljava/time/chrono/Era;
    .locals 1

    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->getEra()Ljava/time/chrono/HijrahEra;

    move-result-object v0

    return-object v0
.end method

.method public getEra()Ljava/time/chrono/HijrahEra;
    .locals 1

    sget-object v0, Ljava/time/chrono/HijrahEra;->AH:Ljava/time/chrono/HijrahEra;

    return-object v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 3

    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/time/chrono/HijrahDate;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v1

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getDayOfWeek()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :pswitch_1
    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getDayOfWeek()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0

    :pswitch_2
    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getDayOfYear()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0

    :pswitch_3
    iget v0, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    int-to-long v0, v0

    return-wide v0

    :pswitch_4
    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getDayOfYear()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :pswitch_5
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v0

    return-wide v0

    :pswitch_6
    iget v0, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0

    :pswitch_7
    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getDayOfYear()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0

    :pswitch_8
    iget v0, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    int-to-long v0, v0

    return-wide v0

    :pswitch_9
    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getProlepticMonth()J

    move-result-wide v0

    return-wide v0

    :pswitch_a
    iget v0, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    int-to-long v0, v0

    return-wide v0

    :pswitch_b
    iget v0, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    int-to-long v0, v0

    return-wide v0

    :pswitch_c
    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getEraValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public hashCode()I
    .locals 6

    iget v2, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v1, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    iget v0, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/chrono/HijrahChronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    and-int/lit16 v4, v2, -0x800

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v2, 0xb

    shl-int/lit8 v5, v1, 0x6

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    xor-int/2addr v3, v4

    return v3
.end method

.method public isLeapYear()Z
    .locals 4

    iget-object v0, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    iget v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/time/chrono/HijrahChronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public lengthOfMonth()I
    .locals 3

    iget-object v0, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    iget v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v2, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    invoke-virtual {v0, v1, v2}, Ljava/time/chrono/HijrahChronology;->getMonthLength(II)I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .locals 2

    iget-object v0, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    iget v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    invoke-virtual {v0, v1}, Ljava/time/chrono/HijrahChronology;->getYearLength(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/HijrahDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/HijrahDate;
    .locals 1

    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/HijrahDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic minusDays(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->minusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method minusDays(J)Ljava/time/chrono/HijrahDate;
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusDays(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method bridge synthetic minusMonths(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->minusMonths(J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method minusMonths(J)Ljava/time/chrono/HijrahDate;
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusMonths(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method bridge synthetic minusWeeks(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->minusWeeks(J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method minusWeeks(J)Ljava/time/chrono/HijrahDate;
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusWeeks(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method bridge synthetic minusYears(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->minusYears(J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method minusYears(J)Ljava/time/chrono/HijrahDate;
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusYears(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/HijrahDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/HijrahDate;
    .locals 1

    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/HijrahDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusDays(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method plusDays(J)Ljava/time/chrono/HijrahDate;
    .locals 5

    new-instance v0, Ljava/time/chrono/HijrahDate;

    iget-object v1, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/time/chrono/HijrahDate;-><init>(Ljava/time/chrono/HijrahChronology;J)V

    return-object v0
.end method

.method bridge synthetic plusMonths(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->plusMonths(J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method plusMonths(J)Ljava/time/chrono/HijrahDate;
    .locals 13

    const-wide/16 v10, 0xc

    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-nez v6, :cond_0

    return-object p0

    :cond_0
    iget v6, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    int-to-long v6, v6

    mul-long/2addr v6, v10

    iget v8, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    add-int/lit8 v8, v8, -0x1

    int-to-long v8, v8

    add-long v2, v6, v8

    add-long v0, v2, p1

    iget-object v6, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/time/chrono/HijrahChronology;->checkValidYear(J)I

    move-result v5

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    add-int/lit8 v4, v6, 0x1

    iget v6, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v5, v4, v6}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v6

    return-object v6
.end method

.method bridge synthetic plusWeeks(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->plusWeeks(J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method plusWeeks(J)Ljava/time/chrono/HijrahDate;
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->plusWeeks(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method bridge synthetic plusYears(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->plusYears(J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method plusYears(J)Ljava/time/chrono/HijrahDate;
    .locals 5

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    iget v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    long-to-int v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->addExact(II)I

    move-result v0

    iget v1, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    iget v2, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v0, v1, v2}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v1

    return-object v1
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 6

    const-wide/16 v4, 0x1

    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    invoke-static {}, Ljava/time/chrono/HijrahDate;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/time/chrono/HijrahChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :pswitch_1
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->lengthOfMonth()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v4, v5, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :pswitch_2
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->lengthOfYear()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v4, v5, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :pswitch_3
    const-wide/16 v2, 0x5

    invoke-static {v4, v5, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public toEpochDay()J
    .locals 4

    iget-object v0, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    iget v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v2, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    iget v3, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/time/chrono/HijrahChronology;->getEpochDay(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/time/chrono/ChronoLocalDateImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .locals 2

    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/chrono/ChronoPeriod;
    .locals 12

    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/time/chrono/HijrahChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    iget v8, v2, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v9, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    sub-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0xc

    iget v9, v2, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    iget v10, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-long v4, v8

    iget v8, v2, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    iget v9, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    sub-int v1, v8, v9

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_1

    if-gez v1, :cond_1

    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    invoke-virtual {p0, v4, v5}, Ljava/time/chrono/HijrahDate;->plusMonths(J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    invoke-virtual {v2}, Ljava/time/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/time/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-int v1, v8

    :cond_0
    :goto_0
    const-wide/16 v8, 0xc

    div-long v6, v4, v8

    const-wide/16 v8, 0xc

    rem-long v8, v4, v8

    long-to-int v3, v8

    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Math;->toIntExact(J)I

    move-result v9

    invoke-virtual {v8, v9, v3, v1}, Ljava/time/chrono/HijrahChronology;->period(III)Ljava/time/chrono/ChronoPeriod;

    move-result-object v8

    return-object v8

    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gez v8, :cond_0

    if-lez v1, :cond_0

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    invoke-virtual {v2}, Ljava/time/chrono/HijrahDate;->lengthOfMonth()I

    move-result v8

    sub-int/2addr v1, v8

    goto :goto_0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/HijrahDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/HijrahDate;
    .locals 1

    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/HijrahDate;
    .locals 6

    const-wide/16 v4, 0x7

    instance-of v2, p1, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    iget-object v2, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    invoke-virtual {v2, v0}, Ljava/time/chrono/HijrahChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2, p2, p3, v0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    long-to-int v1, p2

    invoke-static {}, Ljava/time/chrono/HijrahDate;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported field: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getDayOfWeek()I

    move-result v2

    int-to-long v2, v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    :pswitch_1
    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljava/time/chrono/HijrahDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    :pswitch_2
    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljava/time/chrono/HijrahDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    :pswitch_3
    iget v2, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v3, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    invoke-direct {p0, v2, v3, v1}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    :pswitch_4
    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->lengthOfYear()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getDayOfYear()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    :pswitch_5
    new-instance v2, Ljava/time/chrono/HijrahDate;

    iget-object v3, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    invoke-direct {v2, v3, p2, p3}, Ljava/time/chrono/HijrahDate;-><init>(Ljava/time/chrono/HijrahChronology;J)V

    return-object v2

    :pswitch_6
    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljava/time/chrono/HijrahDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    sub-long v2, p2, v2

    mul-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    :pswitch_7
    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljava/time/chrono/HijrahDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    sub-long v2, p2, v2

    mul-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    :pswitch_8
    iget v2, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v3, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v2, v1, v3}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    :pswitch_9
    invoke-direct {p0}, Ljava/time/chrono/HijrahDate;->getProlepticMonth()J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/HijrahDate;->plusMonths(J)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    :pswitch_a
    iget v2, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    :goto_0
    iget v2, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    iget v3, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v1, v2, v3}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    :cond_0
    rsub-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_b
    iget v2, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    iget v3, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v1, v2, v3}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    :pswitch_c
    iget v2, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    rsub-int/lit8 v2, v2, 0x1

    iget v3, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    iget v4, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v2, v3, v4}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/HijrahDate;

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/HijrahDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public withVariant(Ljava/time/chrono/HijrahChronology;)Ljava/time/chrono/HijrahDate;
    .locals 4

    iget-object v1, p0, Ljava/time/chrono/HijrahDate;->chrono:Ljava/time/chrono/HijrahChronology;

    if-ne v1, p1, :cond_0

    return-object p0

    :cond_0
    iget v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v2, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    invoke-virtual {p1, v1, v2}, Ljava/time/chrono/HijrahChronology;->getDayOfYear(II)I

    move-result v0

    iget v1, p0, Ljava/time/chrono/HijrahDate;->prolepticYear:I

    iget v2, p0, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    iget v3, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    if-le v3, v0, :cond_1

    :goto_0
    invoke-static {p1, v1, v2, v0}, Ljava/time/chrono/HijrahDate;->of(Ljava/time/chrono/HijrahChronology;III)Ljava/time/chrono/HijrahDate;

    move-result-object v1

    return-object v1

    :cond_1
    iget v0, p0, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    goto :goto_0
.end method

.method writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/HijrahDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/HijrahDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/HijrahDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    return-void
.end method
