.class final Ljava/time/chrono/ChronoZonedDateTimeImpl;
.super Ljava/lang/Object;
.source "ChronoZonedDateTimeImpl.java"

# interfaces
.implements Ljava/time/chrono/ChronoZonedDateTime;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Ljava/time/chrono/ChronoLocalDate;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/time/chrono/ChronoZonedDateTime",
        "<TD;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic -java-time-temporal-ChronoFieldSwitchesValues:[I = null

.field private static final serialVersionUID:J = -0x4905b7f16d4b26a7L


# instance fields
.field private final transient dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation
.end field

.field private final transient offset:Ljava/time/ZoneOffset;

.field private final transient zone:Ljava/time/ZoneId;


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoFieldSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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
    sput-object v0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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

.method private constructor <init>(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;",
            "Ljava/time/ZoneOffset;",
            "Ljava/time/ZoneId;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "dateTime"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    iput-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    const-string/jumbo v0, "offset"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneOffset;

    iput-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    const-string/jumbo v0, "zone"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    iput-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    return-void
.end method

.method private create(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTimeImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-static {v0, p1, p2}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ofInstant(Ljava/time/chrono/Chronology;Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method static ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoZonedDateTimeImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/chrono/ChronoLocalDate;",
            ">(",
            "Ljava/time/chrono/Chronology;",
            "Ljava/time/temporal/Temporal;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTimeImpl",
            "<TR;>;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    invoke-virtual {v0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Chronology mismatch, required: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v3

    invoke-interface {v3}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method static ofBest(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/chrono/ChronoLocalDate;",
            ">(",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TR;>;",
            "Ljava/time/ZoneId;",
            "Ljava/time/ZoneOffset;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TR;>;"
        }
    .end annotation

    const/4 v7, 0x0

    const-string/jumbo v5, "localDateTime"

    invoke-static {p0, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v5, "zone"

    invoke-static {p1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v5, p1, Ljava/time/ZoneOffset;

    if-eqz v5, :cond_0

    new-instance v6, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-object v5, p1

    check-cast v5, Ljava/time/ZoneOffset;

    invoke-direct {v6, p0, v5, p1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;-><init>(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v6

    :cond_0
    invoke-virtual {p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v2

    invoke-static {p0}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/time/zone/ZoneRules;->getValidOffsets(Ljava/time/LocalDateTime;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/ZoneOffset;

    :goto_0
    const-string/jumbo v5, "offset"

    invoke-static {v1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v5, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    invoke-direct {v5, p0, v1, p1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;-><init>(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v5

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2, v0}, Ljava/time/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getDuration()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusSeconds(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p0

    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {v4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v1, p2

    goto :goto_0

    :cond_3
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/ZoneOffset;

    goto :goto_0
.end method

.method static ofInstant(Ljava/time/chrono/Chronology;Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTimeImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/Chronology;",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTimeImpl",
            "<*>;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v2

    const-string/jumbo v4, "offset"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/time/Instant;->getNano()I

    move-result v6

    invoke-static {v4, v5, v6, v2}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/time/chrono/Chronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    new-instance v4, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    invoke-direct {v4, v0, v2, p2}, Ljava/time/chrono/ChronoZonedDateTimeImpl;-><init>(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v4
.end method

.method static readExternal(Ljava/io/ObjectInput;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInput;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ChronoLocalDateTime;

    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/ZoneOffset;

    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/ZoneId;

    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoLocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/time/chrono/ChronoZonedDateTime;->withZoneSameLocal(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

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

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/time/chrono/Ser;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Ljava/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

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
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v2, p1, Ljava/time/chrono/ChronoZonedDateTime;

    if-eqz v2, :cond_2

    check-cast p1, Ljava/time/chrono/ChronoZonedDateTime;

    invoke-virtual {p0, p1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->compareTo(Ljava/time/chrono/ChronoZonedDateTime;)I

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getOffset()Ljava/time/ZoneOffset;
    .locals 1

    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public getZone()Ljava/time/ZoneId;
    .locals 1

    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDateTime;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getZone()Ljava/time/ZoneId;

    move-result-object v1

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

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-interface {p0, p1, p2, p3}, Ljava/time/chrono/ChronoZonedDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoZonedDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/time/temporal/TemporalUnit;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    instance-of v0, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoZonedDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<TD;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    invoke-interface {v2}, Ljava/time/chrono/ChronoLocalDateTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getZone()Ljava/time/ZoneId;

    move-result-object v2

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

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .locals 4

    const-string/jumbo v1, "endExclusive"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/time/chrono/Chronology;->zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    instance-of v1, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoZonedDateTime;->withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-interface {v0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v2

    return-wide v2

    :cond_0
    const-string/jumbo v1, "unit"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p2, p0, v0}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v2

    return-wide v2
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalField;",
            "J)",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    instance-of v2, p1, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    invoke-static {}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v2, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v2

    iget-object v3, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    iget-object v4, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    invoke-static {v2, v3, v4}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ofBest(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v2

    return-object v2

    :pswitch_0
    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->toEpochSecond()J

    move-result-wide v2

    sub-long v2, p2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0, v2, v3, v4}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v2

    return-object v2

    :pswitch_1
    invoke-virtual {v0, p2, p3}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    invoke-static {v2}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v1

    iget-object v2, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v2, v1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v2

    iget-object v3, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    invoke-direct {p0, v2, v3}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->create(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v2

    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoZonedDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withEarlierOffsetAtOverlap()Ljava/time/chrono/ChronoZonedDateTime;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v2

    invoke-static {p0}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransition;->isOverlap()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v0

    iget-object v2, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    iget-object v3, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    iget-object v4, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    invoke-direct {v2, v3, v0, v4}, Ljava/time/chrono/ChronoZonedDateTimeImpl;-><init>(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v2

    :cond_0
    return-object p0
.end method

.method public withLaterOffsetAtOverlap()Ljava/time/chrono/ChronoZonedDateTime;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v2

    invoke-static {p0}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    iget-object v3, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    iget-object v4, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    invoke-direct {v2, v3, v0, v4}, Ljava/time/chrono/ChronoZonedDateTimeImpl;-><init>(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    return-object v2

    :cond_0
    return-object p0
.end method

.method public withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    const-string/jumbo v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    invoke-virtual {v0, p1}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    iget-object v1, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->create(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object p0

    goto :goto_0
.end method

.method public withZoneSameLocal(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    iget-object v1, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    invoke-static {v0, p1, v1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ofBest(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
