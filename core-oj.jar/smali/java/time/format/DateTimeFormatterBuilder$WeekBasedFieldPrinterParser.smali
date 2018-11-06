.class final Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;
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
    name = "WeekBasedFieldPrinterParser"
.end annotation


# instance fields
.field private chr:C

.field private count:I


# direct methods
.method constructor <init>(CI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    iput p2, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    return-void
.end method

.method private printerParser(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    .locals 9

    const/4 v4, 0x0

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/time/temporal/WeekFields;->of(Ljava/util/Locale;)Ljava/time/temporal/WeekFields;

    move-result-object v8

    const/4 v1, 0x0

    iget-char v0, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "unreachable"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    invoke-virtual {v8}, Ljava/time/temporal/WeekFields;->weekBasedYear()Ljava/time/temporal/TemporalField;

    move-result-object v1

    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    sget-object v5, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Ljava/time/LocalDate;

    const/4 v7, 0x0

    move v3, v2

    move v6, v4

    invoke-direct/range {v0 .. v7}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;ILjava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    sget-object v4, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    :goto_0
    const/16 v3, 0x13

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;I)V

    return-object v0

    :cond_1
    sget-object v4, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    goto :goto_0

    :sswitch_1
    invoke-virtual {v8}, Ljava/time/temporal/WeekFields;->dayOfWeek()Ljava/time/temporal/TemporalField;

    move-result-object v1

    :goto_1
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    if-ne v0, v2, :cond_2

    move v0, v2

    :goto_2
    sget-object v4, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    invoke-direct {v3, v1, v0, v2, v4}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    return-object v3

    :sswitch_2
    invoke-virtual {v8}, Ljava/time/temporal/WeekFields;->weekOfWeekBasedYear()Ljava/time/temporal/TemporalField;

    move-result-object v1

    goto :goto_1

    :sswitch_3
    invoke-virtual {v8}, Ljava/time/temporal/WeekFields;->weekOfMonth()Ljava/time/temporal/TemporalField;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x57 -> :sswitch_3
        0x59 -> :sswitch_0
        0x63 -> :sswitch_1
        0x65 -> :sswitch_1
        0x77 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->printerParser(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 1

    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->printerParser(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Localized("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    const/16 v2, 0x59

    if-ne v1, v2, :cond_3

    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "WeekBasedYear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "ReducedValue(WeekBasedYear,2,2,2000-01-01)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "WeekBasedYear,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v3, 0x4

    if-ge v1, v3, :cond_2

    sget-object v1, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    sget-object v1, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    goto :goto_1

    :cond_3
    iget-char v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    sparse-switch v1, :sswitch_data_0

    :goto_2
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "DayOfWeek"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_1
    const-string/jumbo v1, "WeekOfWeekBasedYear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_2
    const-string/jumbo v1, "WeekOfMonth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x57 -> :sswitch_2
        0x63 -> :sswitch_0
        0x65 -> :sswitch_0
        0x77 -> :sswitch_1
    .end sparse-switch
.end method
