.class final Ljava/time/format/Parsed;
.super Ljava/lang/Object;
.source "Parsed.java"

# interfaces
.implements Ljava/time/temporal/TemporalAccessor;


# instance fields
.field chrono:Ljava/time/chrono/Chronology;

.field private date:Ljava/time/chrono/ChronoLocalDate;

.field excessDays:Ljava/time/Period;

.field final fieldValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field leapSecond:Z

.field private resolverStyle:Ljava/time/format/ResolverStyle;

.field private time:Ljava/time/LocalTime;

.field zone:Ljava/time/ZoneId;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    iput-object v0, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    return-void
.end method

.method private crossCheck()V
    .locals 2

    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-direct {p0, v0}, Ljava/time/format/Parsed;->crossCheck(Ljava/time/temporal/TemporalAccessor;)V

    :cond_0
    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0}, Ljava/time/format/Parsed;->crossCheck(Ljava/time/temporal/TemporalAccessor;)V

    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoLocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/Parsed;->crossCheck(Ljava/time/temporal/TemporalAccessor;)V

    :cond_1
    return-void
.end method

.method private crossCheck(Ljava/time/temporal/TemporalAccessor;)V
    .locals 11

    iget-object v8, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/temporal/TemporalField;

    invoke-interface {p1, v2}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v8

    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {p1, v2}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    new-instance v8, Ljava/time/DateTimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Conflict found: Field "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " differs from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " derived from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private resolveDateFields()V
    .locals 3

    iget-object v0, p0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    iget-object v1, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    iget-object v2, p0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    invoke-interface {v0, v1, v2}, Ljava/time/chrono/Chronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/chrono/ChronoLocalDate;)V

    return-void
.end method

.method private resolveFields()V
    .locals 10

    const/16 v9, 0x32

    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveInstantFields()V

    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveDateFields()V

    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveTimeFields()V

    iget-object v7, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_a

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v9, :cond_8

    iget-object v7, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/time/temporal/TemporalField;

    iget-object v7, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    iget-object v8, p0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    invoke-interface {v6, v7, p0, v8}, Ljava/time/temporal/TemporalField;->resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v5

    if-eqz v5, :cond_7

    instance-of v7, v5, Ljava/time/chrono/ChronoZonedDateTime;

    if-eqz v7, :cond_2

    move-object v2, v5

    check-cast v2, Ljava/time/chrono/ChronoZonedDateTime;

    iget-object v7, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    if-nez v7, :cond_3

    invoke-interface {v2}, Ljava/time/chrono/ChronoZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v7

    iput-object v7, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    :cond_1
    invoke-interface {v2}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v5

    :cond_2
    instance-of v7, v5, Ljava/time/chrono/ChronoLocalDateTime;

    if-eqz v7, :cond_4

    move-object v1, v5

    check-cast v1, Ljava/time/chrono/ChronoLocalDateTime;

    invoke-interface {v1}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v7

    sget-object v8, Ljava/time/Period;->ZERO:Ljava/time/Period;

    invoke-direct {p0, v7, v8}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/LocalTime;Ljava/time/Period;)V

    invoke-interface {v1}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v7

    invoke-direct {p0, v7}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/chrono/ChronoLocalDate;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v7, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    invoke-interface {v2}, Ljava/time/chrono/ChronoZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/time/DateTimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ChronoZonedDateTime must use the effective parsed zone: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    instance-of v7, v5, Ljava/time/chrono/ChronoLocalDate;

    if-eqz v7, :cond_5

    check-cast v5, Ljava/time/chrono/ChronoLocalDate;

    invoke-direct {p0, v5}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/chrono/ChronoLocalDate;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    instance-of v7, v5, Ljava/time/LocalTime;

    if-eqz v7, :cond_6

    check-cast v5, Ljava/time/LocalTime;

    sget-object v7, Ljava/time/Period;->ZERO:Ljava/time/Period;

    invoke-direct {p0, v5, v7}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/LocalTime;Ljava/time/Period;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    new-instance v7, Ljava/time/DateTimeException;

    const-string/jumbo v8, "Method resolve() can only return ChronoZonedDateTime, ChronoLocalDateTime, ChronoLocalDate or LocalTime"

    invoke-direct {v7, v8}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_7
    iget-object v7, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    if-ne v0, v9, :cond_9

    new-instance v7, Ljava/time/DateTimeException;

    const-string/jumbo v8, "One of the parsed fields has an incorrectly implemented resolve method"

    invoke-direct {v7, v8}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_9
    if-lez v0, :cond_a

    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveInstantFields()V

    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveDateFields()V

    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveTimeFields()V

    :cond_a
    return-void
