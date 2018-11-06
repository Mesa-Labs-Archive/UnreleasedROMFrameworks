.class public final Ljava/time/ZonedDateTime;
.super Ljava/lang/Object;
.source "ZonedDateTime.java"

# interfaces
.implements Ljava/time/temporal/Temporal;
.implements Ljava/time/chrono/ChronoZonedDateTime;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/time/chrono/ChronoZonedDateTime",
        "<",
        "Ljava/time/LocalDate;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic -java-time-temporal-ChronoFieldSwitchesValues:[I = null

.field private static final serialVersionUID:J = -0x56e37a54888537c2L


# instance fields
.field private final dateTime:Ljava/time/LocalDateTime;

.field private final offset:Ljava/time/ZoneOffset;

.field private final zone:Ljava/time/ZoneId;


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoFieldSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/time/ZonedDateTime;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/time/ZonedDateTime;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1d

    :goto_0
    :try_start_1
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1c

    :goto_1
    :try_start_2
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1b

    :goto_2
    :try_start_3
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1a

    :goto_3
    :try_start_4
    sget-object v1, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_19

    :goto_4
    :try_start_5
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_18

    :goto_5
    :try_start_6
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_17

    :goto_6
    :try_start_7
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_16

    :goto_7
    :try_start_8
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_15

    :goto_8
    :try_start_9
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_14

    :goto_9
    :try_start_a
    sget-object v1, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_13

    :goto_a
    :try_start_b
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_12

    :goto_b
    :try_start_c
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_11

    :goto_c
    :try_start_d
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_10

    :goto_d
    :try_start_e
    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_f

    :goto_e
    :try_start_f
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_e

    :goto_f
    :try_start_10
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_d

    :goto_10
    :try_start_11
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_c

    :goto_11
    :try_start_12
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_b

    :goto_12
    :try_start_13
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_a

    :goto_13
    :try_start_14
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_9

    :goto_14
    :try_start_15
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_8

    :goto_15
    :try_start_16
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_7

    :goto_16
    :try_start_17
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_6

    :goto_17
    :try_start_18
    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_5

    :goto_18
    :try_start_19
    sget-object v1, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_4

    :goto_19
    :try_start_1a
    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_3

    :goto_1a
    :try_start_1b
    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_2

    :goto_1b
    :try_start_1c
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1

    :goto_1c
    :try_start_1d
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_0

    :goto_1d
    sput-object v0, Ljava/time/ZonedDateTime;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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

.method static synthetic -java_time_ZonedDateTime-mthref-0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;
    .locals 1

    invoke-static {p0}, Ljava/time/ZonedDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    iput-object p2, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    iput-object p3, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    return-void
.end method

.method private static create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 6

    invoke-virtual {p3}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v3

    int-to-long v4, p2

    invoke-static {p0, p1, v4, v5}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-static {p0, p1, p2, v2}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v1

    new-instance v4, Ljava/time/ZonedDateTime;

    invoke-direct {v4, v1, v2, p3}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v4
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;
    .locals 10

    instance-of v7, p0, Ljava/time/ZonedDateTime;

    if-eqz v7, :cond_0

    check-cast p0, Ljava/time/ZonedDateTime;

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/time/ZoneId;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneId;

    move-result-object v6

    sget-object v7, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v7}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v7}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    sget-object v7, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v7}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v4

    invoke-static {v2, v3, v4, v6}, Ljava/time/ZonedDateTime;->create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v7

    return-object v7

    :cond_1
    invoke-static {p0}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    invoke-static {p0}, Ljava/time/LocalTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;

    move-result-object v5

    invoke-static {v0, v5, v6}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    :catch_0
    move-exception v1

    new-instance v7, Ljava/time/DateTimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to obtain ZonedDateTime from TemporalAccessor: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " of type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public static now()Ljava/time/ZonedDateTime;
    .locals 1

    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/ZonedDateTime;->now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;
    .locals 2

    const-string/jumbo v1, "clock"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    return-object v1
.end method

