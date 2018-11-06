.class final Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
.super Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReducedPrinterParser"
.end annotation


# static fields
.field static final BASE_DATE:Ljava/time/LocalDate;


# instance fields
.field private final baseDate:Ljava/time/chrono/ChronoLocalDate;

.field private final baseValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x7d0

    invoke-static {v0, v1, v1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Ljava/time/LocalDate;

    return-void
.end method

.method constructor <init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;)V
    .locals 9

    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;I)V

    if-lt p2, v7, :cond_0

    if-le p2, v8, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The minWidth must be from 1 to 10 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-lt p3, v7, :cond_2

    if-le p3, v8, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The maxWidth must be from 1 to 10 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ge p3, p2, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Maximum width must exceed or equal the minimum width but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-nez p5, :cond_6

    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ValueRange;->isValidValue(J)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The base value must be within the range of the field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    int-to-long v0, p4

    sget-object v2, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    aget-wide v2, v2, p3

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    new-instance v0, Ljava/time/DateTimeException;

    const-string/jumbo v1, "Unable to add printer-parser as the range exceeds the capacity of an int"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-void
.end method

.method private constructor <init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;I)V
    .locals 6

    sget-object v4, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p6

    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;I)V

    iput p4, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    iput-object p5, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    return-void
.end method

.method synthetic constructor <init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;ILjava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;I)V

    return-void
.end method


# virtual methods
.method getValue(Ljava/time/format/DateTimePrintContext;J)J
    .locals 8

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v4

    invoke-static {v4}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v3

    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v3, v4}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-interface {v4, v5}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    :cond_0
    int-to-long v4, v2

    cmp-long v4, p2, v4

    if-ltz v4, :cond_1

    int-to-long v4, v2

    sget-object v6, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    iget v7, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    aget-wide v6, v6, v7

    add-long/2addr v4, v6

    cmp-long v4, p2, v4

    if-gez v4, :cond_1

    sget-object v4, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    iget v5, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    aget-wide v4, v4, v5

    rem-long v4, v0, v4

    return-wide v4

    :cond_1
    sget-object v4, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    iget v5, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    aget-wide v4, v4, v5

    rem-long v4, v0, v4

    return-wide v4
.end method

.method isFixedWidth(Ljava/time/format/DateTimeParseContext;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->isFixedWidth(Ljava/time/format/DateTimeParseContext;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$-java_time_format_DateTimeFormatterBuilder$ReducedPrinterParser_132487(Ljava/time/format/DateTimeParseContext;JIILjava/time/chrono/Chronology;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->setValue(Ljava/time/format/DateTimeParseContext;JII)I

    return-void
.end method

.method setValue(Ljava/time/format/DateTimeParseContext;JII)I
    .locals 22

    move-object/from16 v0, p0

    iget v12, v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getEffectiveChronology()Ljava/time/chrono/Chronology;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v13, v2}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-interface {v2, v3}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v12

    move-wide/from16 v14, p2

    new-instance v3, Ljava/time/format/-$Lambda$a1qgTVeqygBScuVh6yzVLwY_4Ag$1;

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p2

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Ljava/time/format/-$Lambda$a1qgTVeqygBScuVh6yzVLwY_4Ag$1;-><init>(IIJLjava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/time/format/DateTimeParseContext;->addChronoChangedListener(Ljava/util/function/Consumer;)V

    :cond_0
    sub-int v18, p5, p4

    move-object/from16 v0, p0

    iget v2, v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    move/from16 v0, v18

    if-ne v0, v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-ltz v2, :cond_1

    sget-object v2, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    move-object/from16 v0, p0

    iget v3, v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    aget-wide v20, v2, v3

    int-to-long v2, v12

    rem-long v16, v2, v20

    int-to-long v2, v12

    sub-long v10, v2, v16

    if-lez v12, :cond_2

    add-long p2, p2, v10

    :goto_0
    int-to-long v2, v12

    cmp-long v2, p2, v2

    if-gez v2, :cond_1

    add-long p2, p2, v20

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    move-object/from16 v2, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v2

    return v2

    :cond_2
    sub-long p2, v10, p2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ReducedValue("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method bridge synthetic withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 1

    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    move-result-object v0

    return-object v0
.end method

.method withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    .locals 7

    const/4 v6, -0x1

    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->subsequentWidth:I

    if-ne v0, v6, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    invoke-direct/range {v0 .. v6}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;I)V

    return-object v0
.end method

.method bridge synthetic withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    move-result-object v0

    return-object v0
.end method

.method withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    .locals 7

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    iget v6, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->subsequentWidth:I

    add-int/2addr v6, p1

    invoke-direct/range {v0 .. v6}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;I)V

    return-object v0
.end method
