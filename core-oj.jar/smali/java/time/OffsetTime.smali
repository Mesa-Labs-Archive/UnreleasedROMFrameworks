.class public final Ljava/time/OffsetTime;
.super Ljava/lang/Object;
.source "OffsetTime.java"

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
        "Ljava/time/OffsetTime;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic -java-time-temporal-ChronoUnitSwitchesValues:[I = null

.field public static final MAX:Ljava/time/OffsetTime;

.field public static final MIN:Ljava/time/OffsetTime;

.field private static final serialVersionUID:J = 0x64d0affdfec1386cL


# instance fields
.field private final offset:Ljava/time/ZoneOffset;

.field private final time:Ljava/time/LocalTime;


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoUnitSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/time/OffsetTime;->-java-time-temporal-ChronoUnitSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/time/OffsetTime;->-java-time-temporal-ChronoUnitSwitchesValues:[I

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
    sput-object v0, Ljava/time/OffsetTime;->-java-time-temporal-ChronoUnitSwitchesValues:[I

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

.method static synthetic -java_time_OffsetTime-mthref-0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetTime;
    .locals 1

    invoke-static {p0}, Ljava/time/OffsetTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    sget-object v1, Ljava/time/ZoneOffset;->MAX:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/LocalTime;->atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    sput-object v0, Ljava/time/OffsetTime;->MIN:Ljava/time/OffsetTime;

    sget-object v0, Ljava/time/LocalTime;->MAX:Ljava/time/LocalTime;

    sget-object v1, Ljava/time/ZoneOffset;->MIN:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/LocalTime;->atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    sput-object v0, Ljava/time/OffsetTime;->MAX:Ljava/time/OffsetTime;

    return-void
.end method

.method private constructor <init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "time"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/LocalTime;

    iput-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    const-string/jumbo v0, "offset"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneOffset;

    iput-object v0, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    return-void
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetTime;
    .locals 6

    instance-of v3, p0, Ljava/time/OffsetTime;

    if-eqz v3, :cond_0

    check-cast p0, Ljava/time/OffsetTime;

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/time/LocalTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;

    move-result-object v2

    invoke-static {p0}, Ljava/time/ZoneOffset;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneOffset;

    move-result-object v1

    new-instance v3, Ljava/time/OffsetTime;

    invoke-direct {v3, v2, v1}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    new-instance v3, Ljava/time/DateTimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to obtain OffsetTime from TemporalAccessor: "

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

    invoke-direct {v3, v4, v0}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static now()Ljava/time/OffsetTime;
    .locals 1

    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/OffsetTime;->now(Ljava/time/Clock;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/OffsetTime;
    .locals 2

    const-string/jumbo v1, "clock"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/OffsetTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetTime;

    move-result-object v1

    return-object v1
.end method

.method public static now(Ljava/time/ZoneId;)Ljava/time/OffsetTime;
    .locals 1

    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/OffsetTime;->now(Ljava/time/Clock;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(IIIILjava/time/ZoneOffset;)Ljava/time/OffsetTime;
    .locals 2

    new-instance v0, Ljava/time/OffsetTime;

    invoke-static {p0, p1, p2, p3}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V

    return-object v0
.end method

.method public static of(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;
    .locals 1

    new-instance v0, Ljava/time/OffsetTime;

    invoke-direct {v0, p0, p1}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V

    return-object v0
.end method

.method public static ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetTime;
    .locals 10

    const-string/jumbo v6, "instant"

    invoke-static {p0, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v6, "zone"

    invoke-static {p1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v8

    int-to-long v8, v8

    add-long v0, v6, v8

    const-wide/32 v6, 0x15180

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v6

    long-to-int v4, v6

    int-to-long v6, v4

    const-wide/32 v8, 0x3b9aca00

    mul-long/2addr v6, v8

    invoke-virtual {p0}, Ljava/time/Instant;->getNano()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v5

    new-instance v6, Ljava/time/OffsetTime;

    invoke-direct {v6, v5, v2}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V

    return-object v6
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/OffsetTime;
    .locals 1

    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljava/time/OffsetTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/OffsetTime;
    .locals 1

    const-string/jumbo v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/time/-$Lambda$IkFPdmBFJKVq6p1PT-uOwrUfZJg;

    invoke-direct {v0}, Ljava/time/-$Lambda$IkFPdmBFJKVq6p1PT-uOwrUfZJg;-><init>()V

    invoke-virtual {p1, p0, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetTime;

    return-object v0
.end method

.method static readExternal(Ljava/io/ObjectInput;)Ljava/time/OffsetTime;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-static {p0}, Ljava/time/LocalTime;->readExternal(Ljava/io/DataInput;)Ljava/time/LocalTime;

    move-result-object v1

    invoke-static {p0}, Ljava/time/ZoneOffset;->readExternal(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/time/OffsetTime;->of(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

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

.method private toEpochNano()J
    .locals 8

    iget-object v4, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v4}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    iget-object v4, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v4}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0x3b9aca00

    mul-long v2, v4, v6

    sub-long v4, v0, v2

    return-wide v4
.end method

.method private with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;
    .locals 1

    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, p2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/time/OffsetTime;

    invoke-direct {v0, p1, p2}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/time/Ser;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 4

    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    iget-object v1, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    iget-object v2, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atDate(Ljava/time/LocalDate;)Ljava/time/OffsetDateTime;
    .locals 2

    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {p1, v0, v1}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/time/OffsetTime;

    invoke-virtual {p0, p1}, Ljava/time/OffsetTime;->compareTo(Ljava/time/OffsetTime;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/time/OffsetTime;)I
    .locals 6

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    iget-object v2, p1, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    iget-object v2, p1, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, v2}, Ljava/time/LocalTime;->compareTo(Ljava/time/LocalTime;)I

    move-result v1

    return v1

    :cond_0
    invoke-direct {p0}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v2

    invoke-direct {p1}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    iget-object v2, p1, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, v2}, Ljava/time/LocalTime;->compareTo(Ljava/time/LocalTime;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Ljava/time/OffsetTime;

    if-eqz v2, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/time/OffsetTime;

    iget-object v2, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    iget-object v3, v0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    iget-object v2, v0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

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
    .locals 1

    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 1

    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->getHour()I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 2

    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_1

    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinute()I
    .locals 1

    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->getMinute()I

    move-result v0

    return v0
.end method

.method public getNano()I
    .locals 1

    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->getNano()I

    move-result v0

    return v0
.end method

.method public getOffset()Ljava/time/ZoneOffset;
    .locals 1

    iget-object v0, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public getSecond()I
    .locals 1

    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Ljava/time/OffsetTime;)Z
    .locals 4

    invoke-direct {p0}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p1}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBefore(Ljava/time/OffsetTime;)Z
    .locals 4

    invoke-direct {p0}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p1}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqual(Ljava/time/OffsetTime;)Z
    .locals 4

    invoke-direct {p0}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p1}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->isTimeBased()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
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
    .locals 1

    instance-of v0, p1, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalUnit;->isSupportedBy(Ljava/time/temporal/Temporal;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/OffsetTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, p3}, Ljava/time/OffsetTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/OffsetTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/OffsetTime;
    .locals 1

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetTime;

    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/OffsetTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/OffsetTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public minusHours(J)Ljava/time/OffsetTime;
    .locals 3

    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalTime;->minusHours(J)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public minusMinutes(J)Ljava/time/OffsetTime;
    .locals 3

    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalTime;->minusMinutes(J)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public minusNanos(J)Ljava/time/OffsetTime;
    .locals 3

    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalTime;->minusNanos(J)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public minusSeconds(J)Ljava/time/OffsetTime;
    .locals 3

    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalTime;->minusSeconds(J)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;
    .locals 3

    instance-of v0, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2, p3}, Ljava/time/LocalTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetTime;

    return-object v0
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/OffsetTime;
    .locals 1

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetTime;

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/OffsetTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/OffsetTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public plusHours(J)Ljava/time/OffsetTime;
    .locals 3

    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMinutes(J)Ljava/time/OffsetTime;
    .locals 3

    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalTime;->plusMinutes(J)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public plusNanos(J)Ljava/time/OffsetTime;
    .locals 3

    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalTime;->plusNanos(J)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Ljava/time/OffsetTime;
    .locals 3

    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalTime;->plusSeconds(J)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery",
            "<TR;>;)TR;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    return-object v0

    :cond_1
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_3

    move v0, v1

    :goto_0
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne p1, v3, :cond_4

    :goto_1
    or-int/2addr v0, v1

    if-nez v0, :cond_2

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_5

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    return-object v0

    :cond_6
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_7

    sget-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    :cond_7
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 1

    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_1

    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toLocalTime()Ljava/time/LocalTime;
    .locals 1

    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;
    .locals 2

    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .locals 8

    invoke-static {p1}, Ljava/time/OffsetTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetTime;

    move-result-object v0

    instance-of v1, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    invoke-direct {v0}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v4

    invoke-direct {p0}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v6

    sub-long v2, v4, v6

    invoke-static {}, Ljava/time/OffsetTime;->-getjava-time-temporal-ChronoUnitSwitchesValues()[I

    move-result-object v4

    move-object v1, p2

    check-cast v1, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unsupported unit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    return-wide v2

    :pswitch_1
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    return-wide v4

    :pswitch_2
    const-wide/32 v4, 0xf4240

    div-long v4, v2, v4

    return-wide v4

    :pswitch_3
    const-wide/32 v4, 0x3b9aca00

    div-long v4, v2, v4

    return-wide v4

    :pswitch_4
    const-wide v4, 0xdf8475800L

    div-long v4, v2, v4

    return-wide v4

    :pswitch_5
    const-wide v4, 0x34630b8a000L

    div-long v4, v2, v4

    return-wide v4

    :pswitch_6
    const-wide v4, 0x274a48a78000L

    div-long v4, v2, v4

    return-wide v4

    :cond_0
    invoke-interface {p2, p0, v0}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v4

    return-wide v4

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

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/OffsetTime;
    .locals 1

    instance-of v0, p1, Ljava/time/LocalTime;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/time/LocalTime;

    iget-object v0, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, p1, v0}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/time/ZoneOffset;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    check-cast p1, Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, p1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0

    :cond_1
    instance-of v0, p1, Ljava/time/OffsetTime;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/time/OffsetTime;

    return-object p1

    :cond_2
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/OffsetTime;

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/OffsetTime;
    .locals 4

    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_1

    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne p1, v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    iget-object v1, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p2, p3}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    invoke-static {v2}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1, p2, p3}, Ljava/time/LocalTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalTime;

    move-result-object v1

    iget-object v2, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v1, v2}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v1

    check-cast v1, Ljava/time/OffsetTime;

    return-object v1
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/OffsetTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/OffsetTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public withHour(I)Ljava/time/OffsetTime;
    .locals 2

    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->withHour(I)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public withMinute(I)Ljava/time/OffsetTime;
    .locals 2

    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->withMinute(I)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public withNano(I)Ljava/time/OffsetTime;
    .locals 2

    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->withNano(I)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public withOffsetSameInstant(Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;
    .locals 6

    iget-object v2, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {p1, v2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    iget-object v3, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v3}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v3

    sub-int v1, v2, v3

    iget-object v2, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/time/LocalTime;->plusSeconds(J)Ljava/time/LocalTime;

    move-result-object v0

    new-instance v2, Ljava/time/OffsetTime;

    invoke-direct {v2, v0, p1}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V

    return-object v2
.end method

.method public withOffsetSameLocal(Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {p1, v0}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/time/OffsetTime;

    iget-object v1, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-direct {v0, v1, p1}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withSecond(I)Ljava/time/OffsetTime;
    .locals 2

    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->withSecond(I)Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

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

    iget-object v0, p0, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->writeExternal(Ljava/io/DataOutput;)V

    iget-object v0, p0, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, p1}, Ljava/time/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    return-void
.end method
