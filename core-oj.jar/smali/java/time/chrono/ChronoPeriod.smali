.class public interface abstract Ljava/time/chrono/ChronoPeriod;
.super Ljava/lang/Object;
.source "ChronoPeriod.java"

# interfaces
.implements Ljava/time/temporal/TemporalAmount;


# direct methods
.method public static between(Ljava/time/chrono/ChronoLocalDate;Ljava/time/chrono/ChronoLocalDate;)Ljava/time/chrono/ChronoPeriod;
    .locals 1

    const-string/jumbo v0, "startDateInclusive"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "endDateExclusive"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/chrono/ChronoPeriod;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract get(Ljava/time/temporal/TemporalUnit;)J
.end method

.method public abstract getChronology()Ljava/time/chrono/Chronology;
.end method

.method public abstract getUnits()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public isNegative()Z
    .locals 6

    invoke-interface {p0}, Ljava/time/chrono/ChronoPeriod;->getUnits()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/temporal/TemporalUnit;

    invoke-interface {p0, v0}, Ljava/time/chrono/ChronoPeriod;->get(Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public isZero()Z
    .locals 6

    invoke-interface {p0}, Ljava/time/chrono/ChronoPeriod;->getUnits()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/temporal/TemporalUnit;

    invoke-interface {p0, v0}, Ljava/time/chrono/ChronoPeriod;->get(Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public abstract minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriod;
.end method

.method public abstract multipliedBy(I)Ljava/time/chrono/ChronoPeriod;
.end method

.method public negated()Ljava/time/chrono/ChronoPeriod;
    .locals 1

    const/4 v0, -0x1

    invoke-interface {p0, v0}, Ljava/time/chrono/ChronoPeriod;->multipliedBy(I)Ljava/time/chrono/ChronoPeriod;

    move-result-object v0

    return-object v0
.end method

.method public abstract normalized()Ljava/time/chrono/ChronoPeriod;
.end method

.method public abstract plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriod;
.end method

.method public abstract subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