.end method

.method private resolveFractional()V
    .locals 8

    const-wide/16 v6, 0x0

    iget-object v2, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-nez v2, :cond_1

    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/32 v4, 0xf4240

    div-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private resolveInstant()V
    .locals 7

    iget-object v4, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    if-eqz v4, :cond_1

    iget-object v4, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    iget-object v5, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-interface {v4, v5}, Ljava/time/chrono/ChronoLocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v4

    iget-object v5, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    invoke-interface {v4, v5}, Ljava/time/chrono/ChronoLocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v4

    sget-object v5, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/time/chrono/ChronoZonedDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    iget-object v4, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v2

    iget-object v4, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    iget-object v5, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-interface {v4, v5}, Ljava/time/chrono/ChronoLocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/time/chrono/ChronoLocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v4

    sget-object v5, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/time/chrono/ChronoZonedDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    iget-object v4, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private resolveInstantFields()V
    .locals 4

    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    invoke-direct {p0, v2}, Ljava/time/format/Parsed;->resolveInstantFields0(Ljava/time/ZoneId;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/Parsed;->resolveInstantFields0(Ljava/time/ZoneId;)V

    goto :goto_0
.end method

.method private resolveInstantFields0(Ljava/time/ZoneId;)V
    .locals 6

    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object v0

    iget-object v2, p0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {v2, v0, p1}, Ljava/time/chrono/Chronology;->zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v1

    invoke-interface {v1}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/chrono/ChronoLocalDate;)V

    sget-object v2, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    sget-object v3, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v1}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    return-void
.end method

.method private resolvePeriod()V
    .locals 2

    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    invoke-virtual {v0}, Ljava/time/Period;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    iget-object v1, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoLocalDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    iput-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    sget-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    iput-object v0, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    :cond_0
    return-void
.end method