.method public static now(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 1

    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/ZonedDateTime;->now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(IIIIIIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 2

    invoke-static/range {p0 .. p6}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p7, v1}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v1

    return-object v1
.end method

.method public static of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 1

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 3

    const-string/jumbo v0, "instant"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/time/Instant;->getNano()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Ljava/time/ZonedDateTime;->create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static ofInstant(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 3

    const-string/jumbo v0, "localDateTime"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "offset"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "zone"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/time/zone/ZoneRules;->isValidOffset(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/time/ZonedDateTime;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v2

    invoke-static {v0, v1, v2, p2}, Ljava/time/ZonedDateTime;->create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method private static ofLenient(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 2

    const-string/jumbo v0, "localDateTime"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "offset"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "zone"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p2, Ljava/time/ZoneOffset;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ZoneId must match ZoneOffset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/time/ZonedDateTime;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v4, "localDateTime"

    invoke-static {p0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "zone"

    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v4, p1, Ljava/time/ZoneOffset;

    if-eqz v4, :cond_0

    new-instance v5, Ljava/time/ZonedDateTime;

    move-object v4, p1

    check-cast v4, Ljava/time/ZoneOffset;

    invoke-direct {v5, p0, v4, p1}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v5

    :cond_0
    invoke-virtual {p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/time/zone/ZoneRules;->getValidOffsets(Ljava/time/LocalDateTime;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneOffset;

    :goto_0
    new-instance v4, Ljava/time/ZonedDateTime;

    invoke-direct {v4, p0, v0, p1}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v4

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, p0}, Ljava/time/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/zone/ZoneOffsetTransition;->getDuration()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object p0

    invoke-virtual {v2}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v0, p2

    goto :goto_0

    :cond_3
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/ZoneOffset;

    const-string/jumbo v5, "offset"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneOffset;

    goto :goto_0
.end method

.method public static ofStrict(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 5

    const-string/jumbo v2, "localDateTime"

    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v2, "offset"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v2, "zone"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/time/zone/ZoneRules;->isValidOffset(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p0}, Ljava/time/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "LocalDateTime \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' does not exist in zone \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' due to a gap in the local time-line, typically caused by daylight savings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v2, Ljava/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ZoneOffset \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' is not valid for LocalDateTime \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' in zone \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Ljava/time/ZonedDateTime;

    invoke-direct {v2, p0, p1, p2}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v2
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;
    .locals 1

    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_ZONED_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;
    .locals 1

    const-string/jumbo v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/time/-$Lambda$NNxQ89IdKrbbkCWqmUk0ib3Mvno;

    invoke-direct {v0}, Ljava/time/-$Lambda$NNxQ89IdKrbbkCWqmUk0ib3Mvno;-><init>()V

    invoke-virtual {p1, p0, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZonedDateTime;

    return-object v0
.end method

.method static readExternal(Ljava/io/ObjectInput;)Ljava/time/ZonedDateTime;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-static {p0}, Ljava/time/LocalDateTime;->readExternal(Ljava/io/DataInput;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-static {p0}, Ljava/time/ZoneOffset;->readExternal(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-static {p0}, Ljava/time/Ser;->read(Ljava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/ZoneId;

    invoke-static {v0, v1, v2}, Ljava/time/ZonedDateTime;->ofLenient(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

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

.method private resolveInstant(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;
    .locals 2

    iget-object v0, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-static {p1, v0, v1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method private resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;
    .locals 2

    iget-object v0, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {p1, v0, v1}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method private resolveOffset(Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;
    .locals 3

    iget-object v0, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {p1, v0}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    iget-object v1, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, v1, p1}, Ljava/time/zone/ZoneRules;->isValidOffset(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/time/ZonedDateTime;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v2, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-direct {v0, v1, p1, v2}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/time/Ser;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/time/chrono/ChronoZonedDateTime;

    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoZonedDateTime;->compareTo(Ljava/time/chrono/ChronoZonedDateTime;)I

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
    instance-of v2, p1, Ljava/time/ZonedDateTime;

    if-eqz v2, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/time/ZonedDateTime;

    iget-object v2, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v3, v0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    iget-object v3, v0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    iget-object v2, v0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-virtual {v1, v2}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .locals 2

    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/time/ZonedDateTime;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v1

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0

    :pswitch_0
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string/jumbo v1, "Invalid field \'InstantSeconds\' for get() method, use getLong() instead"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoZonedDateTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDayOfMonth()I
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()Ljava/time/DayOfWeek;
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfYear()I

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 2

    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/time/ZonedDateTime;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v1

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    return-wide v0

    :pswitch_1
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

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
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMinute()I
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v0

    return v0
.end method

.method public getMonth()Ljava/time/Month;
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v0

    return v0
.end method

.method public getNano()I
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v0

    return v0
.end method

.method public getOffset()Ljava/time/ZoneOffset;
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public getSecond()I
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    return v0
.end method

.method public getZone()Ljava/time/ZoneId;
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-virtual {v1}, Ljava/time/ZoneId;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 1

    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/time/chrono/ChronoZonedDateTime;->isSupported(Ljava/time/temporal/TemporalUnit;)Z

    move-result v0

    return v0
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/ZonedDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, p3}, Ljava/time/ZonedDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/ZonedDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;
    .locals 2

    instance-of v1, p1, Ljava/time/Period;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/time/Period;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1, v0}, Ljava/time/LocalDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "amountToSubtract"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v1

    check-cast v1, Ljava/time/ZonedDateTime;

    return-object v1
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/ZonedDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/ZonedDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusDays(J)Ljava/time/ZonedDateTime;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusHours(J)Ljava/time/ZonedDateTime;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/ZonedDateTime;->plusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusMinutes(J)Ljava/time/ZonedDateTime;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusMinutes(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/ZonedDateTime;->plusMinutes(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusMinutes(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusMonths(J)Ljava/time/ZonedDateTime;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusMonths(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/ZonedDateTime;->plusMonths(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusMonths(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusNanos(J)Ljava/time/ZonedDateTime;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusNanos(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/ZonedDateTime;->plusNanos(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusNanos(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusSeconds(J)Ljava/time/ZonedDateTime;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusSeconds(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/ZonedDateTime;->plusSeconds(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusSeconds(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusWeeks(J)Ljava/time/ZonedDateTime;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusWeeks(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/ZonedDateTime;->plusWeeks(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusWeeks(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusYears(J)Ljava/time/ZonedDateTime;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusYears(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/ZonedDateTime;->plusYears(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/ZonedDateTime;->plusYears(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;
    .locals 1

    instance-of v0, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/time/temporal/TemporalUnit;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2, p3}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2, p3}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveInstant(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/ZonedDateTime;

    return-object v0
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;
    .locals 2

    instance-of v1, p1, Ljava/time/Period;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/time/Period;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1, v0}, Ljava/time/LocalDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "amountToAdd"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v1

    check-cast v1, Ljava/time/ZonedDateTime;

    return-object v1
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/ZonedDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/ZonedDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusDays(J)Ljava/time/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusHours(J)Ljava/time/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusHours(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveInstant(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMinutes(J)Ljava/time/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusMinutes(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveInstant(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMonths(J)Ljava/time/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusMonths(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusNanos(J)Ljava/time/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusNanos(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveInstant(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Ljava/time/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveInstant(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusWeeks(J)Ljava/time/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusWeeks(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusYears(J)Ljava/time/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDateTime;->plusYears(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery",
            "<TR;>;)TR;"
        }
    .end annotation

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoZonedDateTime;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 1

    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_2

    sget-object v0, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDate()Ljava/time/LocalDate;
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toLocalDate()Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDateTime()Ljava/time/LocalDateTime;
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method public bridge synthetic toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;
    .locals 1

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public toLocalTime()Ljava/time/LocalTime;
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public toOffsetDateTime()Ljava/time/OffsetDateTime;
    .locals 2

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {v0, v1}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    iget-object v2, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-virtual {v2}, Ljava/time/ZoneId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .locals 4

    invoke-static {p1}, Ljava/time/ZonedDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;

    move-result-object v0

    instance-of v1, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-virtual {v0, v1}, Ljava/time/ZonedDateTime;->withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-interface {p2}, Ljava/time/temporal/TemporalUnit;->isDateBased()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v2, v0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1, v2, p2}, Ljava/time/LocalDateTime;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v2

    return-wide v2

    :cond_0
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/time/OffsetDateTime;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v2

    return-wide v2

    :cond_1
    invoke-interface {p2, p0, v0}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v2

    return-wide v2
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/ZonedDateTime;
    .locals 6

    instance-of v2, p1, Ljava/time/LocalDate;

    if-eqz v2, :cond_0

    check-cast p1, Ljava/time/LocalDate;

    iget-object v2, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v2

    return-object v2

    :cond_0
    instance-of v2, p1, Ljava/time/LocalTime;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v2

    check-cast p1, Ljava/time/LocalTime;

    invoke-static {v2, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v2

    return-object v2

    :cond_1
    instance-of v2, p1, Ljava/time/LocalDateTime;

    if-eqz v2, :cond_2

    check-cast p1, Ljava/time/LocalDateTime;

    invoke-direct {p0, p1}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v2

    return-object v2

    :cond_2
    instance-of v2, p1, Ljava/time/OffsetDateTime;

    if-eqz v2, :cond_3

    move-object v1, p1

    check-cast v1, Ljava/time/OffsetDateTime;

    invoke-virtual {v1}, Ljava/time/OffsetDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v2

    iget-object v3, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-virtual {v1}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v2

    return-object v2

    :cond_3
    instance-of v2, p1, Ljava/time/Instant;

    if-eqz v2, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/time/Instant;->getNano()I

    move-result v4

    iget-object v5, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-static {v2, v3, v4, v5}, Ljava/time/ZonedDateTime;->create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    return-object v2

    :cond_4
    instance-of v2, p1, Ljava/time/ZoneOffset;

    if-eqz v2, :cond_5

    check-cast p1, Ljava/time/ZoneOffset;

    invoke-direct {p0, p1}, Ljava/time/ZonedDateTime;->resolveOffset(Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v2

    return-object v2

    :cond_5
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/ZonedDateTime;

    return-object v2
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/ZonedDateTime;
    .locals 4

    instance-of v2, p1, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    invoke-static {}, Ljava/time/ZonedDateTime;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v2, p1, p2, p3}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v2

    return-object v2

    :pswitch_0
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getNano()I

    move-result v2

    iget-object v3, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-static {p2, p3, v2, v3}, Ljava/time/ZonedDateTime;->create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    return-object v2

    :pswitch_1
    invoke-virtual {v0, p2, p3}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    invoke-static {v2}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/time/ZonedDateTime;->resolveOffset(Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/ZonedDateTime;

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/ZonedDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/ZonedDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfMonth(I)Ljava/time/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withDayOfMonth(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfYear(I)Ljava/time/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withDayOfYear(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withEarlierOffsetAtOverlap()Ljava/time/ZonedDateTime;
    .locals 5

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v2

    iget-object v3, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v2, v3}, Ljava/time/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransition;->isOverlap()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v0

    iget-object v2, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/time/ZonedDateTime;

    iget-object v3, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v4, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-direct {v2, v3, v0, v4}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v2

    :cond_0
    return-object p0
.end method

.method public bridge synthetic withEarlierOffsetAtOverlap()Ljava/time/chrono/ChronoZonedDateTime;
    .locals 1

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->withEarlierOffsetAtOverlap()Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withFixedOffsetZone()Ljava/time/ZonedDateTime;
    .locals 4

    iget-object v0, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/time/ZonedDateTime;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v2, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    iget-object v3, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1, v2, v3}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withHour(I)Ljava/time/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withHour(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withLaterOffsetAtOverlap()Ljava/time/ZonedDateTime;
    .locals 5

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v2

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v0

    iget-object v2, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/time/ZonedDateTime;

    iget-object v3, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v4, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-direct {v2, v3, v0, v4}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v2

    :cond_0
    return-object p0
.end method

.method public bridge synthetic withLaterOffsetAtOverlap()Ljava/time/chrono/ChronoZonedDateTime;
    .locals 1

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->withLaterOffsetAtOverlap()Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMinute(I)Ljava/time/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withMinute(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMonth(I)Ljava/time/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withMonth(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withNano(I)Ljava/time/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withNano(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withSecond(I)Ljava/time/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withSecond(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withYear(I)Ljava/time/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->withYear(I)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 3

    const-string/jumbo v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-virtual {v0, p1}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v0

    iget-object v2, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getNano()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Ljava/time/ZonedDateTime;->create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public bridge synthetic withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withZoneSameLocal(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 2

    const-string/jumbo v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-virtual {v0, p1}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    iget-object v1, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {v0, p1, v1}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public bridge synthetic withZoneSameLocal(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->withZoneSameLocal(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

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

    iget-object v0, p0, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->writeExternal(Ljava/io/DataOutput;)V

    iget-object v0, p0, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, p1}, Ljava/time/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    iget-object v0, p0, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-virtual {v0, p1}, Ljava/time/ZoneId;->write(Ljava/io/DataOutput;)V

    return-void
.end method
