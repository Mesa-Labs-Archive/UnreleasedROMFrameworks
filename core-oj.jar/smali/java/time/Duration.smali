.class public final Ljava/time/Duration;
.super Ljava/lang/Object;
.source "Duration.java"

# interfaces
.implements Ljava/time/temporal/TemporalAmount;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/Duration$DurationUnits;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/time/temporal/TemporalAmount;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/time/Duration;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic -java-time-temporal-ChronoUnitSwitchesValues:[I = null

.field private static final BI_NANOS_PER_SECOND:Ljava/math/BigInteger;

.field private static final PATTERN:Ljava/util/regex/Pattern;

.field public static final ZERO:Ljava/time/Duration;

.field private static final serialVersionUID:J = 0x2aba9d02d1c4f832L


# instance fields
.field private final nanos:I

.field private final seconds:J


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoUnitSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/time/Duration;->-java-time-temporal-ChronoUnitSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/time/Duration;->-java-time-temporal-ChronoUnitSwitchesValues:[I

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

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_f

    :goto_0
    :try_start_1
    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_e

    :goto_1
    :try_start_2
    sget-object v1, Ljava/time/temporal/ChronoUnit;->DECADES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_d

    :goto_2
    :try_start_3
    sget-object v1, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_c

    :goto_3
    :try_start_4
    sget-object v1, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_b

    :goto_4
    :try_start_5
    sget-object v1, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_a

    :goto_5
    :try_start_6
    sget-object v1, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_9

    :goto_6
    :try_start_7
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_8

    :goto_7
    :try_start_8
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MILLENNIA:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_7

    :goto_8
    :try_start_9
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_6

    :goto_9
    :try_start_a
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xd

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

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_3

    :goto_c
    :try_start_d
    sget-object v1, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x4

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
    sput-object v0, Ljava/time/Duration;->-java-time-temporal-ChronoUnitSwitchesValues:[I

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

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/time/Duration;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Ljava/time/Duration;-><init>(JI)V

    sput-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    const-wide/32 v0, 0x3b9aca00

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Ljava/time/Duration;->BI_NANOS_PER_SECOND:Ljava/math/BigInteger;

    const-string/jumbo v0, "([-+]?)P(?:([-+]?[0-9]+)D)?(T(?:([-+]?[0-9]+)H)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)(?:[.,]([0-9]{0,9}))?S)?)?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/time/Duration;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(JI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljava/time/Duration;->seconds:J

    iput p3, p0, Ljava/time/Duration;->nanos:I

    return-void
.end method

.method public static between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;
    .locals 14

    const-wide/16 v12, 0x1

    const-wide/16 v10, 0x0

    :try_start_0
    sget-object v6, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p0, p1, v6}, Ljava/time/temporal/Temporal;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v0

    sget-object v6, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p0, p1, v6}, Ljava/time/temporal/Temporal;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v4

    :try_start_1
    sget-object v6, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v6}, Ljava/time/temporal/Temporal;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v6

    sget-object v8, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v8}, Ljava/time/temporal/Temporal;->getLong(Ljava/time/temporal/TemporalField;)J
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v8

    sub-long v2, v6, v8

    cmp-long v6, v4, v10

    if-lez v6, :cond_1

    cmp-long v6, v2, v10

    if-gez v6, :cond_1

    add-long/2addr v4, v12

    :cond_0
    :goto_0
    invoke-static {v4, v5, v2, v3}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v6

    return-object v6

    :cond_1
    cmp-long v6, v4, v10

    if-gez v6, :cond_0

    cmp-long v6, v2, v10

    if-lez v6, :cond_0

    sub-long/2addr v4, v12

    goto :goto_0

    :catch_1
    move-exception v1

    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private static create(JI)Ljava/time/Duration;
    .locals 4

    int-to-long v0, p2

    or-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    return-object v0

    :cond_0
    new-instance v0, Ljava/time/Duration;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/Duration;-><init>(JI)V

    return-object v0
.end method

.method private static create(Ljava/math/BigDecimal;)Ljava/time/Duration;
    .locals 6

    const/4 v4, 0x0

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/time/Duration;->BI_NANOS_PER_SECOND:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/16 v3, 0x3f

    if-le v2, v3, :cond_0

    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exceeds capacity of Duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v2

    return-object v2