.method private resolveTime(JJJJ)V
    .locals 15

    iget-object v9, p0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v12, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne v9, v12, :cond_0

    const-wide v12, 0x34630b8a000L

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v10

    const-wide v12, 0xdf8475800L

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v10

    const-wide/32 v12, 0x3b9aca00

    move-wide/from16 v0, p5

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v10

    move-wide/from16 v0, p7

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v10

    const-wide v12, 0x4e94914f0000L

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v12

    long-to-int v2, v12

    const-wide v12, 0x4e94914f0000L

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v9

    invoke-static {v2}, Ljava/time/Period;->ofDays(I)Ljava/time/Period;

    move-result-object v12

    invoke-direct {p0, v9, v12}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/LocalTime;Ljava/time/Period;)V

    :goto_0
    return-void

    :cond_0
    sget-object v9, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, p3

    invoke-virtual {v9, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v4

    sget-object v9, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, p7

    invoke-virtual {v9, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v5

    iget-object v9, p0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v12, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    if-ne v9, v12, :cond_1

    const-wide/16 v12, 0x18

    cmp-long v9, p1, v12

    if-nez v9, :cond_1

    if-nez v4, :cond_1

    const-wide/16 v12, 0x0

    cmp-long v9, p5, v12

    if-nez v9, :cond_1

    if-nez v5, :cond_1

    sget-object v9, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/time/Period;->ofDays(I)Ljava/time/Period;

    move-result-object v12

    invoke-direct {p0, v9, v12}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/LocalTime;Ljava/time/Period;)V

    goto :goto_0

    :cond_1
    sget-object v9, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v3

    sget-object v9, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, p5

    invoke-virtual {v9, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v8

    invoke-static {v3, v4, v8, v5}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v9

    sget-object v12, Ljava/time/Period;->ZERO:Ljava/time/Period;

    invoke-direct {p0, v9, v12}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/LocalTime;Ljava/time/Period;)V

    goto :goto_0
.end method

.method private resolveTimeFields()V
    .locals 38

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    if-ne v4, v5, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-eqz v4, :cond_1

    :cond_0
    sget-object v4, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_1
    sget-object v4, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const-wide/16 v34, 0x18

    cmp-long v34, v16, v34

    if-nez v34, :cond_2

    const-wide/16 v16, 0x0

    :cond_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-eq v4, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    if-ne v4, v5, :cond_5

    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-eqz v4, :cond_5

    :cond_4
    sget-object v4, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_5
    sget-object v4, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    const-wide/16 v34, 0xc

    cmp-long v34, v16, v34

    if-nez v34, :cond_6

    const-wide/16 v16, 0x0

    :cond_6
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne v4, v5, :cond_19

    sget-object v4, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const-wide/16 v34, 0xc

    move-wide/from16 v0, v34

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    :cond_8
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v4, v5, :cond_9

    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_9
    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const-wide v34, 0x34630b8a000L

    div-long v34, v30, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    const-wide v34, 0xdf8475800L

    div-long v34, v30, v34

    const-wide/16 v36, 0x3c

    rem-long v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    const-wide/32 v34, 0x3b9aca00

    div-long v34, v30, v34

    const-wide/16 v36, 0x3c

    rem-long v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/32 v34, 0x3b9aca00

    rem-long v34, v30, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v4, v5, :cond_b

    sget-object v4, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_b
    sget-object v4, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    const-wide/32 v34, 0xf4240

    div-long v34, v18, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    sget-object v4, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/32 v34, 0xf4240

    rem-long v34, v18, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v4, v5, :cond_d

    sget-object v4, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_d
    sget-object v4, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    const-wide/16 v34, 0x3e8

    div-long v34, v24, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    sget-object v4, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/16 v34, 0x3e8

    rem-long v34, v24, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v4, v5, :cond_f

    sget-object v4, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_f
    sget-object v4, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const-wide/16 v34, 0xe10

    div-long v34, v32, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    sget-object v4, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    const-wide/16 v34, 0x3c

    div-long v34, v32, v34

    const-wide/16 v36, 0x3c

    rem-long v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    sget-object v4, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    const-wide/16 v34, 0x3c

    rem-long v34, v32, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v4, v5, :cond_11

    sget-object v4, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_11
    sget-object v4, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const-wide/16 v34, 0x3c

    div-long v34, v28, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    sget-object v4, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    const-wide/16 v34, 0x3c

    rem-long v34, v28, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v4, v5, :cond_13

    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v4, v12, v13}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v4, v5, :cond_14

    sget-object v4, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_14
    const-wide/16 v4, 0x3e8

    mul-long v4, v4, v20

    const-wide/16 v34, 0x3e8

    rem-long v34, v12, v34

    add-long v12, v4, v34

    sget-object v4, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v4, v5, :cond_16

    sget-object v4, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_16
    sget-object v4, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/32 v34, 0xf4240

    mul-long v34, v34, v26

    const-wide/32 v36, 0xf4240

    rem-long v36, v12, v36

    add-long v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v13}, Ljava/time/format/Parsed;->resolveTime(JJJJ)V

    :cond_18
    return-void

    :cond_19
    sget-object v4, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v4, v14, v15}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v4, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v4, v14, v15}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v4, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const-wide/16 v34, 0xc

    mul-long v34, v34, v14

    add-long v34, v34, v22

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    goto/16 :goto_0
.end method

