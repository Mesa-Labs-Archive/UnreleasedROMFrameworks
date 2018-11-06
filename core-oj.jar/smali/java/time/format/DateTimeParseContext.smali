.class final Ljava/time/format/DateTimeParseContext;
.super Ljava/lang/Object;
.source "DateTimeParseContext.java"


# instance fields
.field private caseSensitive:Z

.field private chronoListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/time/chrono/Chronology;",
            ">;>;"
        }
    .end annotation
.end field

.field private formatter:Ljava/time/format/DateTimeFormatter;

.field private final parsed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/time/format/Parsed;",
            ">;"
        }
    .end annotation
.end field

.field private strict:Z


# direct methods
.method constructor <init>(Ljava/time/format/DateTimeFormatter;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Ljava/time/format/DateTimeParseContext;->caseSensitive:Z

    iput-boolean v0, p0, Ljava/time/format/DateTimeParseContext;->strict:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Ljava/time/format/DateTimeParseContext;->formatter:Ljava/time/format/DateTimeFormatter;

    iget-object v0, p0, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    new-instance v1, Ljava/time/format/Parsed;

    invoke-direct {v1}, Ljava/time/format/Parsed;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static charEqualsIgnoreCase(CC)Z
    .locals 3

    const/4 v0, 0x1

    if-eq p0, p1, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private currentParsed()Ljava/time/format/Parsed;
    .locals 2

    iget-object v0, p0, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    iget-object v1, p0, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/format/Parsed;

    return-object v0
.end method


# virtual methods
.method addChronoChangedListener(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/time/chrono/Chronology;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ljava/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Ljava/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method charEquals(CC)Z
    .locals 1

    invoke-virtual {p0}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Ljava/time/format/DateTimeParseContext;->charEqualsIgnoreCase(CC)Z

    move-result v0

    return v0
.end method

.method copy()Ljava/time/format/DateTimeParseContext;
    .locals 2

    new-instance v0, Ljava/time/format/DateTimeParseContext;

    iget-object v1, p0, Ljava/time/format/DateTimeParseContext;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-direct {v0, v1}, Ljava/time/format/DateTimeParseContext;-><init>(Ljava/time/format/DateTimeFormatter;)V

    iget-boolean v1, p0, Ljava/time/format/DateTimeParseContext;->caseSensitive:Z

    iput-boolean v1, v0, Ljava/time/format/DateTimeParseContext;->caseSensitive:Z

    iget-boolean v1, p0, Ljava/time/format/DateTimeParseContext;->strict:Z

    iput-boolean v1, v0, Ljava/time/format/DateTimeParseContext;->strict:Z

    return-object v0
.end method

.method endOptional(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    iget-object v1, p0, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    iget-object v1, p0, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method getDecimalStyle()Ljava/time/format/DecimalStyle;
    .locals 1

    iget-object v0, p0, Ljava/time/format/DateTimeParseContext;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatter;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v0

    return-object v0
.end method

.method getEffectiveChronology()Ljava/time/chrono/Chronology;
    .locals 2

    invoke-direct {p0}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/Parsed;

    move-result-object v1

    iget-object v0, v1, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    if-nez v0, :cond_0

    iget-object v1, p0, Ljava/time/format/DateTimeParseContext;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatter;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    :cond_0
    return-object v0
.end method

.method getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Ljava/time/format/DateTimeParseContext;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;
    .locals 1

    invoke-direct {p0}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/Parsed;

    move-result-object v0

    iget-object v0, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method isCaseSensitive()Z
    .locals 1

    iget-boolean v0, p0, Ljava/time/format/DateTimeParseContext;->caseSensitive:Z

    return v0
.end method

.method isStrict()Z
    .locals 1

    iget-boolean v0, p0, Ljava/time/format/DateTimeParseContext;->strict:Z

    return v0
.end method

.method setCaseSensitive(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/time/format/DateTimeParseContext;->caseSensitive:Z

    return-void
.end method

.method setParsed(Ljava/time/ZoneId;)V
    .locals 1

    const-string/jumbo v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/Parsed;

    move-result-object v0

    iput-object p1, v0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    return-void
.end method

.method setParsed(Ljava/time/chrono/Chronology;)V
    .locals 5

    const-string/jumbo v3, "chrono"

    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/Parsed;

    move-result-object v3

    iput-object p1, v3, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    iget-object v3, p0, Ljava/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/util/function/Consumer;

    iget-object v3, p0, Ljava/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/function/Consumer;

    iget-object v3, p0, Ljava/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setParsedField(Ljava/time/temporal/TemporalField;JII)I
    .locals 4

    const-string/jumbo v1, "field"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/Parsed;

    move-result-object v1

    iget-object v1, v1, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-eqz v1, :cond_0

    not-int p5, p4

    :cond_0
    return p5
.end method

.method setParsedLeapSecond()V
    .locals 2

    invoke-direct {p0}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/Parsed;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/time/format/Parsed;->leapSecond:Z

    return-void
.end method

.method setStrict(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/time/format/DateTimeParseContext;->strict:Z

    return-void
.end method

.method startOptional()V
    .locals 2

    iget-object v0, p0, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/Parsed;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/format/Parsed;->copy()Ljava/time/format/Parsed;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .locals 6

    const/4 v5, 0x0

    add-int v3, p2, p5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-gt v3, v4, :cond_0

    add-int v3, p4, p5

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    :cond_0
    return v5

    :cond_1
    invoke-virtual {p0}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p5, :cond_5

    add-int v3, p2, v2

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int v3, p4, v2

    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_2

    return v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p5, :cond_5

    add-int v3, p2, v2

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int v3, p4, v2

    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    if-eq v3, v4, :cond_4

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    if-eq v3, v4, :cond_4

    return v5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x1

    return v3
.end method

.method toResolved(Ljava/time/format/ResolverStyle;Ljava/util/Set;)Ljava/time/temporal/TemporalAccessor;
    .locals 2
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

    invoke-direct {p0}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/Parsed;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/format/DateTimeParseContext;->getEffectiveChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    iput-object v1, v0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    iget-object v1, v0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    if-eqz v1, :cond_0

    iget-object v1, v0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    :goto_0
    iput-object v1, v0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    invoke-virtual {v0, p1, p2}, Ljava/time/format/Parsed;->resolve(Ljava/time/format/ResolverStyle;Ljava/util/Set;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Ljava/time/format/DateTimeParseContext;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatter;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/Parsed;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/format/Parsed;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toUnresolved()Ljava/time/format/Parsed;
    .locals 1

    invoke-direct {p0}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/Parsed;

    move-result-object v0

    return-object v0
.end method
