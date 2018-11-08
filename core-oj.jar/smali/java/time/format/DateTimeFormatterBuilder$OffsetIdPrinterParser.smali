.class final Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;
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
    name = "OffsetIdPrinterParser"
.end annotation


# static fields
.field static final INSTANCE_ID_Z:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

.field static final INSTANCE_ID_ZERO:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

.field static final PATTERNS:[Ljava/lang/String;


# instance fields
.field private final noOffsetText:Ljava/lang/String;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "+HH"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "+HHmm"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "+HH:mm"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "+HHMM"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "+HH:MM"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "+HHMMss"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "+HH:MM:ss"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "+HHMMSS"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "+HH:MM:SS"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    const-string/jumbo v1, "+HH:MM:ss"

    const-string/jumbo v2, "Z"

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_Z:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    const-string/jumbo v1, "+HH:MM:ss"

    const-string/jumbo v2, "0"

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_ZERO:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "pattern"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "noOffsetText"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->checkPattern(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    iput-object p2, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    return-void
.end method

.method private checkPattern(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid zone offset pattern: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseNumber([IILjava/lang/CharSequence;Z)Z
    .locals 10

    const/16 v9, 0x39

    const/16 v8, 0x30

    const/4 v7, 0x0

    iget v5, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    add-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x2

    if-ge v5, p2, :cond_0

    return v7

    :cond_0
    aget v2, p1, v7

    iget v5, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_3

    const/4 v5, 0x1

    if-le p2, v5, :cond_3

    add-int/lit8 v5, v2, 0x1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-gt v5, v6, :cond_1

    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-eq v5, v6, :cond_2

    :cond_1
    return p4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v5, v2, 0x2

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v5, v6, :cond_4

    return p4

    :cond_4
    add-int/lit8 v3, v2, 0x1

    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 v2, v3, 0x1

    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-lt v0, v8, :cond_5

    if-le v0, v9, :cond_6

    :cond_5
    return p4

    :cond_6
    if-lt v1, v8, :cond_5

    if-gt v1, v9, :cond_5

    add-int/lit8 v5, v0, -0x30

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v6, v1, -0x30

    add-int v4, v5, v6

    if-ltz v4, :cond_7

    const/16 v5, 0x3b

    if-le v4, v5, :cond_8

    :cond_7
    return p4

    :cond_8
    aput v4, p1, p2

    aput v2, p1, v7

    return v7
.end method


# virtual methods
.method public format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v8, 0x0

    sget-object v7, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {p1, v7}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_0

    return v8

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toIntExact(J)I

    move-result v6

    if-nez v6, :cond_2

    iget-object v7, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    return v10

    :cond_2
    div-int/lit16 v7, v6, 0xe10

    rem-int/lit8 v7, v7, 0x64

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v7, v6, 0x3c

    rem-int/lit8 v7, v7, 0x3c

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rem-int/lit8 v7, v6, 0x3c

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move v5, v0

    if-gez v6, :cond_6

    const-string/jumbo v7, "-"

    :goto_1
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    div-int/lit8 v8, v0, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    rem-int/lit8 v8, v0, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v7, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    const/4 v8, 0x3

    if-ge v7, v8, :cond_3

    iget v7, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    if-lt v7, v10, :cond_5

    if-lez v1, :cond_5

    :cond_3
    iget v7, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_7

    const-string/jumbo v7, ":"

    :goto_2
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    div-int/lit8 v8, v1, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    rem-int/lit8 v8, v1, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int v5, v0, v1

    iget v7, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    const/4 v8, 0x7

    if-ge v7, v8, :cond_4

    iget v7, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    const/4 v8, 0x5

    if-lt v7, v8, :cond_5

    if-lez v2, :cond_5

    :cond_4
    iget v7, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_8

    const-string/jumbo v7, ":"

    :goto_3
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    div-int/lit8 v8, v2, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    rem-int/lit8 v8, v2, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v5, v2

    :cond_5
    if-nez v5, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v7, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v7, "+"

    goto :goto_1

    :cond_7
    const-string/jumbo v7, ""

    goto :goto_2

    :cond_8
    const-string/jumbo v7, ""

    goto :goto_3
.end method

.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 24

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    sget-object v5, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const-wide/16 v6, 0x0

    move-object/from16 v4, p1

    move/from16 v8, p3

    move/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v4

    return v4

    :cond_0
    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    move/from16 v0, p3

    not-int v4, v0

    return v4

    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v4 .. v9}, Ljava/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v11, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const-wide/16 v12, 0x0

    add-int v15, p3, v9

    move-object/from16 v10, p1

    move/from16 v14, p3

    invoke-virtual/range {v10 .. v15}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v4

    return v4

    :cond_2
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v23

    const/16 v4, 0x2b

    move/from16 v0, v23

    if-eq v0, v4, :cond_3

    const/16 v4, 0x2d

    move/from16 v0, v23

    if-ne v0, v4, :cond_7

    :cond_3
    const/16 v4, 0x2d

    move/from16 v0, v23

    if-ne v0, v4, :cond_4

    const/16 v22, -0x1

    :goto_0
    const/4 v4, 0x4

    new-array v0, v4, [I

    move-object/from16 v20, v0

    add-int/lit8 v4, p3, 0x1

    const/4 v5, 0x0

    aput v4, v20, v5

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v4, v2, v5}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseNumber([IILjava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_5

    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v5, v2, v4}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseNumber([IILjava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v4, v2, v5}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseNumber([IILjava/lang/CharSequence;Z)Z

    move-result v4

    :goto_2
    if-nez v4, :cond_7

    move/from16 v0, v22

    int-to-long v4, v0

    const/4 v6, 0x1

    aget v6, v20, v6

    int-to-long v6, v6

    const-wide/16 v10, 0xe10

    mul-long/2addr v6, v10

    const/4 v8, 0x2

    aget v8, v20, v8

    int-to-long v10, v8

    const-wide/16 v14, 0x3c

    mul-long/2addr v10, v14

    add-long/2addr v6, v10

    const/4 v8, 0x3

    aget v8, v20, v8

    int-to-long v10, v8

    add-long/2addr v6, v10

    mul-long v12, v4, v6

    sget-object v11, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const/4 v4, 0x0

    aget v15, v20, v4

    move-object/from16 v10, p1

    move/from16 v14, p3

    invoke-virtual/range {v10 .. v15}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v4

    return v4

    :cond_4
    const/16 v22, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    if-nez v9, :cond_8

    sget-object v15, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const-wide/16 v16, 0x0

    add-int v19, p3, v9

    move-object/from16 v14, p1

    move/from16 v18, p3

    invoke-virtual/range {v14 .. v19}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v4

    return v4

    :cond_8
    move/from16 v0, p3

    not-int v4, v0

    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    const-string/jumbo v2, "\'"

    const-string/jumbo v3, "\'\'"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Offset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
