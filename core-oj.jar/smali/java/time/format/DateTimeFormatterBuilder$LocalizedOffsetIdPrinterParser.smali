.class final Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;
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
    name = "LocalizedOffsetIdPrinterParser"
.end annotation


# instance fields
.field private final style:Ljava/time/format/TextStyle;


# direct methods
.method constructor <init>(Ljava/time/format/TextStyle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->style:Ljava/time/format/TextStyle;

    return-void
.end method

.method private static appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .locals 2

    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v1, p1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 9

    const/16 v8, 0x3a

    const/4 v7, 0x0

    sget-object v6, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {p1, v6}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_0

    return v7

    :cond_0
    const-string/jumbo v3, "GMT"

    if-eqz v3, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toIntExact(J)I

    move-result v5

    if-eqz v5, :cond_2

    div-int/lit16 v6, v5, 0xe10

    rem-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v6, v5, 0x3c

    rem-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rem-int/lit8 v6, v5, 0x3c

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gez v5, :cond_3

    const-string/jumbo v6, "-"

    :goto_0
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->style:Ljava/time/format/TextStyle;

    sget-object v7, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    if-ne v6, v7, :cond_4

    invoke-static {p2, v0}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2, v1}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2, v2}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    const/4 v6, 0x1

    return v6

    :cond_3
    const-string/jumbo v6, "+"

    goto :goto_0

    :cond_4
    const/16 v6, 0xa

    if-lt v0, v6, :cond_5

    div-int/lit8 v6, v0, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    rem-int/lit8 v6, v0, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v1, :cond_6

    if-eqz v2, :cond_2

    :cond_6
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2, v1}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2, v2}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method getDigit(Ljava/lang/CharSequence;I)I
    .locals 2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    const/16 v1, 0x39

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    return v1

    :cond_1
    add-int/lit8 v1, v0, -0x30

    return v1
.end method

.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 32

    move/from16 v13, p3

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v14, p3, v4

    const-string/jumbo v7, "GMT"

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v4 .. v9}, Ljava/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v4

    if-nez v4, :cond_0

    move/from16 v0, p3

    not-int v4, v0

    return v4

    :cond_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    add-int v13, p3, v4

    :cond_1
    const/16 v21, 0x0

    if-ne v13, v14, :cond_2

    sget-object v9, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const-wide/16 v10, 0x0

    move-object/from16 v8, p1

    move/from16 v12, p3

    invoke-virtual/range {v8 .. v13}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v4

    return v4

    :cond_2
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v26

    const/16 v4, 0x2b

    move/from16 v0, v26

    if-ne v0, v4, :cond_4

    const/16 v21, 0x1

    :goto_0
    add-int/lit8 v13, v13, 0x1

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->style:Ljava/time/format/TextStyle;

    sget-object v5, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    if-ne v4, v5, :cond_d

    add-int/lit8 v22, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v16

    add-int/lit8 v13, v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v17

    if-ltz v16, :cond_3

    if-gez v17, :cond_6

    :cond_3
    :goto_1
    move/from16 v0, p3

    not-int v4, v0

    return v4

    :cond_4
    const/16 v4, 0x2d

    move/from16 v0, v26

    if-ne v0, v4, :cond_5

    const/16 v21, -0x1

    goto :goto_0

    :cond_5
    sget-object v9, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const-wide/16 v10, 0x0

    move-object/from16 v8, p1

    move/from16 v12, p3

    invoke-virtual/range {v8 .. v13}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v4

    return v4

    :cond_6
    add-int/lit8 v22, v13, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_7

    move/from16 v13, v22

    goto :goto_1

    :cond_7
    mul-int/lit8 v4, v16, 0xa

    add-int v15, v4, v17

    add-int/lit8 v13, v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v19

    add-int/lit8 v22, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v20

    if-ltz v19, :cond_8

    if-gez v20, :cond_9

    :cond_8
    move/from16 v0, p3

    not-int v4, v0

    return v4

    :cond_9
    mul-int/lit8 v4, v19, 0xa

    add-int v18, v4, v20

    add-int/lit8 v4, v22, 0x2

    if-ge v4, v14, :cond_b

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_b

    add-int/lit8 v4, v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v24

    add-int/lit8 v4, v22, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v25

    if-ltz v24, :cond_c

    if-ltz v25, :cond_c

    mul-int/lit8 v4, v24, 0xa

    add-int v23, v4, v25

    add-int/lit8 v13, v22, 0x3

    :cond_a
    :goto_2
    move/from16 v0, v21

    int-to-long v4, v0

    int-to-long v8, v15

    const-wide/16 v28, 0xe10

    mul-long v8, v8, v28

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x3c

    mul-long v28, v28, v30

    add-long v8, v8, v28

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v8, v8, v28

    mul-long v10, v4, v8

    sget-object v9, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    move-object/from16 v8, p1

    move/from16 v12, p3

    invoke-virtual/range {v8 .. v13}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v4

    return v4

    :cond_b
    move/from16 v13, v22

    goto :goto_2

    :cond_c
    move/from16 v13, v22

    goto :goto_2

    :cond_d
    add-int/lit8 v22, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v15

    if-gez v15, :cond_e

    move/from16 v0, p3

    not-int v4, v0

    return v4

    :cond_e
    move/from16 v0, v22

    if-ge v0, v14, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v17

    if-ltz v17, :cond_f

    mul-int/lit8 v4, v15, 0xa

    add-int v15, v4, v17

    add-int/lit8 v13, v22, 0x1

    :goto_3
    add-int/lit8 v4, v13, 0x2

    if-ge v4, v14, :cond_a

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_a

    add-int/lit8 v4, v13, 0x2

    if-ge v4, v14, :cond_a

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_a

    add-int/lit8 v4, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v19

    add-int/lit8 v4, v13, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v20

    if-ltz v19, :cond_a

    if-ltz v20, :cond_a

    mul-int/lit8 v4, v19, 0xa

    add-int v18, v4, v20

    add-int/lit8 v13, v13, 0x3

    add-int/lit8 v4, v13, 0x2

    if-ge v4, v14, :cond_a

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_a

    add-int/lit8 v4, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v24

    add-int/lit8 v4, v13, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v25

    if-ltz v24, :cond_a

    if-ltz v25, :cond_a

    mul-int/lit8 v4, v24, 0xa

    add-int v23, v4, v25

    add-int/lit8 v13, v13, 0x3

    goto/16 :goto_2

    :cond_f
    move/from16 v13, v22

    goto :goto_3

    :cond_10
    move/from16 v13, v22

    goto/16 :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LocalizedOffset("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->style:Ljava/time/format/TextStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
