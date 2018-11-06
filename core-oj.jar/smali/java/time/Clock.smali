.class public abstract Ljava/time/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/Clock$FixedClock;,
        Ljava/time/Clock$OffsetClock;,
        Ljava/time/Clock$SystemClock;,
        Ljava/time/Clock$TickClock;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fixed(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/Clock;
    .locals 1

    const-string/jumbo v0, "fixedInstant"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/time/Clock$FixedClock;

    invoke-direct {v0, p0, p1}, Ljava/time/Clock$FixedClock;-><init>(Ljava/time/Instant;Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static offset(Ljava/time/Clock;Ljava/time/Duration;)Ljava/time/Clock;
    .locals 1

    const-string/jumbo v0, "baseClock"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "offsetDuration"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {p1, v0}, Ljava/time/Duration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/time/Clock$OffsetClock;

    invoke-direct {v0, p0, p1}, Ljava/time/Clock$OffsetClock;-><init>(Ljava/time/Clock;Ljava/time/Duration;)V

    return-object v0
.end method

.method public static system(Ljava/time/ZoneId;)Ljava/time/Clock;
    .locals 1

    const-string/jumbo v0, "zone"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/time/Clock$SystemClock;

    invoke-direct {v0, p0}, Ljava/time/Clock$SystemClock;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static systemDefaultZone()Ljava/time/Clock;
    .locals 2

    new-instance v0, Ljava/time/Clock$SystemClock;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/Clock$SystemClock;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static systemUTC()Ljava/time/Clock;
    .locals 2

    new-instance v0, Ljava/time/Clock$SystemClock;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Ljava/time/Clock$SystemClock;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static tick(Ljava/time/Clock;Ljava/time/Duration;)Ljava/time/Clock;
    .locals 6

    const-wide/16 v4, 0x0

    const-string/jumbo v2, "baseClock"

    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v2, "tickDuration"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/time/Duration;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Tick duration must not be negative"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p1}, Ljava/time/Duration;->toNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    rem-long v2, v0, v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    :cond_1
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    return-object p0

    :cond_2
    const-wide/32 v2, 0x3b9aca00

    rem-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid tick duration"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v2, Ljava/time/Clock$TickClock;

    invoke-direct {v2, p0, v0, v1}, Ljava/time/Clock$TickClock;-><init>(Ljava/time/Clock;J)V

    return-object v2
.end method

.method public static tickMinutes(Ljava/time/ZoneId;)Ljava/time/Clock;
    .locals 4

    new-instance v0, Ljava/time/Clock$TickClock;

    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v1

    const-wide v2, 0xdf8475800L

    invoke-direct {v0, v1, v2, v3}, Ljava/time/Clock$TickClock;-><init>(Ljava/time/Clock;J)V

    return-object v0
.end method

.method public static tickSeconds(Ljava/time/ZoneId;)Ljava/time/Clock;
    .locals 4

    new-instance v0, Ljava/time/Clock$TickClock;

    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v1

    const-wide/32 v2, 0x3b9aca00

    invoke-direct {v0, v1, v2, v3}, Ljava/time/Clock$TickClock;-><init>(Ljava/time/Clock;J)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract getZone()Ljava/time/ZoneId;
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract instant()Ljava/time/Instant;
.end method

.method public millis()J
    .locals 2

    invoke-virtual {p0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract withZone(Ljava/time/ZoneId;)Ljava/time/Clock;
.end method
