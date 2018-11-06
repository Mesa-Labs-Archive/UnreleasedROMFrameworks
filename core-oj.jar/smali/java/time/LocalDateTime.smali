.class public final Ljava/time/LocalDateTime;
.super Ljava/lang/Object;
.source "LocalDateTime.java"

# interfaces
.implements Ljava/time/temporal/Temporal;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/time/chrono/ChronoLocalDateTime;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/time/chrono/ChronoLocalDateTime",
        "<",
        "Ljava/time/LocalDate;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic -java-time-temporal-ChronoUnitSwitchesValues:[I = null

.field public static final MAX:Ljava/time/LocalDateTime;

.field public static final MIN:Ljava/time/LocalDateTime;

.field private static final serialVersionUID:J = 0x56266aa6a95fff2eL


# instance fields
.field private final date:Ljava/time/LocalDate;

.field private final time:Ljava/time/LocalTime;


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoUnitSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/time/LocalDateTime;->-java-time-temporal-ChronoUnitSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/time/LocalDateTime;->-java-time-temporal-ChronoUnitSwitchesValues:[I

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
    sput-object v0, Ljava/time/LocalDateTime;->-java-time-temporal-ChronoUnitSwitchesValues:[I

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

.method static synthetic -java_time_LocalDateTime-mthref-0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;
    .locals 1

    invoke-static {p0}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ljava/time/LocalDate;->MIN:Ljava/time/LocalDate;

    sget-object v1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    sput-object v0, Ljava/time/LocalDateTime;->MIN:Ljava/time/LocalDateTime;

    sget-object v0, Ljava/time/LocalDate;->MAX:Ljava/time/LocalDate;

    sget-object v1, Ljava/time/LocalTime;->MAX:Ljava/time/LocalTime;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    sput-object v0, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    return-void
.end method

.method private constructor <init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    iput-object p2, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    return-void
.end method

.method private compareTo0(Ljava/time/LocalDateTime;)I
    .locals 3

    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/LocalDate;->compareTo0(Ljava/time/LocalDate;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/LocalTime;->compareTo(Ljava/time/LocalTime;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;
    .locals 6

    instance-of v3, p0, Ljava/time/LocalDateTime;

    if-eqz v3, :cond_0

    check-cast p0, Ljava/time/LocalDateTime;

    return-object p0

    :cond_0
    instance-of v3, p0, Ljava/time/ZonedDateTime;

    if-eqz v3, :cond_1

    check-cast p0, Ljava/time/ZonedDateTime;

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v3

    return-object v3

    :cond_1
    instance-of v3, p0, Ljava/time/OffsetDateTime;

    if-eqz v3, :cond_2

    check-cast p0, Ljava/time/OffsetDateTime;

    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v3

    return-object v3

    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    invoke-static {p0}, Ljava/time/LocalTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;

    move-result-object v2

    new-instance v3, Ljava/time/LocalDateTime;

    invoke-direct {v3, v0, v2}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    new-instance v3, Ljava/time/DateTimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to obtain LocalDateTime from TemporalAccessor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static now()Ljava/time/LocalDateTime;
    .locals 1

    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalDateTime;->now(Ljava/time/Clock;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/LocalDateTime;
    .locals 5

    const-string/jumbo v2, "clock"

    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/time/Instant;->getNano()I

    move-result v4

    invoke-static {v2, v3, v4, v1}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v2

    return-object v2
.end method

.method public static now(Ljava/time/ZoneId;)Ljava/time/LocalDateTime;
    .locals 1

    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalDateTime;->now(Ljava/time/Clock;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(IIIII)Ljava/time/LocalDateTime;
    .locals 3

    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v1

    new-instance v2, Ljava/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v2
.end method

.method public static of(IIIIII)Ljava/time/LocalDateTime;
    .locals 3

    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    invoke-static {p3, p4, p5}, Ljava/time/LocalTime;->of(III)Ljava/time/LocalTime;

    move-result-object v1

    new-instance v2, Ljava/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v2
.end method

.method public static of(IIIIIII)Ljava/time/LocalDateTime;
    .locals 3

    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    invoke-static {p3, p4, p5, p6}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v1

    new-instance v2, Ljava/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v2
.end method

.method public static of(ILjava/time/Month;III)Ljava/time/LocalDateTime;
    .locals 3

    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v1

    new-instance v2, Ljava/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v2
.end method

.method public static of(ILjava/time/Month;IIII)Ljava/time/LocalDateTime;
    .locals 3

    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v0

    invoke-static {p3, p4, p5}, Ljava/time/LocalTime;->of(III)Ljava/time/LocalTime;

    move-result-object v1

    new-instance v2, Ljava/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v2
.end method

.method public static of(ILjava/time/Month;IIIII)Ljava/time/LocalDateTime;
    .locals 3

    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v0

    invoke-static {p3, p4, p5, p6}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v1

    new-instance v2, Ljava/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v2
.end method

.method public static of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;
    .locals 1

    const-string/jumbo v0, "date"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "time"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/time/LocalDateTime;

    invoke-direct {v0, p0, p1}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v0
.end method

.method public static ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;
    .locals 12

    const-wide/32 v10, 0x15180

    const-string/jumbo v7, "offset"

    invoke-static {p3, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v7, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    int-to-long v8, p2

    invoke-virtual {v7, v8, v9}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    invoke-virtual {p3}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v7

    int-to-long v8, v7

    add-long v4, p0, v8

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v2

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v8

    long-to-int v1, v8

    invoke-static {v2, v3}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v0

    int-to-long v8, v1

    const-wide/32 v10, 0x3b9aca00

    mul-long/2addr v8, v10

    int-to-long v10, p2

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v6

    new-instance v7, Ljava/time/LocalDateTime;

    invoke-direct {v7, v0, v6}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v7
.end method

.method public static ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;
    .locals 5

    const-string/jumbo v2, "instant"

    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v2, "zone"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/time/Instant;->getNano()I

    move-result v4

    invoke-static {v2, v3, v4, v0}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v2

    return-object v2
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;
    .locals 1

    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;
    .locals 1

    const-string/jumbo v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/time/-$Lambda$f-IVI_VCf9vlIINHxz9UCiqF3OY;

    invoke-direct {v0}, Ljava/time/-$Lambda$f-IVI_VCf9vlIINHxz9UCiqF3OY;-><init>()V

    invoke-virtual {p1, p0, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDateTime;

    return-object v0
.end method

.method private plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;
    .locals 18

    or-long v12, p2, p4

    or-long v12, v12, p6

    or-long v12, v12, p8

    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-nez v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

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

    move/from16 v0, p10

    int-to-long v12, v0

    mul-long/2addr v8, v12

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

    iget-object v7, v0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v7}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    move/from16 v0, p10

    int-to-long v12, v0

    mul-long/2addr v12, v10

    add-long v10, v12, v2

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

    iget-object v6, v0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v7

    return-object v7

    :cond_1
    invoke-static {v4, v5}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v6

    goto :goto_0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/LocalDateTime;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Ljava/time/LocalDate;->readExternal(Ljava/io/DataInput;)Ljava/time/LocalDate;

    move-result-object v0

    invoke-static {p0}, Ljava/time/LocalTime;->readExternal(Ljava/io/DataInput;)Ljava/time/LocalTime;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

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

.method private with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;
    .locals 1

    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/time/LocalDateTime;

    invoke-direct {v0, p1, p2}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/time/Ser;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;
    .locals 1

    invoke-static {p0, p1}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 1

    invoke-static {p0, p1}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic atZone(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/time/chrono/ChronoLocalDateTime;

    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<*>;)I"
        }
    .end annotation

    instance-of v0, p1, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/time/LocalDateTime;

    invoke-direct {p0, p1}, Ljava/time/LocalDateTime;->compareTo0(Ljava/time/LocalDateTime;)I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

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
    instance-of v2, p1, Ljava/time/LocalDateTime;

    if-eqz v2, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/time/LocalDateTime;

    iget-object v2, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    iget-object v3, v0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    iget-object v2, v0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, v2}, Ljava/time/LocalTime;->equals(Ljava/lang/Object;)Z

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

    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, p1}, Ljava/time/LocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    return v1
.end method

.method public getDayOfMonth()I
    .locals 1

    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()Ljava/time/DayOfWeek;
    .locals 1

    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 1

    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 1

    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->getHour()I

    move-result v0

    return v0
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

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, p1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    return-wide v2
.end method

.method public getMinute()I
    .locals 1

    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->getMinute()I

    move-result v0

    return v0
.end method

.method public getMonth()Ljava/time/Month;
    .locals 1

    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .locals 1

    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v0

    return v0
.end method

.method public getNano()I
    .locals 1

    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->getNano()I

    move-result v0

    return v0
.end method

.method public getSecond()I
    .locals 1

    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/time/LocalDateTime;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/time/LocalDateTime;

    invoke-direct {p0, p1}, Ljava/time/LocalDateTime;->compareTo0(Ljava/time/LocalDateTime;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    return v0
.end method

.method public isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/time/LocalDateTime;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/time/LocalDateTime;

    invoke-direct {p0, p1}, Ljava/time/LocalDateTime;->compareTo0(Ljava/time/LocalDateTime;)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    return v0
.end method

.method public isEqual(Ljava/time/chrono/ChronoLocalDateTime;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/time/LocalDateTime;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/time/LocalDateTime;

    invoke-direct {p0, p1}, Ljava/time/LocalDateTime;->compareTo0(Ljava/time/LocalDateTime;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->isEqual(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

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

.method public isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->isSupported(Ljava/time/temporal/TemporalUnit;)Z

    move-result v0

    return v0
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, p3}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;
    .locals 3

    instance-of v1, p1, Ljava/time/Period;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/time/Period;

    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, v0}, Ljava/time/LocalDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;

    move-result-object v1

    iget-object v2, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v1, v2}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "amountToSubtract"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v1

    check-cast v1, Ljava/time/LocalDateTime;

    return-object v1
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusDays(J)Ljava/time/LocalDateTime;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusHours(J)Ljava/time/LocalDateTime;
    .locals 11

    const-wide/16 v4, 0x0

    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const/4 v10, -0x1

    move-object v0, p0

    move-wide v2, p1

    move-wide v6, v4

    move-wide v8, v4

    invoke-direct/range {v0 .. v10}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusMinutes(J)Ljava/time/LocalDateTime;
    .locals 11

    const-wide/16 v2, 0x0

    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const/4 v10, -0x1

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    move-wide v8, v2

    invoke-direct/range {v0 .. v10}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusMonths(J)Ljava/time/LocalDateTime;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusMonths(J)Ljava/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDateTime;->plusMonths(J)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusMonths(J)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusNanos(J)Ljava/time/LocalDateTime;
    .locals 11

    const-wide/16 v2, 0x0

    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const/4 v10, -0x1

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, v2

    move-wide v8, p1

    invoke-direct/range {v0 .. v10}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusSeconds(J)Ljava/time/LocalDateTime;
    .locals 11

    const-wide/16 v2, 0x0

    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const/4 v10, -0x1

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    move-wide v8, v2

    invoke-direct/range {v0 .. v10}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusWeeks(J)Ljava/time/LocalDateTime;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusWeeks(J)Ljava/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDateTime;->plusWeeks(J)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusWeeks(J)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusYears(J)Ljava/time/LocalDateTime;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusYears(J)Ljava/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDateTime;->plusYears(J)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusYears(J)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;
    .locals 11

    const-wide v8, 0x141dd76000L

    const-wide/32 v6, 0x5265c00

    const-wide/16 v4, 0x100

    instance-of v1, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    move-object v0, p3

    check-cast v0, Ljava/time/temporal/ChronoUnit;

    invoke-static {}, Ljava/time/LocalDateTime;->-getjava-time-temporal-ChronoUnitSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, p1, p2, p3}, Ljava/time/LocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object v1

    iget-object v2, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v1, v2}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDateTime;->plusNanos(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :pswitch_1
    div-long v2, p1, v8

    invoke-virtual {p0, v2, v3}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    rem-long v2, p1, v8

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDateTime;->plusNanos(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :pswitch_2
    div-long v2, p1, v6

    invoke-virtual {p0, v2, v3}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    rem-long v2, p1, v6

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDateTime;->plusNanos(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :pswitch_4
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDateTime;->plusMinutes(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :pswitch_5
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDateTime;->plusHours(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :pswitch_6
    div-long v2, p1, v4

    invoke-virtual {p0, v2, v3}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    rem-long v2, p1, v4

    const-wide/16 v4, 0xc

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDateTime;->plusHours(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v1

    check-cast v1, Ljava/time/LocalDateTime;

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

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;
    .locals 3

    instance-of v1, p1, Ljava/time/Period;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/time/Period;

    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, v0}, Ljava/time/LocalDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;

    move-result-object v1

    iget-object v2, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v1, v2}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "amountToAdd"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v1

    check-cast v1, Ljava/time/LocalDateTime;

    return-object v1
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusDays(J)Ljava/time/LocalDateTime;
    .locals 3

    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, p1, p2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public plusHours(J)Ljava/time/LocalDateTime;
    .locals 11

    const-wide/16 v4, 0x0

    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const/4 v10, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-wide v6, v4

    move-wide v8, v4

    invoke-direct/range {v0 .. v10}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMinutes(J)Ljava/time/LocalDateTime;
    .locals 11

    const-wide/16 v2, 0x0

    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const/4 v10, 0x1

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    move-wide v8, v2

    invoke-direct/range {v0 .. v10}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMonths(J)Ljava/time/LocalDateTime;
    .locals 3

    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, p1, p2}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public plusNanos(J)Ljava/time/LocalDateTime;
    .locals 11

    const-wide/16 v2, 0x0

    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const/4 v10, 0x1

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, v2

    move-wide v8, p1

    invoke-direct/range {v0 .. v10}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Ljava/time/LocalDateTime;
    .locals 11

    const-wide/16 v2, 0x0

    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const/4 v10, 0x1

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    move-wide v8, v2

    invoke-direct/range {v0 .. v10}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusWeeks(J)Ljava/time/LocalDateTime;
    .locals 3

    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, p1, p2}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public plusYears(J)Ljava/time/LocalDateTime;
    .locals 3

    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, p1, p2}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
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

    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

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

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, p1}, Ljava/time/LocalDate;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1
.end method

.method public toLocalDate()Ljava/time/LocalDate;
    .locals 1

    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    return-object v0
.end method

.method public bridge synthetic toLocalDate()Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public toLocalTime()Ljava/time/LocalTime;
    .locals 1

    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;
    .locals 2

    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .locals 10

    invoke-static {p1}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v2

    instance-of v6, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v6, :cond_5

    invoke-interface {p2}, Ljava/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    iget-object v7, v2, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v6, v7}, Ljava/time/LocalDate;->daysUntil(Ljava/time/LocalDate;)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    iget-object v6, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    iget-object v7, v2, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v6, v7, p2}, Ljava/time/LocalTime;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v6

    return-wide v6

    :cond_0
    iget-object v6, v2, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v6}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v6

    iget-object v8, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v8}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v8

    sub-long v4, v6, v8

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    const-wide v6, 0x4e94914f0000L

    add-long/2addr v4, v6

    :goto_0
    invoke-static {}, Ljava/time/LocalDateTime;->-getjava-time-temporal-ChronoUnitSwitchesValues()[I

    move-result-object v6

    check-cast p2, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p2}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    :goto_1
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v6

    return-wide v6

    :cond_1
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    const-wide v6, 0x4e94914f0000L

    sub-long/2addr v4, v6

    goto :goto_0

    :pswitch_0
    const-wide v6, 0x4e94914f0000L

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    goto :goto_1

    :pswitch_1
    const-wide v6, 0x141dd76000L

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    goto :goto_1

    :pswitch_2
    const-wide/32 v6, 0x5265c00

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    goto :goto_1

    :pswitch_3
    const-wide/32 v6, 0x15180

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    const-wide/32 v6, 0x3b9aca00

    div-long/2addr v4, v6

    goto :goto_1

    :pswitch_4
    const-wide/16 v6, 0x5a0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    const-wide v6, 0xdf8475800L

    div-long/2addr v4, v6

    goto :goto_1

    :pswitch_5
    const-wide/16 v6, 0x18

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    const-wide v6, 0x34630b8a000L

    div-long/2addr v4, v6

    goto :goto_1

    :pswitch_6
    const-wide/16 v6, 0x2

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    const-wide v6, 0x274a48a78000L

    div-long/2addr v4, v6

    goto :goto_1

    :cond_2
    iget-object v3, v2, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    iget-object v6, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v3, v6}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v2, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    iget-object v7, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v6, v7}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v6, v7}, Ljava/time/LocalDate;->minusDays(J)Ljava/time/LocalDate;

    move-result-object v3

    :cond_3
    :goto_2
    iget-object v6, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v6, v3, p2}, Ljava/time/LocalDate;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v6

    return-wide v6

    :cond_4
    iget-object v6, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v3, v6}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v2, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    iget-object v7, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v6, v7}, Ljava/time/LocalTime;->isAfter(Ljava/time/LocalTime;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v6, v7}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v3

    goto :goto_2

    :cond_5
    invoke-interface {p2, p0, v2}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v6

    return-wide v6

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

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDateTime;
    .locals 1

    instance-of v0, p1, Ljava/time/LocalDate;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/time/LocalDate;

    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, p1, v0}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/time/LocalTime;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    check-cast p1, Ljava/time/LocalTime;

    invoke-direct {p0, v0, p1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_1
    instance-of v0, p1, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/time/LocalDateTime;

    return-object p1

    :cond_2
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDateTime;

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDateTime;
    .locals 4

    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    iget-object v2, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v2, p1, p2, p3}, Ljava/time/LocalTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalTime;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1, p1, p2, p3}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object v1

    iget-object v2, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v1, v2}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v1

    check-cast v1, Ljava/time/LocalDateTime;

    return-object v1
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfMonth(I)Ljava/time/LocalDateTime;
    .locals 2

    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0, p1}, Ljava/time/LocalDate;->withDayOfMonth(I)Ljava/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfYear(I)Ljava/time/LocalDateTime;
    .locals 2

    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0, p1}, Ljava/time/LocalDate;->withDayOfYear(I)Ljava/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withHour(I)Ljava/time/LocalDateTime;
    .locals 2

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->withHour(I)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-direct {p0, v1, v0}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public withMinute(I)Ljava/time/LocalDateTime;
    .locals 2

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->withMinute(I)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-direct {p0, v1, v0}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public withMonth(I)Ljava/time/LocalDateTime;
    .locals 2

    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0, p1}, Ljava/time/LocalDate;->withMonth(I)Ljava/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withNano(I)Ljava/time/LocalDateTime;
    .locals 2

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->withNano(I)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-direct {p0, v1, v0}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public withSecond(I)Ljava/time/LocalDateTime;
    .locals 2

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->withSecond(I)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-direct {p0, v1, v0}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public withYear(I)Ljava/time/LocalDateTime;
    .locals 2

    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0, p1}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

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

    iget-object v0, p0, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v0, p1}, Ljava/time/LocalDate;->writeExternal(Ljava/io/DataOutput;)V

    iget-object v0, p0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->writeExternal(Ljava/io/DataOutput;)V

    return-void
.end method
