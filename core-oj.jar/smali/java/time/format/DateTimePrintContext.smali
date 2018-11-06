.class final Ljava/time/format/DateTimePrintContext;
.super Ljava/lang/Object;
.source "DateTimePrintContext.java"


# instance fields
.field private formatter:Ljava/time/format/DateTimeFormatter;

.field private optional:I

.field private temporal:Ljava/time/temporal/TemporalAccessor;


# direct methods
.method constructor <init>(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Ljava/time/format/DateTimePrintContext;->adjust(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    iput-object v0, p0, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    iput-object p2, p0, Ljava/time/format/DateTimePrintContext;->formatter:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method private static adjust(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)Ljava/time/temporal/TemporalAccessor;
    .locals 13

    invoke-virtual {p1}, Ljava/time/format/DateTimeFormatter;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v5

    invoke-virtual {p1}, Ljava/time/format/DateTimeFormatter;->getZone()Ljava/time/ZoneId;

    move-result-object v6

    if-nez v5, :cond_0

    if-nez v6, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v9

    invoke-interface {p0, v9}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/time/chrono/Chronology;

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v9

    invoke-interface {p0, v9}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/time/ZoneId;

    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v5, 0x0

    :cond_1
    invoke-static {v6, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v6, 0x0

    :cond_2
    if-nez v5, :cond_3

    if-nez v6, :cond_3

    return-object p0

    :cond_3
    if-eqz v5, :cond_4

    move-object v1, v5

    :goto_0
    if-eqz v6, :cond_7

    sget-object v9, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v9}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v9

    if-eqz v9, :cond_6

    if-eqz v1, :cond_5

    move-object v0, v1

    :goto_1
    invoke-static {p0}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object v9

    invoke-interface {v0, v9, v6}, Ljava/time/chrono/Chronology;->zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v9

    return-object v9

    :cond_4
    move-object v1, v7

    goto :goto_0

    :cond_5
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Ljava/time/ZoneId;->normalized()Ljava/time/ZoneId;

    move-result-object v9

    instance-of v9, v9, Ljava/time/ZoneOffset;

    if-eqz v9, :cond_7

    sget-object v9, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v9}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v9

    if-eqz v9, :cond_7

    sget-object v9, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v9}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v9

    invoke-virtual {v6}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v10

    sget-object v11, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    invoke-virtual {v10, v11}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v10

    if-eq v9, v10, :cond_7

    new-instance v9, Ljava/time/DateTimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to apply override zone \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\' because the temporal object being formatted has a different offset but"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " does not represent an instant: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_7
    if-eqz v6, :cond_8

    move-object v3, v6

    :goto_2
    if-eqz v5, :cond_d

    sget-object v9, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v9}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v1, p0}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    :goto_3
    new-instance v9, Ljava/time/format/DateTimePrintContext$1;

    invoke-direct {v9, v2, p0, v1, v3}, Ljava/time/format/DateTimePrintContext$1;-><init>(Ljava/time/chrono/ChronoLocalDate;Ljava/time/temporal/TemporalAccessor;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v9

    :cond_8
    move-object v3, v8

    goto :goto_2

    :cond_9
    sget-object v9, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    if-ne v5, v9, :cond_a

    if-eqz v7, :cond_c

    :cond_a
    invoke-static {}, Ljava/time/temporal/ChronoField;->values()[Ljava/time/temporal/ChronoField;

    move-result-object v10

    const/4 v9, 0x0

    array-length v11, v10

    :goto_4
    if-ge v9, v11, :cond_c

    aget-object v4, v10, v9

    invoke-virtual {v4}, Ljava/time/temporal/ChronoField;->isDateBased()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {p0, v4}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v12

    if-eqz v12, :cond_b

    new-instance v9, Ljava/time/DateTimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to apply override chronology \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\' because the temporal object being formatted contains date fields but"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " does not represent a whole date: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_c
    const/4 v2, 0x0

    goto :goto_3

    :cond_d
    const/4 v2, 0x0

    goto :goto_3
.end method


# virtual methods
.method endOptional()V
    .locals 1

    iget v0, p0, Ljava/time/format/DateTimePrintContext;->optional:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/time/format/DateTimePrintContext;->optional:I

    return-void
.end method

.method getDecimalStyle()Ljava/time/format/DecimalStyle;
    .locals 1

    iget-object v0, p0, Ljava/time/format/DateTimePrintContext;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatter;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v0

    return-object v0
.end method

.method getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Ljava/time/format/DateTimePrintContext;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method getTemporal()Ljava/time/temporal/TemporalAccessor;
    .locals 1

    iget-object v0, p0, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    return-object v0
.end method

.method getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;
    .locals 4

    :try_start_0
    iget-object v1, p0, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    invoke-interface {v1, p1}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    iget v1, p0, Ljava/time/format/DateTimePrintContext;->optional:I

    if-lez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    throw v0
.end method

.method getValue(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
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

    iget-object v1, p0, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    invoke-interface {v1, p1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget v1, p0, Ljava/time/format/DateTimePrintContext;->optional:I

    if-nez v1, :cond_0

    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to extract value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method startOptional()V
    .locals 1

    iget v0, p0, Ljava/time/format/DateTimePrintContext;->optional:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/time/format/DateTimePrintContext;->optional:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