.end method

.method private static create(ZJJJJI)Ljava/time/Duration;
    .locals 5

    invoke-static {p5, p6, p7, p8}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v2

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    if-eqz p0, :cond_0

    int-to-long v2, p9

    invoke-static {v0, v1, v2, v3}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->negated()Ljava/time/Duration;

    move-result-object v2

    return-object v2

    :cond_0
    int-to-long v2, p9

    invoke-static {v0, v1, v2, v3}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v2

    return-object v2
.end method

.method public static from(Ljava/time/temporal/TemporalAmount;)Ljava/time/Duration;
    .locals 6

    const-string/jumbo v3, "amount"

    invoke-static {p0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-interface {p0}, Ljava/time/temporal/TemporalAmount;->getUnits()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/temporal/TemporalUnit;

    invoke-interface {p0, v1}, Ljava/time/temporal/TemporalAmount;->get(Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v1}, Ljava/time/Duration;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static of(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;
    .locals 2

    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {v0, p0, p1, p2}, Ljava/time/Duration;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofDays(J)Ljava/time/Duration;
    .locals 4

    const-wide/32 v0, 0x15180

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofHours(J)Ljava/time/Duration;
    .locals 4

    const-wide/16 v0, 0xe10

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofMillis(J)Ljava/time/Duration;
    .locals 6

    const-wide/16 v4, 0x3e8

    div-long v2, p0, v4

    rem-long v4, p0, v4

    long-to-int v0, v4

    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x3e8

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    :cond_0
    const v1, 0xf4240

    mul-int/2addr v1, v0

    invoke-static {v2, v3, v1}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v1

    return-object v1
.end method

.method public static ofMinutes(J)Ljava/time/Duration;
    .locals 4

    const-wide/16 v0, 0x3c

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofNanos(J)Ljava/time/Duration;
    .locals 8

    const-wide/32 v6, 0x3b9aca00

    div-long v2, p0, v6

    rem-long v4, p0, v6

    long-to-int v0, v4

    if-gez v0, :cond_0

    int-to-long v4, v0

    add-long/2addr v4, v6

    long-to-int v0, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    :cond_0
    invoke-static {v2, v3, v0}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v1

    return-object v1
.end method

.method public static ofSeconds(J)Ljava/time/Duration;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofSeconds(JJ)Ljava/time/Duration;
    .locals 8

    const-wide/32 v6, 0x3b9aca00

    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v4

    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v2

    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    invoke-static {v2, v3, v0}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v1

    return-object v1
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/Duration;
    .locals 24

    const-string/jumbo v21, "text"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v21, Ljava/time/Duration;->PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->matches()Z

    move-result v21

    if-eqz v21, :cond_2

    const-string/jumbo v21, "T"

    const/16 v22, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    const-string/jumbo v21, "-"

    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v21, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/16 v21, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    const/16 v21, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x6

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x7

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    if-nez v4, :cond_0

    if-eqz v17, :cond_1

    :cond_0
    const-string/jumbo v21, "days"

    const v22, 0x15180

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-static {v0, v4, v1, v2}, Ljava/time/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v6

    const-string/jumbo v21, "hours"

    const/16 v22, 0xe10

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v22

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Ljava/time/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v8

    const-string/jumbo v21, "minutes"

    const/16 v22, 0x3c

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v22

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Ljava/time/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v10

    const-string/jumbo v21, "seconds"

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v22

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Ljava/time/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v12

    const-wide/16 v22, 0x0

    cmp-long v21, v12, v22

    if-gez v21, :cond_3

    const/16 v21, -0x1

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Ljava/time/Duration;->parseFraction(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v14

    :try_start_0
    invoke-static/range {v5 .. v14}, Ljava/time/Duration;->create(ZJJJJI)Ljava/time/Duration;
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    return-object v21

    :cond_1
    if-nez v19, :cond_0

    if-nez v20, :cond_0

    :cond_2
    new-instance v21, Ljava/time/format/DateTimeParseException;

    const-string/jumbo v22, "Text cannot be parsed to a Duration"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p0

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v21

    :cond_3
    const/16 v21, 0x1

    goto :goto_0

    :catch_0
    move-exception v15

    new-instance v21, Ljava/time/format/DateTimeParseException;

    const-string/jumbo v22, "Text cannot be parsed to a Duration: overflow"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p0

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/time/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v21

    check-cast v21, Ljava/time/format/DateTimeParseException;

    throw v21
.end method

.method private static parseFraction(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return v4

    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "000000000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    mul-int/2addr v1, p2

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/time/format/DateTimeParseException;

    const-string/jumbo v2, "Text cannot be parsed to a Duration: fraction"

    invoke-direct {v1, v2, p0, v4}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v0}, Ljava/time/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/time/format/DateTimeParseException;

    throw v1
.end method

.method private static parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J
    .locals 6

    if-nez p1, :cond_0

    const-wide/16 v4, 0x0

    return-wide v4

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    int-to-long v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->multiplyExact(JJ)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    return-wide v4

    :catch_0
    move-exception v0

    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Text cannot be parsed to a Duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v4, p0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v0}, Ljava/time/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/time/format/DateTimeParseException;

    throw v1
.end method

.method private plus(JJ)Ljava/time/Duration;
    .locals 11

    const-wide/32 v8, 0x3b9aca00

    or-long v4, p1, p3

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    return-object p0

    :cond_0
    iget-wide v4, p0, Ljava/time/Duration;->seconds:J

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    div-long v4, p3, v8

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    rem-long/2addr p3, v8

    iget v4, p0, Ljava/time/Duration;->nanos:I

    int-to-long v4, v4

    add-long v2, v4, p3

    invoke-static {v0, v1, v2, v3}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v4

    return-object v4
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/Duration;
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

    invoke-static {v2, v3, v4, v5}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

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

.method private toSeconds()Ljava/math/BigDecimal;
    .locals 4

    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iget v1, p0, Ljava/time/Duration;->nanos:I

    int-to-long v2, v1

    const/16 v1, 0x9

    invoke-static {v2, v3, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/time/Ser;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abs()Ljava/time/Duration;
    .locals 1

    invoke-virtual {p0}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/time/Duration;->negated()Ljava/time/Duration;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 4

    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    sget-object v2, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    :cond_0
    iget v0, p0, Ljava/time/Duration;->nanos:I

    if-eqz v0, :cond_1

    iget v0, p0, Ljava/time/Duration;->nanos:I

    int-to-long v0, v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/time/Duration;

    invoke-virtual {p0, p1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/time/Duration;)I
    .locals 6

    iget-wide v2, p0, Ljava/time/Duration;->seconds:J

    iget-wide v4, p1, Ljava/time/Duration;->seconds:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v1, p0, Ljava/time/Duration;->nanos:I

    iget v2, p1, Ljava/time/Duration;->nanos:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public dividedBy(J)Ljava/time/Duration;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "Cannot divide by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    invoke-direct {p0}, Ljava/time/Duration;->toSeconds()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Ljava/time/Duration;->create(Ljava/math/BigDecimal;)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Ljava/time/Duration;

    if-eqz v3, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/time/Duration;

    iget-wide v4, p0, Ljava/time/Duration;->seconds:J

    iget-wide v6, v0, Ljava/time/Duration;->seconds:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget v3, p0, Ljava/time/Duration;->nanos:I

    iget v4, v0, Ljava/time/Duration;->nanos:I

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

.method public get(Ljava/time/temporal/TemporalUnit;)J
    .locals 3

    sget-object v0, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_0

    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    return-wide v0

    :cond_0
    sget-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_1

    iget v0, p0, Ljava/time/Duration;->nanos:I

    int-to-long v0, v0

    return-wide v0

    :cond_1
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNano()I
    .locals 1

    iget v0, p0, Ljava/time/Duration;->nanos:I

    return v0
.end method

.method public getSeconds()J
    .locals 2

    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    return-wide v0
.end method

.method public getUnits()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/time/Duration$DurationUnits;->UNITS:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    iget-wide v2, p0, Ljava/time/Duration;->seconds:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Ljava/time/Duration;->nanos:I

    mul-int/lit8 v1, v1, 0x33

    add-int/2addr v0, v1

    return v0
.end method

.method public isNegative()Z
    .locals 4

    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZero()Z
    .locals 4

    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    iget v2, p0, Ljava/time/Duration;->nanos:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/Duration;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, p3}, Ljava/time/Duration;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/Duration;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v0

    goto :goto_0
.end method

.method public minus(Ljava/time/Duration;)Ljava/time/Duration;
    .locals 8

    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/time/Duration;->getNano()I

    move-result v0

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    neg-int v1, v0

    int-to-long v4, v1

    const-wide v6, 0x7fffffffffffffffL

    invoke-direct {p0, v6, v7, v4, v5}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v1

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v1, v4, v5, v6, v7}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v1

    return-object v1

    :cond_0
    neg-long v4, v2

    neg-int v1, v0

    int-to-long v6, v1

    invoke-direct {p0, v4, v5, v6, v7}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v1

    return-object v1
.end method

.method public minusDays(J)Ljava/time/Duration;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusDays(J)Ljava/time/Duration;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/Duration;->plusDays(J)Ljava/time/Duration;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusDays(J)Ljava/time/Duration;

    move-result-object v0

    goto :goto_0
.end method

.method public minusHours(J)Ljava/time/Duration;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusHours(J)Ljava/time/Duration;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/Duration;->plusHours(J)Ljava/time/Duration;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusHours(J)Ljava/time/Duration;

    move-result-object v0

    goto :goto_0
.end method

.method public minusMillis(J)Ljava/time/Duration;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusMillis(J)Ljava/time/Duration;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/Duration;->plusMillis(J)Ljava/time/Duration;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusMillis(J)Ljava/time/Duration;

    move-result-object v0

    goto :goto_0
.end method

.method public minusMinutes(J)Ljava/time/Duration;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusMinutes(J)Ljava/time/Duration;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/Duration;->plusMinutes(J)Ljava/time/Duration;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusMinutes(J)Ljava/time/Duration;

    move-result-object v0

    goto :goto_0
.end method

.method public minusNanos(J)Ljava/time/Duration;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusNanos(J)Ljava/time/Duration;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/Duration;->plusNanos(J)Ljava/time/Duration;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusNanos(J)Ljava/time/Duration;

    move-result-object v0

    goto :goto_0
.end method

.method public minusSeconds(J)Ljava/time/Duration;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v0

    goto :goto_0
.end method

.method public multipliedBy(J)Ljava/time/Duration;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    return-object v0

    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    invoke-direct {p0}, Ljava/time/Duration;->toSeconds()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Ljava/time/Duration;->create(Ljava/math/BigDecimal;)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public negated()Ljava/time/Duration;
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/time/Duration;->multipliedBy(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;
    .locals 11

    const-wide/32 v8, 0x3b9aca00

    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x0

    const-string/jumbo v1, "unit"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    if-ne p3, v1, :cond_0

    const-wide/32 v2, 0x15180

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v4, v5}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-interface {p3}, Ljava/time/temporal/TemporalUnit;->isDurationEstimated()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string/jumbo v2, "Unit must not have an estimated duration"

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    cmp-long v1, p1, v4

    if-nez v1, :cond_2

    return-object p0

    :cond_2
    instance-of v1, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/time/Duration;->-getjava-time-temporal-ChronoUnitSwitchesValues()[I

    move-result-object v2

    move-object v1, p3

    check-cast v1, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    invoke-interface {p3}, Ljava/time/temporal/TemporalUnit;->getDuration()Ljava/time/Duration;

    move-result-object v1

    iget-wide v2, v1, Ljava/time/Duration;->seconds:J

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v1

    return-object v1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Ljava/time/Duration;->plusNanos(J)Ljava/time/Duration;

    move-result-object v1

    return-object v1

    :pswitch_1
    div-long v2, p1, v8

    mul-long/2addr v2, v6

    invoke-virtual {p0, v2, v3}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v1

    rem-long v2, p1, v8

    mul-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/time/Duration;->plusNanos(J)Ljava/time/Duration;

    move-result-object v1

    return-object v1

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Ljava/time/Duration;->plusMillis(J)Ljava/time/Duration;

    move-result-object v1

    return-object v1

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v1

    return-object v1

    :cond_3
    invoke-interface {p3}, Ljava/time/temporal/TemporalUnit;->getDuration()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/time/Duration;->multipliedBy(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/Duration;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/time/Duration;->plusNanos(J)Ljava/time/Duration;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public plus(Ljava/time/Duration;)Ljava/time/Duration;
    .locals 4

    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/time/Duration;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusDays(J)Ljava/time/Duration;
    .locals 5

    const-wide/32 v0, 0x15180

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusHours(J)Ljava/time/Duration;
    .locals 5

    const-wide/16 v0, 0xe10

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusMillis(J)Ljava/time/Duration;
    .locals 7

    const-wide/16 v2, 0x3e8

    div-long v0, p1, v2

    rem-long v2, p1, v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusMinutes(J)Ljava/time/Duration;
    .locals 5

    const-wide/16 v0, 0x3c

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusNanos(J)Ljava/time/Duration;
    .locals 3

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Ljava/time/Duration;
    .locals 3

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 4

    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    sget-object v2, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    :cond_0
    iget v0, p0, Ljava/time/Duration;->nanos:I

    if-eqz v0, :cond_1

    iget v0, p0, Ljava/time/Duration;->nanos:I

    int-to-long v0, v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public toDays()J
    .locals 4

    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const-wide/32 v2, 0x15180

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public toHours()J
    .locals 4

    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const-wide/16 v2, 0xe10

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public toMillis()J
    .locals 6

    iget-wide v2, p0, Ljava/time/Duration;->seconds:J

    const-wide/16 v4, 0x3e8

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    iget v2, p0, Ljava/time/Duration;->nanos:I

    const v3, 0xf4240

    div-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMinutes()J
    .locals 4

    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public toNanos()J
    .locals 6

    iget-wide v2, p0, Ljava/time/Duration;->seconds:J

    const-wide/32 v4, 0x3b9aca00

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    iget v2, p0, Ljava/time/Duration;->nanos:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    const-wide/16 v10, 0xe10

    const-wide/16 v8, 0x3c

    sget-object v6, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    if-ne p0, v6, :cond_0

    const-string/jumbo v6, "PT0S"

    return-object v6

    :cond_0
    iget-wide v6, p0, Ljava/time/Duration;->seconds:J

    div-long v2, v6, v10

    iget-wide v6, p0, Ljava/time/Duration;->seconds:J

    rem-long/2addr v6, v10

    div-long/2addr v6, v8

    long-to-int v1, v6

    iget-wide v6, p0, Ljava/time/Duration;->seconds:J

    rem-long/2addr v6, v8

    long-to-int v5, v6

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x18

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "PT"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x48

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x4d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    if-nez v5, :cond_3

    iget v6, p0, Ljava/time/Duration;->nanos:I

    if-nez v6, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_3
    if-gez v5, :cond_5

    iget v6, p0, Ljava/time/Duration;->nanos:I

    if-lez v6, :cond_5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    const-string/jumbo v6, "-0"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget v6, p0, Ljava/time/Duration;->nanos:I

    if-lez v6, :cond_8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-gez v5, :cond_6

    iget v6, p0, Ljava/time/Duration;->nanos:I

    int-to-long v6, v6

    const-wide/32 v8, 0x77359400

    sub-long v6, v8, v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    iget v6, p0, Ljava/time/Duration;->nanos:I

    int-to-long v6, v6

    const-wide/32 v8, 0x3b9aca00

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const/16 v6, 0x2e

    invoke-virtual {v0, v4, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_8
    const/16 v6, 0x53

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public withNanos(I)Ljava/time/Duration;
    .locals 4

    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    invoke-static {v0, v1, p1}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public withSeconds(J)Ljava/time/Duration;
    .locals 1

    iget v0, p0, Ljava/time/Duration;->nanos:I

    invoke-static {p1, p2, v0}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

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

    iget-wide v0, p0, Ljava/time/Duration;->seconds:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    iget v0, p0, Ljava/time/Duration;->nanos:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method
