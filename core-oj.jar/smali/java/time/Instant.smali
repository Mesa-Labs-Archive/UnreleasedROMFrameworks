.class public final Ljava/time/Instant;
.super Ljava/lang/Object;
.source "Instant.java"

# interfaces
.implements Ljava/time/temporal/Temporal;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/time/Instant;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic -java-time-temporal-ChronoFieldSwitchesValues:[I = null

.field private static final synthetic -java-time-temporal-ChronoUnitSwitchesValues:[I = null

.field public static final EPOCH:Ljava/time/Instant;

.field public static final MAX:Ljava/time/Instant;

.field private static final MAX_SECOND:J = 0x701cd2fa9578ffL

.field public static final MIN:Ljava/time/Instant;

.field private static final MIN_SECOND:J = -0x701cefeb9bec00L

.field private static final serialVersionUID:J = -0x93d170fdcc5dce4L


# instance fields
.field private final nanos:I

.field private final seconds:J


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoFieldSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/time/Instant;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/time/Instant;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1d

    :goto_0
    :try_start_1
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1c

    :goto_1
    :try_start_2
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1b

    :goto_2
    :try_start_3
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1a

    :goto_3
    :try_start_4
    sget-object v1, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_19

    :goto_4
    :try_start_5
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_18

    :goto_5
    :try_start_6
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_17

    :goto_6
    :try_start_7
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_16

    :goto_7
    :try_start_8
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_15

    :goto_8
    :try_start_9
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_14

    :goto_9
    :try_start_a
    sget-object v1, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_13

    :goto_a
    :try_start_b
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_12

    :goto_b
    :try_start_c
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_11

    :goto_c
    :try_start_d
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

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

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_e

    :goto_f
    :try_start_10
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_d

    :goto_10
    :try_start_11
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_c

    :goto_11
    :try_start_12
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_b

    :goto_12
    :try_start_13
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_a

    :goto_13
    :try_start_14
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_9

    :goto_14
    :try_start_15
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_8

    :goto_15
    :try_start_16
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_7

    :goto_16
    :try_start_17
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_6

    :goto_17
    :try_start_18
    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_5

    :goto_18
    :try_start_19
    sget-object v1, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_4

    :goto_19
    :try_start_1a
    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_3

    :goto_1a
    :try_start_1b
    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_2

    :goto_1b
    :try_start_1c
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1

    :goto_1c
    :try_start_1d
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_0

    :goto_1d
    sput-object v0, Ljava/time/Instant;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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

.method private static synthetic -getjava-time-temporal-ChronoUnitSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/time/Instant;->-java-time-temporal-ChronoUnitSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/time/Instant;->-java-time-temporal-ChronoUnitSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Ljava/time/temporal/ChronoUnit;->values()[Ljava/time/temporal/ChronoUnit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ljava/time/temporal/ChronoUnit;->CENTURIES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_f

    :goto_0
    :try_start_1
    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_e

    :goto_1
    :try_start_2
    sget-object v1, Ljava/time/temporal/ChronoUnit;->DECADES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_d

    :goto_2
    :try_start_3
    sget-object v1, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_c

    :goto_3
    :try_start_4
    sget-object v1, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_b

    :goto_4
    :try_start_5
    sget-object v1, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_a

    :goto_5
    :try_start_6
    sget-object v1, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_9

    :goto_6
    :try_start_7
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_8

    :goto_7
    :try_start_8
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MILLENNIA:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_7

    :goto_8
    :try_start_9
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_6

    :goto_9
    :try_start_a
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_5

    :goto_a
    :try_start_b
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_4

    :goto_b
    :try_start_c
    sget-object v1, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_3

    :goto_c
    :try_start_d
    sget-object v1, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_2

    :goto_d
    :try_start_e
    sget-object v1, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_1

    :goto_e
    :try_start_f
    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_0

    :goto_f
    sput-object v0, Ljava/time/Instant;->-java-time-temporal-ChronoUnitSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_f

    :catch_1
    move-exception v1

    goto :goto_e

    :catch_2
    move-exception v1

    goto :goto_d

    :catch_3
    move-exception v1

    goto :goto_c

    :catch_4
    move-exception v1

    goto :goto_b

    :catch_5
    move-exception v1

    goto :goto_a

    :catch_6
    move-exception v1

    goto :goto_9

    :catch_7
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v1

    goto :goto_7

    :catch_9
    move-exception v1

    goto :goto_6

    :catch_a
    move-exception v1

    goto :goto_5

    :catch_b
    move-exception v1

    goto/16 :goto_4

    :catch_c
    move-exception v1

    goto/16 :goto_3

    :catch_d
    move-exception v1

    goto/16 :goto_2

    :catch_e
    move-exception v1

    goto/16 :goto_1

    :catch_f
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic -java_time_Instant-mthref-0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;
    .locals 1

    invoke-static {p0}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    new-instance v0, Ljava/time/Instant;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Ljava/time/Instant;-><init>(JI)V

    sput-object v0, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    const-wide v0, -0x701cefeb9bec00L

    invoke-static {v0, v1, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v0

    sput-object v0, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    const-wide/32 v0, 0x3b9ac9ff

    const-wide v2, 0x701cd2fa9578ffL

    invoke-static {v2, v3, v0, v1}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v0

    sput-object v0, Ljava/time/Instant;->MAX:Ljava/time/Instant;

    return-void
.end method

.method private constructor <init>(JI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljava/time/Instant;->seconds:J

    iput p3, p0, Ljava/time/Instant;->nanos:I

    return-void
.end method

.method private static create(JI)Ljava/time/Instant;
    .locals 4

    int-to-long v0, p2

    or-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    return-object v0

    :cond_0
    const-wide v0, -0x701cefeb9bec00L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x701cd2fa9578ffL

    cmp-long v0, p0, v0

    if-lez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/time/DateTimeException;

    const-string/jumbo v1, "Instant exceeds minimum or maximum instant"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/time/Instant;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/Instant;-><init>(JI)V

    return-object v0
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;
    .locals 7

    instance-of v4, p0, Ljava/time/Instant;

    if-eqz v4, :cond_0

    check-cast p0, Ljava/time/Instant;

    return-object p0

    :cond_0
    const-string/jumbo v4, "temporal"

    invoke-static {p0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    sget-object v4, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v4}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v0

    new-instance v4, Ljava/time/DateTimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to obtain Instant from TemporalAccessor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private nanosUntil(Ljava/time/Instant;)J
    .locals 8

    iget-wide v4, p1, Ljava/time/Instant;->seconds:J

    iget-wide v6, p0, Ljava/time/Instant;->seconds:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v0

    const-wide/32 v4, 0x3b9aca00

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    iget v4, p1, Ljava/time/Instant;->nanos:I

    iget v5, p0, Ljava/time/Instant;->nanos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method public static now()Ljava/time/Instant;
    .locals 1

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/Instant;
    .locals 1

    const-string/jumbo v0, "clock"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static ofEpochMilli(J)Ljava/time/Instant;
    .locals 6

    const-wide/16 v4, 0x3e8

    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v2

    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    const v1, 0xf4240

    mul-int/2addr v1, v0

    invoke-static {v2, v3, v1}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object v1

    return-object v1
.end method

.method public static ofEpochSecond(J)Ljava/time/Instant;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static ofEpochSecond(JJ)Ljava/time/Instant;
    .locals 8

    const-wide/32 v6, 0x3b9aca00

    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v4

    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v2

    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    invoke-static {v2, v3, v0}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object v1

    return-object v1
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/Instant;
    .locals 2

    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

    new-instance v1, Ljava/time/-$Lambda$CgZRCvRFe4TjYjhKtuznUEGaKyw;

    invoke-direct {v1}, Ljava/time/-$Lambda$CgZRCvRFe4TjYjhKtuznUEGaKyw;-><init>()V

    invoke-virtual {v0, p0, v1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    return-object v0
.end method

.method private plus(JJ)Ljava/time/Instant;
    .locals 11

    const-wide/32 v8, 0x3b9aca00

    or-long v4, p1, p3

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    return-object p0

    :cond_0
    iget-wide v4, p0, Ljava/time/Instant;->seconds:J

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    div-long v4, p3, v8

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    rem-long/2addr p3, v8

    iget v4, p0, Ljava/time/Instant;->nanos:I

    int-to-long v4, v4

    add-long v2, v4, p3

    invoke-static {v0, v1, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v4

    return-object v4
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/Instant;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v1

    return-object v1
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

.method private secondsUntil(Ljava/time/Instant;)J
    .locals 12

    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x0

    iget-wide v4, p1, Ljava/time/Instant;->seconds:J

    iget-wide v6, p0, Ljava/time/Instant;->seconds:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v2

    iget v4, p1, Ljava/time/Instant;->nanos:I

    iget v5, p0, Ljava/time/Instant;->nanos:I

    sub-int/2addr v4, v5

    int-to-long v0, v4

    cmp-long v4, v2, v8

    if-lez v4, :cond_1

    cmp-long v4, v0, v8

    if-gez v4, :cond_1

    sub-long/2addr v2, v10

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    cmp-long v4, v2, v8

    if-gez v4, :cond_0

    cmp-long v4, v0, v8

    if-lez v4, :cond_0

    add-long/2addr v2, v10

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/time/Ser;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 4

    sget-object v0, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    iget-wide v2, p0, Ljava/time/Instant;->seconds:J

    invoke-interface {p1, v0, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    iget v2, p0, Ljava/time/Instant;->nanos:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;
    .locals 1

    invoke-static {p0, p1}, Ljava/time/OffsetDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 1

    invoke-static {p0, p1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/time/Instant;

    invoke-virtual {p0, p1}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/time/Instant;)I
    .locals 6

    iget-wide v2, p0, Ljava/time/Instant;->seconds:J

    iget-wide v4, p1, Ljava/time/Instant;->seconds:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v1, p0, Ljava/time/Instant;->nanos:I

    iget v2, p1, Ljava/time/Instant;->nanos:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Ljava/time/Instant;

    if-eqz v3, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/time/Instant;

    iget-wide v4, p0, Ljava/time/Instant;->seconds:J

    iget-wide v6, v0, Ljava/time/Instant;->seconds:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget v3, p0, Ljava/time/Instant;->nanos:I

    iget v4, v0, Ljava/time/Instant;->nanos:I

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

.method public get(Ljava/time/temporal/TemporalField;)I
    .locals 4

    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/time/Instant;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v1

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
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
    iget v0, p0, Ljava/time/Instant;->nanos:I

    return v0

    :pswitch_1
    iget v0, p0, Ljava/time/Instant;->nanos:I

    div-int/lit16 v0, v0, 0x3e8

    return v0

    :pswitch_2
    iget v0, p0, Ljava/time/Instant;->nanos:I

    const v1, 0xf4240

    div-int/2addr v0, v1

    return v0

    :pswitch_3
    sget-object v0, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    iget-wide v2, p0, Ljava/time/Instant;->seconds:J

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/time/Instant;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getEpochSecond()J
    .locals 2

    iget-wide v0, p0, Ljava/time/Instant;->seconds:J

    return-wide v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 3

    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/time/Instant;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

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
    iget v0, p0, Ljava/time/Instant;->nanos:I

    int-to-long v0, v0

    return-wide v0

    :pswitch_1
    iget v0, p0, Ljava/time/Instant;->nanos:I

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0

    :pswitch_2
    iget v0, p0, Ljava/time/Instant;->nanos:I

    const v1, 0xf4240

    div-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    :pswitch_3
    iget-wide v0, p0, Ljava/time/Instant;->seconds:J

    return-wide v0

    :cond_0
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getNano()I
    .locals 1

    iget v0, p0, Ljava/time/Instant;->nanos:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Ljava/time/Instant;->seconds:J

    iget-wide v2, p0, Ljava/time/Instant;->seconds:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Ljava/time/Instant;->nanos:I

    mul-int/lit8 v1, v1, 0x33

    add-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Ljava/time/Instant;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isBefore(Ljava/time/Instant;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_2

    sget-object v2, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    if-eq p1, v2, :cond_0

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    if-eq p1, v2, :cond_0

    sget-object v2, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Ljava/time/temporal/ChronoUnit;

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalUnit;->isSupportedBy(Ljava/time/temporal/Temporal;)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, p3}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v0

    goto :goto_0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;
    .locals 1

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/Instant;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public minusMillis(J)Ljava/time/Instant;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public minusNanos(J)Ljava/time/Instant;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public minusSeconds(J)Ljava/time/Instant;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;
    .locals 7

    const-wide/32 v2, 0xf4240

    instance-of v0, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/time/Instant;->-getjava-time-temporal-ChronoUnitSwitchesValues()[I

    move-result-object v1

    move-object v0, p3

    check-cast v0, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    :pswitch_1
    div-long v0, p1, v2

    rem-long v2, p1, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/time/Instant;->plus(JJ)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    :pswitch_4
    const-wide/16 v0, 0x3c

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    :pswitch_5
    const-wide/16 v0, 0xe10

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    :pswitch_6
    const-wide/32 v0, 0xa8c0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    :pswitch_7
    const-wide/32 v0, 0x15180

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;
    .locals 1

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public plusMillis(J)Ljava/time/Instant;
    .locals 7

    const-wide/16 v2, 0x3e8

    div-long v0, p1, v2

    rem-long v2, p1, v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/time/Instant;->plus(JJ)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public plusNanos(J)Ljava/time/Instant;
    .locals 3

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Ljava/time/Instant;->plus(JJ)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Ljava/time/Instant;
    .locals 3

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/time/Instant;->plus(JJ)Ljava/time/Instant;

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

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    sget-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    :cond_0
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 1

    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toEpochMilli()J
    .locals 12

    const-wide/16 v10, 0x3e8

    const v8, 0xf4240

    iget-wide v4, p0, Ljava/time/Instant;->seconds:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    iget v4, p0, Ljava/time/Instant;->nanos:I

    if-lez v4, :cond_0

    iget-wide v4, p0, Ljava/time/Instant;->seconds:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    iget v4, p0, Ljava/time/Instant;->nanos:I

    div-int/2addr v4, v8

    add-int/lit16 v4, v4, -0x3e8

    int-to-long v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v4

    return-wide v4

    :cond_0
    iget-wide v4, p0, Ljava/time/Instant;->seconds:J

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    iget v4, p0, Ljava/time/Instant;->nanos:I

    div-int/2addr v4, v8

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/Instant;
    .locals 14

    const-wide/32 v12, 0x15180

    sget-object v7, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v7, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/time/temporal/TemporalUnit;->getDuration()Ljava/time/Duration;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v8

    cmp-long v7, v8, v12

    if-lez v7, :cond_1

    new-instance v7, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string/jumbo v8, "Unit is too large to be used for truncation"

    invoke-direct {v7, v8}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    invoke-virtual {v6}, Ljava/time/Duration;->toNanos()J

    move-result-wide v0

    const-wide v8, 0x4e94914f0000L

    rem-long/2addr v8, v0

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    new-instance v7, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string/jumbo v8, "Unit must divide into a standard day without remainder"

    invoke-direct {v7, v8}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    iget-wide v8, p0, Ljava/time/Instant;->seconds:J

    rem-long/2addr v8, v12

    const-wide/32 v10, 0x3b9aca00

    mul-long/2addr v8, v10

    iget v7, p0, Ljava/time/Instant;->nanos:I

    int-to-long v10, v7

    add-long v2, v8, v10

    div-long v8, v2, v0

    mul-long v4, v8, v0

    sub-long v8, v4, v2

    invoke-virtual {p0, v8, v9}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object v7

    return-object v7
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .locals 6

    invoke-static {p1}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object v0

    instance-of v2, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v2, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/time/temporal/ChronoUnit;

    invoke-static {}, Ljava/time/Instant;->-getjava-time-temporal-ChronoUnitSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported unit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-direct {p0, v0}, Ljava/time/Instant;->nanosUntil(Ljava/time/Instant;)J

    move-result-wide v2

    return-wide v2

    :pswitch_1
    invoke-direct {p0, v0}, Ljava/time/Instant;->nanosUntil(Ljava/time/Instant;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    return-wide v2

    :pswitch_2
    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v2

    return-wide v2

    :pswitch_3
    invoke-direct {p0, v0}, Ljava/time/Instant;->secondsUntil(Ljava/time/Instant;)J

    move-result-wide v2

    return-wide v2

    :pswitch_4
    invoke-direct {p0, v0}, Ljava/time/Instant;->secondsUntil(Ljava/time/Instant;)J

    move-result-wide v2

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    return-wide v2

    :pswitch_5
    invoke-direct {p0, v0}, Ljava/time/Instant;->secondsUntil(Ljava/time/Instant;)J

    move-result-wide v2

    const-wide/16 v4, 0xe10

    div-long/2addr v2, v4

    return-wide v2

    :pswitch_6
    invoke-direct {p0, v0}, Ljava/time/Instant;->secondsUntil(Ljava/time/Instant;)J

    move-result-wide v2

    const-wide/32 v4, 0xa8c0

    div-long/2addr v2, v4

    return-wide v2

    :pswitch_7
    invoke-direct {p0, v0}, Ljava/time/Instant;->secondsUntil(Ljava/time/Instant;)J

    move-result-wide v2

    const-wide/32 v4, 0x15180

    div-long/2addr v2, v4

    return-wide v2

    :cond_0
    invoke-interface {p2, p0, v0}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v2

    return-wide v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/Instant;
    .locals 1

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/Instant;
    .locals 6

    instance-of v2, p1, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, p2, p3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    invoke-static {}, Ljava/time/Instant;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

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
    long-to-int v2, p2

    const v3, 0xf4240

    mul-int v1, v2, v3

    iget v2, p0, Ljava/time/Instant;->nanos:I

    if-eq v1, v2, :cond_0

    iget-wide v2, p0, Ljava/time/Instant;->seconds:J

    invoke-static {v2, v3, v1}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object p0

    :cond_0
    return-object p0

    :pswitch_1
    long-to-int v2, p2

    mul-int/lit16 v1, v2, 0x3e8

    iget v2, p0, Ljava/time/Instant;->nanos:I

    if-eq v1, v2, :cond_1

    iget-wide v2, p0, Ljava/time/Instant;->seconds:J

    invoke-static {v2, v3, v1}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object p0

    :cond_1
    return-object p0

    :pswitch_2
    iget v2, p0, Ljava/time/Instant;->nanos:I

    int-to-long v2, v2

    cmp-long v2, p2, v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Ljava/time/Instant;->seconds:J

    long-to-int v4, p2

    invoke-static {v2, v3, v4}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object p0

    :cond_2
    return-object p0

    :pswitch_3
    iget-wide v2, p0, Ljava/time/Instant;->seconds:J

    cmp-long v2, p2, v2

    if-eqz v2, :cond_3

    iget v2, p0, Ljava/time/Instant;->nanos:I

    invoke-static {p2, p3, v2}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object p0

    :cond_3
    return-object p0

    :cond_4
    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/Instant;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/Instant;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/Instant;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Ljava/time/Instant;->seconds:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    iget v0, p0, Ljava/time/Instant;->nanos:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method