.method private resolveTimeLenient()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-wide/16 v4, 0x3e8

    mul-long v4, v4, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v22, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    rem-long v22, v22, v24

    add-long v12, v4, v22

    sget-object v3, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    sget-object v4, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v12

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    if-nez v17, :cond_4

    if-nez v21, :cond_1

    if-eqz v20, :cond_4

    :cond_1
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/32 v22, 0xf4240

    mul-long v22, v22, v18

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v12

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    if-eqz v17, :cond_5

    if-nez v21, :cond_5

    if-nez v20, :cond_1

    :cond_5
    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_1
    if-eqz v21, :cond_9

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_2
    if-eqz v20, :cond_a

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Ljava/time/format/Parsed;->resolveTime(JJJJ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v3, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_7
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/time/temporal/TemporalField;

    instance-of v3, v15, Ljava/time/temporal/ChronoField;

    if-eqz v3, :cond_7

    invoke-interface {v15}, Ljava/time/temporal/TemporalField;->isTimeBased()Z

    move-result v3

    if-eqz v3, :cond_7

    check-cast v15, Ljava/time/temporal/ChronoField;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v15, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    goto :goto_4

    :cond_8
    const-wide/16 v6, 0x0

    goto/16 :goto_1

    :cond_9
    const-wide/16 v8, 0x0

    goto/16 :goto_2

    :cond_a
    const-wide/16 v10, 0x0

    goto/16 :goto_3

    :cond_b
    return-void
.end method

.method private updateCheckConflict(Ljava/time/LocalTime;Ljava/time/Period;)V
    .locals 3

    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Conflict found: Fields resolved to different times: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    invoke-virtual {v0}, Ljava/time/Period;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/time/Period;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    invoke-virtual {v0, p2}, Ljava/time/Period;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Conflict found: Fields resolved to different excess periods: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p2, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    :goto_0
    return-void

    :cond_2
    iput-object p1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    iput-object p2, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    goto :goto_0
.end method

.method private updateCheckConflict(Ljava/time/chrono/ChronoLocalDate;)V
    .locals 3

    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v0, p1}, Ljava/time/chrono/ChronoLocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Conflict found: Fields resolved to two different dates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ChronoLocalDate must use the effective parsed chronology: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    :cond_2
    return-void
.end method

.method private updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V
    .locals 6

    iget-object v1, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Conflict found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " differs from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " while resolving  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method


# virtual methods
.method copy()Ljava/time/format/Parsed;
    .locals 3

    new-instance v0, Ljava/time/format/Parsed;

    invoke-direct {v0}, Ljava/time/format/Parsed;-><init>()V

    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    iput-object v1, v0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    iget-object v1, p0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    iput-object v1, v0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    iget-boolean v1, p0, Ljava/time/format/Parsed;->leapSecond:Z

    iput-boolean v1, v0, Ljava/time/format/Parsed;->leapSecond:Z

    return-object v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 4

    const-string/jumbo v1, "field"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2

    :cond_0
    iget-object v1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1}, Ljava/time/chrono/ChronoLocalDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1}, Ljava/time/chrono/ChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    return-wide v2

    :cond_1
    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    return-wide v2

    :cond_2
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    return-wide v2
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 1

    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v0, p1}, Ljava/time/chrono/ChronoLocalDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    if-eqz p1, :cond_3

    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-nez v0, :cond_3

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery",
            "<TR;>;)TR;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    return-object v0

    :cond_0
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    return-object v0

    :cond_1
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_2

    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-static {v0}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    if-ne p1, v1, :cond_4

    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    return-object v0

    :cond_4
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    if-eq p1, v1, :cond_5

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    if-ne p1, v1, :cond_6

    :cond_5
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    if-ne p1, v1, :cond_7

    return-object v0

    :cond_7
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method resolve(Ljava/time/format/ResolverStyle;Ljava/util/Set;)Ljava/time/temporal/TemporalAccessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/ResolverStyle;",
            "Ljava/util/Set",
            "<",
            "Ljava/time/temporal/TemporalField;",
            ">;)",
            "Ljava/time/temporal/TemporalAccessor;"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    :cond_0
    iput-object p1, p0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveFields()V

    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveTimeLenient()V

    invoke-direct {p0}, Ljava/time/format/Parsed;->crossCheck()V

    invoke-direct {p0}, Ljava/time/format/Parsed;->resolvePeriod()V

    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveFractional()V

    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveInstant()V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x2c

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-nez v1, :cond_1

    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v1, :cond_2

    :cond_1
    const-string/jumbo v1, " resolved to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v1, :cond_2

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
