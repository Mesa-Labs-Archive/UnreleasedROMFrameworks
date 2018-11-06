.class final Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ChronoPrinterParser"
.end annotation


# instance fields
.field private final textStyle:Ljava/time/format/TextStyle;


# direct methods
.method constructor <init>(Ljava/time/format/TextStyle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    return-void
.end method

.method private getChronologyName(Ljava/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    const-string/jumbo v2, "calendar"

    invoke-interface {p1}, Ljava/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/icu/text/LocaleDisplayNames;->keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p1}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 2

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->getChronologyName(Ljava/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 11

    const/4 v4, 0x0

    if-ltz p3, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p3, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    invoke-static {}, Ljava/time/chrono/Chronology;->getAvailableChronologies()Ljava/util/Set;

    move-result-object v9

    const/4 v6, 0x0

    const/4 v10, -0x1

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/time/chrono/Chronology;

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    if-nez v0, :cond_3

    invoke-interface {v7}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v10, :cond_2

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Ljava/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v6, v7

    move v10, v5

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->getChronologyName(Ljava/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    if-nez v6, :cond_5

    not-int v0, p3

    return v0

    :cond_5
    invoke-virtual {p1, v6}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/chrono/Chronology;)V

    add-int v0, p3, v10

    return v0
.end method
