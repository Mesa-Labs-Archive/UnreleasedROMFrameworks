.class final Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;
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
    name = "TextPrinterParser"
.end annotation


# instance fields
.field private final field:Ljava/time/temporal/TemporalField;

.field private volatile numberPrinterParser:Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

.field private final provider:Ljava/time/format/DateTimeTextProvider;

.field private final textStyle:Ljava/time/format/TextStyle;


# direct methods
.method constructor <init>(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/time/format/DateTimeTextProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    iput-object p2, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    iput-object p3, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljava/time/format/DateTimeTextProvider;

    return-void
.end method

.method private numberPrinterParser()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 5

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    if-nez v0, :cond_0

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    sget-object v2, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    const/4 v3, 0x1

    const/16 v4, 0x13

    invoke-direct {v0, v1, v3, v4, v2}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    :cond_0
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    return-object v0
.end method


# virtual methods
.method public format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 10

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v9

    if-nez v9, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/Chronology;

    if-eqz v2, :cond_1

    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    if-ne v2, v0, :cond_2

    :cond_1
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljava/time/format/DateTimeTextProvider;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Ljava/time/format/DateTimeTextProvider;->getText(Ljava/time/temporal/TemporalField;JLjava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    :goto_0
    if-nez v8, :cond_3

    invoke-direct {p0}, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v0

    return v0

    :cond_2
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljava/time/format/DateTimeTextProvider;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Ljava/time/format/DateTimeTextProvider;->getText(Ljava/time/chrono/Chronology;Ljava/time/temporal/TemporalField;JLjava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 17

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-ltz p3, :cond_0

    move/from16 v0, p3

    if-le v0, v15, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    move-object/from16 v16, v0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getEffectiveChronology()Ljava/time/chrono/Chronology;

    move-result-object v12

    if-eqz v12, :cond_2

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    if-ne v12, v4, :cond_5

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljava/time/format/DateTimeTextProvider;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v4, v6, v0, v7}, Ljava/time/format/DateTimeTextProvider;->getTextIterator(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    if-eqz v14, :cond_7

    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v6, 0x0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {v4 .. v9}, Ljava/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    add-int v11, p3, v4

    move-object/from16 v6, p1

    move/from16 v10, p3

    invoke-virtual/range {v6 .. v11}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v4

    return v4

    :cond_4
    const/16 v16, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljava/time/format/DateTimeTextProvider;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v4, v12, v6, v0, v7}, Ljava/time/format/DateTimeTextProvider;->getTextIterator(Ljava/time/chrono/Chronology;Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v14

    goto :goto_1

    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v4

    if-eqz v4, :cond_7

    move/from16 v0, p3

    not-int v4, v0

    return v4

    :cond_7
    invoke-direct/range {p0 .. p0}, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v4

    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    sget-object v1, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Text("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Text("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
