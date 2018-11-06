.class public interface abstract Ljava/time/temporal/TemporalField;
.super Ljava/lang/Object;
.source "TemporalField.java"


# virtual methods
.method public abstract adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation
.end method

.method public abstract getBaseUnit()Ljava/time/temporal/TemporalUnit;
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "locale"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/time/temporal/TemporalField;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getFrom(Ljava/time/temporal/TemporalAccessor;)J
.end method

.method public abstract getRangeUnit()Ljava/time/temporal/TemporalUnit;
.end method

.method public abstract isDateBased()Z
.end method

.method public abstract isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
.end method

.method public abstract isTimeBased()Z
.end method

.method public abstract range()Ljava/time/temporal/ValueRange;
.end method

.method public abstract rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
.end method

.method public resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/temporal/TemporalAccessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/temporal/TemporalAccessor;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/temporal/TemporalAccessor;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method
