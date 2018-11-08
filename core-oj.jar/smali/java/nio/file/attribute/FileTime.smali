.class public final Ljava/nio/file/attribute/FileTime;
.super Ljava/lang/Object;
.source "FileTime.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/file/attribute/FileTime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic -java-util-concurrent-TimeUnitSwitchesValues:[I = null

.field private static final DAYS_PER_10000_YEARS:J = 0x37bb49L

.field private static final HOURS_PER_DAY:J = 0x18L

.field private static final MAX_SECOND:J = 0x701cd2fa9578ffL

.field private static final MICROS_PER_SECOND:J = 0xf4240L

.field private static final MILLIS_PER_SECOND:J = 0x3e8L

.field private static final MINUTES_PER_HOUR:J = 0x3cL

.field private static final MIN_SECOND:J = -0x701cefeb9bec00L

.field private static final NANOS_PER_MICRO:I = 0x3e8

.field private static final NANOS_PER_MILLI:I = 0xf4240

.field private static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field private static final SECONDS_0000_TO_1970:J = 0xe79747c00L

.field private static final SECONDS_PER_10000_YEARS:J = 0x497968bd80L

.field private static final SECONDS_PER_DAY:J = 0x15180L

.field private static final SECONDS_PER_HOUR:J = 0xe10L

.field private static final SECONDS_PER_MINUTE:J = 0x3cL


# instance fields
.field private instant:Ljava/time/Instant;

.field private final unit:Ljava/util/concurrent/TimeUnit;

.field private final value:J

.field private valueAsString:Ljava/lang/String;


# direct methods
.method private static synthetic -getjava-util-concurrent-TimeUnitSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/nio/file/attribute/FileTime;->-java-util-concurrent-TimeUnitSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/nio/file/attribute/FileTime;->-java-util-concurrent-TimeUnitSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/concurrent/TimeUnit;->values()[Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Ljava/nio/file/attribute/FileTime;->-java-util-concurrent-TimeUnitSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method private constructor <init>(JLjava/util/concurrent/TimeUnit;Ljava/time/Instant;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljava/nio/file/attribute/FileTime;->value:J

    iput-object p3, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iput-object p4, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    return-void
.end method

.method private append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;
    .locals 1

    :goto_0
    if-lez p2, :cond_0

    div-int v0, p3, p2

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/2addr p3, p2

    div-int/lit8 p2, p2, 0xa

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;
    .locals 2

    const-string/jumbo v0, "unit"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/nio/file/attribute/FileTime;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/nio/file/attribute/FileTime;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/time/Instant;)V

    return-object v0
.end method

.method public static from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;
    .locals 4

    const-string/jumbo v0, "instant"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/nio/file/attribute/FileTime;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1, p0}, Ljava/nio/file/attribute/FileTime;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/time/Instant;)V

    return-object v0
.end method

.method public static fromMillis(J)Ljava/nio/file/attribute/FileTime;
    .locals 4

    new-instance v0, Ljava/nio/file/attribute/FileTime;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Ljava/nio/file/attribute/FileTime;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/time/Instant;)V

    return-object v0
.end method

.method private static scale(JJJ)J
    .locals 2

    cmp-long v0, p0, p4

    if-lez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_0
    neg-long v0, p4

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_1
    mul-long v0, p0, p2

    return-wide v0
.end method

