.class final Ljava/time/chrono/ChronoLocalDateTimeImpl;
.super Ljava/lang/Object;
.source "ChronoLocalDateTimeImpl.java"

# interfaces
.implements Ljava/time/chrono/ChronoLocalDateTime;
.implements Ljava/time/temporal/Temporal;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Ljava/time/chrono/ChronoLocalDate;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/time/chrono/ChronoLocalDateTime",
        "<TD;>;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic -java-time-temporal-ChronoUnitSwitchesValues:[I = null

.field static final HOURS_PER_DAY:I = 0x18

.field static final MICROS_PER_DAY:J = 0x141dd76000L

.field static final MILLIS_PER_DAY:J = 0x5265c00L

.field static final MINUTES_PER_DAY:I = 0x5a0

.field static final MINUTES_PER_HOUR:I = 0x3c

.field static final NANOS_PER_DAY:J = 0x4e94914f0000L

.field static final NANOS_PER_HOUR:J = 0x34630b8a000L

.field static final NANOS_PER_MINUTE:J = 0xdf8475800L

.field static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field static final SECONDS_PER_DAY:I = 0x15180

.field static final SECONDS_PER_HOUR:I = 0xe10

.field static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final serialVersionUID:J = 0x3f3a2d24660eebe2L


# instance fields
.field private final transient date:Ljava/time/chrono/ChronoLocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private final transient time:Ljava/time/LocalTime;


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoUnitSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->-java-time-temporal-ChronoUnitSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->-java-time-temporal-ChronoUnitSwitchesValues:[I

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

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_f

    :goto_0
    :try_start_1
    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_e

    :goto_1
    :try_start_2
    sget-object v1, Ljava/time/temporal/ChronoUnit;->DECADES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_d

    :goto_2
    :try_start_3
    sget-object v1, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_c

    :goto_3
    :try_start_4
    sget-object v1, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_b

    :goto_4
    :try_start_5
    sget-object v1, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_a

    :goto_5
    :try_start_6
    sget-object v1, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_9

    :goto_6
    :try_start_7
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_8

    :goto_7
    :try_start_8
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MILLENNIA:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_7

    :goto_8
    :try_start_9
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_6

    :goto_9
    :try_start_a
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_5

    :goto_a
    :try_start_b
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_4

    :goto_b
    :try_start_c
    sget-object v1, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_3

    :goto_c
    :try_start_d
    sget-object v1, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_2

    :goto_d
    :try_start_e
    sget-object v1, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_1

    :goto_e
    :try_start_f
    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_0

    :goto_f
    sput-object v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->-java-time-temporal-ChronoUnitSwitchesValues:[I

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

.method private constructor <init>(Ljava/time/chrono/ChronoLocalDate;Ljava/time/LocalTime;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/time/LocalTime;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "date"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "time"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    iput-object p2, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    return-void
.end method

.method static ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/chrono/ChronoLocalDate;",
            ">(",
            "Ljava/time/chrono/Chronology;",
            "Ljava/time/temporal/Temporal;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TR;>;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v0}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

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

    invoke-virtual {v0}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

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

.method static of(Ljava/time/chrono/ChronoLocalDate;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/chrono/ChronoLocalDate;",
            ">(TR;",
            "Ljava/time/LocalTime;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TR;>;"
        }
    .end annotation

    new-instance v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-direct {v0, p0, p1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;-><init>(Ljava/time/chrono/ChronoLocalDate;Ljava/time/LocalTime;)V

    return-object v0
.end method

.method private plusDays(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, p1, p2, v1}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method private plusHours(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    const-wide/16 v4, 0x0

    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    move-object v0, p0

    move-wide v2, p1

    move-wide v6, v4

    move-wide v8, v4

    invoke-direct/range {v0 .. v9}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Ljava/time/chrono/ChronoLocalDate;JJJJ)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method private plusMinutes(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    move-wide v8, v2

    invoke-direct/range {v0 .. v9}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Ljava/time/chrono/ChronoLocalDate;JJJJ)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method private plusNanos(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, v2

    move-wide v8, p1

    invoke-direct/range {v0 .. v9}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Ljava/time/chrono/ChronoLocalDate;JJJJ)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method private plusWithOverflow(Ljava/time/chrono/ChronoLocalDate;JJJJ)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;JJJJ)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    or-long v12, p2, p4

    or-long v12, v12, p6

    or-long v12, v12, p8

    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-nez v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v7

    return-object v7

    :cond_0
    const-wide v12, 0x4e94914f0000L

    div-long v12, p8, v12

    const-wide/32 v14, 0x15180

    div-long v14, p6, v14

    add-long/2addr v12, v14

    const-wide/16 v14, 0x5a0

    div-long v14, p4, v14

    add-long/2addr v12, v14

    const-wide/16 v14, 0x18

    div-long v14, p2, v14

    add-long v8, v12, v14

    const-wide v12, 0x4e94914f0000L

    rem-long v12, p8, v12

    const-wide/32 v14, 0x15180

    rem-long v14, p6, v14

    const-wide/32 v16, 0x3b9aca00

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    const-wide/16 v14, 0x5a0

    rem-long v14, p4, v14

    const-wide v16, 0xdf8475800L

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    const-wide/16 v14, 0x18

    rem-long v14, p2, v14

    const-wide v16, 0x34630b8a000L

    mul-long v14, v14, v16

    add-long v10, v12, v14

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-virtual {v7}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    add-long/2addr v10, v2

    const-wide v12, 0x4e94914f0000L

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v12

    add-long/2addr v8, v12

    const-wide v12, 0x4e94914f0000L

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v4

    cmp-long v7, v4, v2

    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    :goto_0
    sget-object v7, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    move-object/from16 v0, p1

    invoke-interface {v0, v8, v9, v7}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v7

    return-object v7

    :cond_1
    invoke-static {v4, v5}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v6

    goto :goto_0
.end method

.method static readExternal(Ljava/io/ObjectInput;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInput;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime",
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

    check-cast v0, Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/LocalTime;

    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoLocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    return-object v2
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

.method private with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/Temporal;",
            "Ljava/time/LocalTime;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    if-ne v1, p2, :cond_0

    return-object p0

    :cond_0
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    new-instance v1, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-direct {v1, v0, p2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;-><init>(Ljava/time/chrono/ChronoLocalDate;Ljava/time/LocalTime;)V

    return-object v1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/time/chrono/Ser;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Ljava/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public atZone(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ofBest(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/time/chrono/ChronoLocalDateTime;

    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

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
    instance-of v2, p1, Ljava/time/chrono/ChronoLocalDateTime;

    if-eqz v2, :cond_2

    check-cast p1, Ljava/time/chrono/ChronoLocalDateTime;

    invoke-virtual {p0, p1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

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

.method public get(Ljava/time/temporal/TemporalField;)I
    .locals 4

    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {p0, p1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v1

    return v1
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 4

    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1}, Ljava/time/chrono/ChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    return-wide v2
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 2

    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isDateBased()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v1

    :goto_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-interface {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/time/temporal/TemporalUnit;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    const-wide v8, 0x141dd76000L

    const-wide/32 v6, 0x5265c00

    const-wide/16 v4, 0x100

    instance-of v1, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    move-object v0, p3

    check-cast v0, Ljava/time/temporal/ChronoUnit;

    invoke-static {}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->-getjava-time-temporal-ChronoUnitSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    iget-object v2, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v1, v2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    :pswitch_0
    invoke-direct {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusNanos(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    :pswitch_1
    div-long v2, p1, v8

    invoke-direct {p0, v2, v3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusDays(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    rem-long v2, p1, v8

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusNanos(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    :pswitch_2
    div-long v2, p1, v6

    invoke-direct {p0, v2, v3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusDays(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    rem-long v2, p1, v6

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusNanos(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusSeconds(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    :pswitch_4
    invoke-direct {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusMinutes(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    :pswitch_5
    invoke-direct {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusHours(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    :pswitch_6
    div-long v2, p1, v4

    invoke-direct {p0, v2, v3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusDays(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    rem-long v2, p1, v4

    const-wide/16 v4, 0xc

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusHours(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method plusSeconds(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    move-wide v8, v2

    invoke-direct/range {v0 .. v9}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Ljava/time/chrono/ChronoLocalDate;JJJJ)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 2

    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1}, Ljava/time/chrono/ChronoLocalDate;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1
.end method

.method public toLocalDate()Ljava/time/chrono/ChronoLocalDate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    return-object v0
.end method

.method public toLocalTime()Ljava/time/LocalTime;
    .locals 1

    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .locals 8

    const-string/jumbo v4, "endExclusive"

    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/time/chrono/Chronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    instance-of v4, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v4, :cond_2

    invoke-interface {p2}, Ljava/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v4}, Ljava/time/chrono/ChronoLocalDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    iget-object v6, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    sget-object v7, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/time/chrono/ChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v6

    sub-long v0, v4, v6

    invoke-static {}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->-getjava-time-temporal-ChronoUnitSwitchesValues()[I

    move-result-object v5

    move-object v4, p2

    check-cast v4, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v4}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    :goto_0
    iget-object v4, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-interface {v2}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/time/LocalTime;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v4

    return-wide v4

    :pswitch_0
    const-wide v4, 0x4e94914f0000L

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    goto :goto_0

    :pswitch_1
    const-wide v4, 0x141dd76000L

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    goto :goto_0

    :pswitch_2
    const-wide/32 v4, 0x5265c00

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    goto :goto_0

    :pswitch_3
    const-wide/32 v4, 0x15180

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    goto :goto_0

    :pswitch_4
    const-wide/16 v4, 0x5a0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    goto :goto_0

    :pswitch_5
    const-wide/16 v4, 0x18

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    goto :goto_0

    :pswitch_6
    const-wide/16 v4, 0x2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v3

    invoke-interface {v2}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v4

    iget-object v5, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-virtual {v4, v5}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/time/chrono/ChronoLocalDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v3

    :cond_1
    iget-object v4, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v4, v3, p2}, Ljava/time/chrono/ChronoLocalDate;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v4

    return-wide v4

    :cond_2
    const-string/jumbo v4, "unit"

    invoke-static {p2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p2, p0, v2}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v4

    return-wide v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAdjuster;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    instance-of v0, p1, Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/time/chrono/ChronoLocalDate;

    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-direct {p0, p1, v0}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/time/LocalTime;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    check-cast p1, Ljava/time/LocalTime;

    invoke-direct {p0, v0, p1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0

    :cond_1
    instance-of v0, p1, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    check-cast p1, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-static {v0, p1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-static {v1, v0}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalField;",
            "J)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    iget-object v2, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-virtual {v2, p1, p2, p3}, Ljava/time/LocalTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalTime;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    iget-object v2, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v1, v2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v1, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

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

    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
