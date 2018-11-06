.class final Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;
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
    name = "PadPrinterParserDecorator"
.end annotation


# instance fields
.field private final padChar:C

.field private final padWidth:I

.field private final printerParser:Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# direct methods
.method constructor <init>(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;IC)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    iput p2, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    iput-char p3, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    return-void
.end method


# virtual methods
.method public format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 6

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-interface {v3, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int v1, v3, v2

    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    if-le v1, v3, :cond_1

    new-instance v3, Ljava/time/DateTimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot print as output of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " characters exceeds pad width of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_2

    iget-char v3, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 6

    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le p3, v4, :cond_0

    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne p3, v4, :cond_1

    not-int v4, p3

    return v4

    :cond_1
    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    add-int v0, p3, v4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v0, v4, :cond_3

    if-eqz v3, :cond_2

    not-int v4, p3

    return v4

    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_3
    move v1, p3

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    iget-char v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    invoke-virtual {p1, v4, v5}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    invoke-interface {p2, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-interface {v4, p1, p2, v1}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v2

    if-eq v2, v0, :cond_5

    if-eqz v3, :cond_5

    add-int v4, p3, v1

    not-int v4, v4

    return v4

    :cond_5
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Pad("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, ")"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ",\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v2, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
