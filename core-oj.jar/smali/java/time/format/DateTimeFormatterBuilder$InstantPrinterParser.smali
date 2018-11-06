.class final Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;
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
    name = "InstantPrinterParser"
.end annotation


# static fields
.field private static final SECONDS_0000_TO_1970:J = 0xe79747c00L

.field private static final SECONDS_PER_10000_YEARS:J = 0x497968bd80L


# instance fields
.field private final fractionalDigits:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    return-void
.end method


# virtual methods
.method public format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 24

    sget-object v20, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v11

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimePrintContext;->getTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v20

    sget-object v21, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v20 .. v21}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimePrintContext;->getTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v20

    sget-object v21, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v20 .. v21}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    :cond_0
    if-nez v11, :cond_1

    const/16 v20, 0x0

    return v20

    :cond_1
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sget-object v22, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    :goto_0
    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v9

    const-wide v20, -0xe79747c00L

    cmp-long v20, v12, v20

    if-ltz v20, :cond_7

    const-wide v20, 0x497968bd80L

    sub-long v20, v12, v20

    const-wide v22, 0xe79747c00L

    add-long v18, v20, v22

    const-wide v20, 0x497968bd80L

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v20

    const-wide/16 v22, 0x1

    add-long v6, v20, v22

    const-wide v20, 0x497968bd80L

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v16

    const-wide v20, 0xe79747c00L

    sub-long v20, v16, v20

    sget-object v22, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/16 v23, 0x0

    move-wide/from16 v0, v20

    move/from16 v2, v23

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v14

    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-lez v20, :cond_2

    const/16 v20, 0x2b

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v20

    if-nez v20, :cond_3

    const-string/jumbo v20, ":00"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v20, v0

    if-gez v20, :cond_b

    if-lez v9, :cond_b

    :cond_4
    const/16 v20, 0x2e

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v5, 0x5f5e100

    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    if-lez v9, :cond_d

    :cond_5
    :goto_3
    div-int v4, v9, v5

    add-int/lit8 v20, v4, 0x30

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-int v20, v4, v5

    sub-int v9, v9, v20

    div-int/lit8 v5, v5, 0xa

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    const-wide/16 v20, 0x0

    goto/16 :goto_0

    :cond_7
    const-wide v20, 0xe79747c00L

    add-long v18, v12, v20

    const-wide v20, 0x497968bd80L

    div-long v6, v18, v20

    const-wide v20, 0x497968bd80L

    rem-long v16, v18, v20

    const-wide v20, 0xe79747c00L

    sub-long v20, v16, v20

    sget-object v22, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/16 v23, 0x0

    move-wide/from16 v0, v20

    move/from16 v2, v23

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v20

    if-nez v20, :cond_8

    const-string/jumbo v20, ":00"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-gez v20, :cond_3

    invoke-virtual {v14}, Ljava/time/LocalDateTime;->getYear()I

    move-result v20

    const/16 v21, -0x2710

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    add-int/lit8 v20, v15, 0x2

    const-wide/16 v22, 0x1

    sub-long v22, v6, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v15, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_9
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-nez v20, :cond_a

    move-object/from16 v0, p2

    invoke-virtual {v0, v15, v6, v7}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v20, v15, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v20, v0

    if-gtz v20, :cond_4

    :cond_c
    const/16 v20, 0x5a

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v20, 0x1

    return v20

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v20, v0

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    if-gtz v9, :cond_5

    rem-int/lit8 v20, v8, 0x3

    if-nez v20, :cond_5

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_c

    goto/16 :goto_3
.end method

.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 34

    move-object/from16 v0, p0

    iget v10, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-gez v10, :cond_0

    const/16 v26, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v10, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-gez v10, :cond_1

    const/16 v25, 0x9

    :goto_1
    new-instance v10, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v10}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v11, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v10, v11}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v10

    const/16 v11, 0x54

    invoke-virtual {v10, v11}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v10

    sget-object v11, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const/4 v14, 0x2

    invoke-virtual {v10, v11, v14}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v10

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v10

    sget-object v11, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    const/4 v14, 0x2

    invoke-virtual {v10, v11, v14}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v10

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v10

    sget-object v11, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    const/4 v14, 0x2

    invoke-virtual {v10, v11, v14}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v10

    sget-object v11, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const/4 v14, 0x1

    move/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v10, v11, v0, v1, v14}, Ljava/time/format/DateTimeFormatterBuilder;->appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v10

    const/16 v11, 0x5a

    invoke-virtual {v10, v11}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/time/format/DateTimeFormatter;->toPrinterParser(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->copy()Ljava/time/format/DateTimeParseContext;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v15

    if-gez v15, :cond_2

    return v15

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v26, v0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v25, v0

    goto :goto_1

    :cond_2
    sget-object v10, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    sget-object v10, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v5

    sget-object v10, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v6

    sget-object v10, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v7

    sget-object v10, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v8

    sget-object v10, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v31

    sget-object v10, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v28

    if-eqz v31, :cond_4

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->intValue()I

    move-result v9

    :goto_2
    if-eqz v28, :cond_5

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->intValue()I

    move-result v27

    :goto_3
    const/16 v22, 0x0

    const/16 v10, 0x18

    if-ne v7, v10, :cond_6

    if-nez v8, :cond_6

    if-nez v9, :cond_6

    if-nez v27, :cond_6

    const/4 v7, 0x0

    const/16 v22, 0x1

    :cond_3
    :goto_4
    move-wide/from16 v0, v32

    long-to-int v10, v0

    rem-int/lit16 v4, v10, 0x2710

    const/4 v10, 0x0

    :try_start_0
    invoke-static/range {v4 .. v10}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v10

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v24

    sget-object v10, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v12

    const-wide/16 v10, 0x2710

    div-long v10, v32, v10

    const-wide v16, 0x497968bd80L

    move-wide/from16 v0, v16

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    add-long/2addr v12, v10

    move/from16 v21, v15

    sget-object v11, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    move-object/from16 v10, p1

    move/from16 v14, p3

    invoke-virtual/range {v10 .. v15}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v21

    sget-object v17, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v16, p1

    move/from16 v20, p3

    invoke-virtual/range {v16 .. v21}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v10

    return v10

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    const/16 v27, 0x0

    goto :goto_3

    :cond_6
    const/16 v10, 0x17

    if-ne v7, v10, :cond_3

    const/16 v10, 0x3b

    if-ne v8, v10, :cond_3

    const/16 v10, 0x3c

    if-ne v9, v10, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->setParsedLeapSecond()V

    const/16 v9, 0x3b

    goto :goto_4

    :catch_0
    move-exception v23

    move/from16 v0, p3

    not-int v10, v0

    return v10
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Instant()"

    return-object v0
.end method
