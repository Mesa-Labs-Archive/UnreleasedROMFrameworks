.class final Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
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
    name = "CompositePrinterParser"
.end annotation


# instance fields
.field private final optional:Z

.field private final printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-direct {p0, v0, p2}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>([Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;Z)V

    return-void
.end method

.method constructor <init>([Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    iput-boolean p2, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    return-void
.end method


# virtual methods
.method public format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-boolean v2, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->startOptional()V

    :cond_0
    :try_start_0
    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v1, v3, v2

    invoke-interface {v1, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v2, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->endOptional()V

    :cond_1
    return v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->endOptional()V

    :cond_4
    return v6

    :catchall_0
    move-exception v2

    iget-boolean v3, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->endOptional()V

    :cond_5
    throw v2
.end method

.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 6

    const/4 v2, 0x0

    iget-boolean v3, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->startOptional()V

    move v0, p3

    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    invoke-interface {v1, p1, p2, v0}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/time/format/DateTimeParseContext;->endOptional(Z)V

    return p3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/time/format/DateTimeParseContext;->endOptional(Z)V

    return v0

    :cond_2
    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v1, v3, v2

    invoke-interface {v1, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result p3

    if-gez p3, :cond_4

    :cond_3
    return p3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "["

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const-string/jumbo v2, "("

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "]"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_3
    const-string/jumbo v2, ")"

    goto :goto_2
.end method

.method public withOptional(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .locals 2

    iget-boolean v0, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-direct {v0, v1, p1}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>([Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;Z)V

    return-object v0
.end method