.method private toDays()J
    .locals 4

    iget-object v0, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Ljava/nio/file/attribute/FileTime;->value:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private toExcessNanos(J)J
    .locals 7

    iget-object v0, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Ljava/nio/file/attribute/FileTime;->value:J

    iget-object v1, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/nio/file/attribute/FileTime;

    invoke-virtual {p0, p1}, Ljava/nio/file/attribute/FileTime;->compareTo(Ljava/nio/file/attribute/FileTime;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/file/attribute/FileTime;)I
    .locals 14

    iget-object v1, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v10, p1, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-ne v1, v10, :cond_0

    iget-wide v10, p0, Ljava/nio/file/attribute/FileTime;->value:J

    iget-wide v12, p1, Ljava/nio/file/attribute/FileTime;->value:J

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Long;->compare(JJ)I

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->getNano()I

    move-result v1

    int-to-long v10, v1

    invoke-virtual {p1}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->getNano()I

    move-result v1

    int-to-long v12, v1

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    const-wide v10, 0x701cd2fa9578ffL

    cmp-long v1, v6, v10

    if-eqz v1, :cond_3

    const-wide v10, -0x701cefeb9bec00L

    cmp-long v1, v6, v10

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    return v1

    :cond_3
    invoke-direct {p0}, Ljava/nio/file/attribute/FileTime;->toDays()J

    move-result-wide v2

    invoke-direct {p1}, Ljava/nio/file/attribute/FileTime;->toDays()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    invoke-direct {p0, v2, v3}, Ljava/nio/file/attribute/FileTime;->toExcessNanos(J)J

    move-result-wide v10

    invoke-direct {p1, v4, v5}, Ljava/nio/file/attribute/FileTime;->toExcessNanos(J)J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Long;->compare(JJ)I

    move-result v1

    return v1

    :cond_4
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/nio/file/attribute/FileTime;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/nio/file/attribute/FileTime;

    invoke-virtual {p0, p1}, Ljava/nio/file/attribute/FileTime;->compareTo(Ljava/nio/file/attribute/FileTime;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->hashCode()I

    move-result v0

    return v0
.end method

.method public to(Ljava/util/concurrent/TimeUnit;)J
    .locals 10

    const-string/jumbo v6, "unit"

    invoke-static {p1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v6, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v6, :cond_0

    iget-wide v6, p0, Ljava/nio/file/attribute/FileTime;->value:J

    iget-object v8, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    return-wide v6

    :cond_0
    iget-object v6, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    invoke-virtual {v6}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    :cond_1
    return-wide v4

    :cond_2
    iget-object v6, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    invoke-virtual {v6}, Ljava/time/Instant;->getNano()I

    move-result v6

    int-to-long v6, v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    add-long v2, v4, v0

    xor-long v6, v4, v2

    xor-long v8, v0, v2

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_3

    const-wide/high16 v6, -0x8000000000000000L

    :goto_0
    return-wide v6

    :cond_3
    const-wide v6, 0x7fffffffffffffffL

    goto :goto_0

    :cond_4
    return-wide v2
.end method

.method public toInstant()Ljava/time/Instant;
    .locals 12

    const-wide/32 v10, 0x3b9aca00

    const-wide/32 v4, 0xf4240

    const-wide/16 v2, 0x3e8

    iget-object v0, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    if-nez v0, :cond_0

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    invoke-static {}, Ljava/nio/file/attribute/FileTime;->-getjava-util-concurrent-TimeUnitSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Unit not handled"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    iget-wide v0, p0, Ljava/nio/file/attribute/FileTime;->value:J

    const-wide/32 v2, 0x15180

    const-wide v4, 0x611722833944L

    invoke-static/range {v0 .. v5}, Ljava/nio/file/attribute/FileTime;->scale(JJJ)J

    move-result-wide v8

    :goto_0
    const-wide v0, -0x701cefeb9bec00L

    cmp-long v0, v8, v0

    if-gtz v0, :cond_1

    sget-object v0, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    iput-object v0, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    :cond_0
    :goto_1
    iget-object v0, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    return-object v0

    :pswitch_1
    iget-wide v0, p0, Ljava/nio/file/attribute/FileTime;->value:J

    const-wide/16 v2, 0xe10

    const-wide v4, 0x91a2b3c4d5e6fL

    invoke-static/range {v0 .. v5}, Ljava/nio/file/attribute/FileTime;->scale(JJJ)J

    move-result-wide v8

    goto :goto_0

    :pswitch_2
    iget-wide v0, p0, Ljava/nio/file/attribute/FileTime;->value:J

    const-wide/16 v2, 0x3c

    const-wide v4, 0x222222222222222L

    invoke-static/range {v0 .. v5}, Ljava/nio/file/attribute/FileTime;->scale(JJJ)J

    move-result-wide v8

    goto :goto_0

    :pswitch_3
    iget-wide v8, p0, Ljava/nio/file/attribute/FileTime;->value:J

    goto :goto_0

    :pswitch_4
    iget-wide v0, p0, Ljava/nio/file/attribute/FileTime;->value:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v8

    iget-wide v0, p0, Ljava/nio/file/attribute/FileTime;->value:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const v1, 0xf4240

    mul-int v6, v0, v1

    goto :goto_0

    :pswitch_5
    iget-wide v0, p0, Ljava/nio/file/attribute/FileTime;->value:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v8

    iget-wide v0, p0, Ljava/nio/file/attribute/FileTime;->value:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    mul-int/lit16 v6, v0, 0x3e8

    goto :goto_0

    :pswitch_6
    iget-wide v0, p0, Ljava/nio/file/attribute/FileTime;->value:J

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v8

    iget-wide v0, p0, Ljava/nio/file/attribute/FileTime;->value:J

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v0

    long-to-int v6, v0

    goto :goto_0

    :cond_1
    const-wide v0, 0x701cd2fa9578ffL

    cmp-long v0, v8, v0

    if-ltz v0, :cond_2

    sget-object v0, Ljava/time/Instant;->MAX:Ljava/time/Instant;

    iput-object v0, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    goto :goto_1

    :cond_2
    int-to-long v0, v6

    invoke-static {v8, v9, v0, v1}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method

.method public toMillis()J
    .locals 14

    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x3e8

    iget-object v3, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v8, p0, Ljava/nio/file/attribute/FileTime;->value:J

    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    return-wide v8

    :cond_0
    iget-object v3, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    invoke-virtual {v3}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v6

    iget-object v3, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    invoke-virtual {v3}, Ljava/time/Instant;->getNano()I

    move-result v2

    mul-long v4, v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    or-long v8, v0, v10

    const/16 v3, 0x1f

    ushr-long/2addr v8, v3

    cmp-long v3, v8, v12

    if-eqz v3, :cond_2

    div-long v8, v4, v10

    cmp-long v3, v8, v6

    if-eqz v3, :cond_2

    cmp-long v3, v6, v12

    if-gez v3, :cond_1

    const-wide/high16 v8, -0x8000000000000000L

    :goto_0
    return-wide v8

    :cond_1
    const-wide v8, 0x7fffffffffffffffL

    goto :goto_0

    :cond_2
    const v3, 0xf4240

    div-int v3, v2, v3

    int-to-long v8, v3

    add-long/2addr v8, v4

    return-wide v8
.end method

.method public toString()Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/file/attribute/FileTime;->valueAsString:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v18, v0

    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/TimeUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v18

    if-ltz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/nio/file/attribute/FileTime;->value:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v12

    :goto_0
    const/4 v15, 0x0

    const-wide v18, -0xe79747c00L

    cmp-long v18, v12, v18

    if-ltz v18, :cond_2

    const-wide v18, 0x497968bd80L

    sub-long v18, v12, v18

    const-wide v20, 0xe79747c00L

    add-long v16, v18, v20

    const-wide v18, 0x497968bd80L

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v18

    const-wide/16 v20, 0x1

    add-long v6, v18, v20

    const-wide v18, 0x497968bd80L

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v8

    const-wide v18, 0xe79747c00L

    sub-long v18, v8, v18

    sget-object v20, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    move-wide/from16 v0, v18

    move-object/from16 v2, v20

    invoke-static {v0, v1, v10, v2}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getYear()I

    move-result v18

    long-to-int v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v19, v0

    add-int v15, v18, v19

    :goto_1
    if-gtz v15, :cond_0

    add-int/lit8 v15, v15, -0x1

    :cond_0
    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getNano()I

    move-result v4

    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v18, 0x40

    move/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    if-gez v15, :cond_3

    const-string/jumbo v18, "-"

    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    const/16 v18, 0x2710

    move/from16 v0, v18

    if-ge v15, v0, :cond_4

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v18

    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v11, v1, v2}, Ljava/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    :goto_3
    const/16 v18, 0x2d

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v18

    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v11, v1, v2}, Ljava/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    const/16 v18, 0x2d

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v18

    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v11, v1, v2}, Ljava/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    const/16 v18, 0x54

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getHour()I

    move-result v18

    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v11, v1, v2}, Ljava/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    const/16 v18, 0x3a

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v18

    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v11, v1, v2}, Ljava/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    const/16 v18, 0x3a

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v18

    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v11, v1, v2}, Ljava/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_6

    const/16 v18, 0x2e

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v14, 0x5f5e100

    :goto_4
    rem-int/lit8 v18, v4, 0xa

    if-nez v18, :cond_5

    div-int/lit8 v4, v4, 0xa

    div-int/lit8 v14, v14, 0xa

    goto :goto_4

    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/time/Instant;->getNano()I

    move-result v10

    goto/16 :goto_0

    :cond_2
    const-wide v18, 0xe79747c00L

    add-long v16, v12, v18

    const-wide v18, 0x497968bd80L

    div-long v6, v16, v18

    const-wide v18, 0x497968bd80L

    rem-long v8, v16, v18

    const-wide v18, 0xe79747c00L

    sub-long v18, v8, v18

    sget-object v20, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    move-wide/from16 v0, v18

    move-object/from16 v2, v20

    invoke-static {v0, v1, v10, v2}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getYear()I

    move-result v18

    long-to-int v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v19, v0

    add-int v15, v18, v19

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v18, ""

    goto/16 :goto_2

    :cond_4
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14, v4}, Ljava/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    :cond_6
    const/16 v18, 0x5a

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/nio/file/attribute/FileTime;->valueAsString:Ljava/lang/String;

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/file/attribute/FileTime;->valueAsString:Ljava/lang/String;

    move-object/from16 v18, v0

    return-object v18
.end method
