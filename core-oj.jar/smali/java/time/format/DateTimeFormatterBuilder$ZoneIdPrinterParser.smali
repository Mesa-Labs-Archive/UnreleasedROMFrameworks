.class Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZoneIdPrinterParser"
.end annotation


# static fields
.field private static volatile cachedPrefixTree:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile cachedPrefixTreeCI:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final description:Ljava/lang/String;

.field private final query:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/ZoneId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/ZoneId;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->query:Ljava/time/temporal/TemporalQuery;

    iput-object p2, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->description:Ljava/lang/String;

    return-void
.end method

.method private parseOffsetBased(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILjava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I
    .locals 8

    const/16 v7, 0x30

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lt p4, v6, :cond_0

    invoke-static {v4}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    return p4

    :cond_0
    invoke-interface {p2, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_1

    const-string/jumbo v6, "GMT"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "GMT0"

    invoke-static {v6}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    add-int/lit8 v6, p4, 0x1

    return v6

    :cond_1
    invoke-interface {p2, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v6, v7, :cond_2

    invoke-interface {p2, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x5a

    invoke-virtual {p1, v6, v7}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    invoke-static {v4}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    return p4

    :cond_3
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->copy()Ljava/time/format/DateTimeParseContext;

    move-result-object v2

    invoke-virtual {p5, v2, p2, p4}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v1

    if-gez v1, :cond_5

    :try_start_0
    sget-object v6, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_Z:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    if-ne p5, v6, :cond_4

    not-int v6, p3

    return v6

    :cond_4
    invoke-static {v4}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    return p4

    :cond_5
    sget-object v6, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v6}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-int v3, v6

    invoke-static {v3}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/time/ZoneId;->ofOffset(Ljava/lang/String;Ljava/time/ZoneOffset;)Ljava/time/ZoneId;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    not-int v6, p3

    return v6
.end method


# virtual methods
.method public format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 2

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->query:Ljava/time/temporal/TemporalQuery;

    invoke-virtual {p1, v1}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    return v1
.end method

.method protected getTree(Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .locals 6

    invoke-static {}, Ljava/time/zone/ZoneRulesProvider;->getAvailableZoneIds()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTree:Ljava/util/Map$Entry;

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_2

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTree:Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_5

    :cond_1
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, p1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->newTree(Ljava/util/Set;Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v4

    if-eqz v4, :cond_6

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTree:Ljava/util/Map$Entry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    return-object v4

    :cond_3
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTreeCI:Ljava/util/Map$Entry;

    goto :goto_0

    :cond_4
    :try_start_3
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTreeCI:Ljava/util/Map$Entry;

    move-object v1, v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_2

    :cond_6
    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTreeCI:Ljava/util/Map$Entry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    :goto_3
    monitor-exit p0

    throw v4

    :catchall_1
    move-exception v4

    move-object v0, v1

    goto :goto_3
.end method

.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 12

    const/16 v1, 0x54

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le p3, v6, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    if-ne p3, v6, :cond_1

    not-int v0, p3

    return v0

    :cond_1
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v0, 0x2b

    if-eq v7, v0, :cond_2

    const/16 v0, 0x2d

    if-ne v7, v0, :cond_3

    :cond_2
    sget-object v5, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_Z:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p3

    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parseOffsetBased(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILjava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I

    move-result v0

    return v0

    :cond_3
    add-int/lit8 v0, p3, 0x2

    if-lt v6, v0, :cond_6

    add-int/lit8 v0, p3, 0x1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v0, 0x55

    invoke-virtual {p1, v7, v0}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v8, v1}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v0, p3, 0x3

    if-lt v6, v0, :cond_4

    add-int/lit8 v0, p3, 0x2

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x43

    invoke-virtual {p1, v0, v1}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v4, p3, 0x3

    sget-object v5, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_ZERO:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parseOffsetBased(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILjava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I

    move-result v0

    return v0

    :cond_4
    add-int/lit8 v4, p3, 0x2

    sget-object v5, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_ZERO:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parseOffsetBased(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILjava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I

    move-result v0

    return v0

    :cond_5
    const/16 v0, 0x47

    invoke-virtual {p1, v7, v0}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v0, p3, 0x3

    if-lt v6, v0, :cond_6

    const/16 v0, 0x4d

    invoke-virtual {p1, v8, v0}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v0, p3, 0x2

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0, v1}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v4, p3, 0x3

    sget-object v5, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_ZERO:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parseOffsetBased(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILjava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I

    move-result v0

    return v0

    :cond_6
    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->getTree(Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v11

    new-instance v10, Ljava/text/ParsePosition;

    invoke-direct {v10, p3}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v11, p2, v10}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->match(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_8

    const/16 v0, 0x5a

    invoke-virtual {p1, v7, v0}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    add-int/lit8 v0, p3, 0x1

    return v0

    :cond_7
    not-int v0, p3

    return v0

    :cond_8
    invoke-static {v9}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->description:Ljava/lang/String;

    return-object v0
.end method
