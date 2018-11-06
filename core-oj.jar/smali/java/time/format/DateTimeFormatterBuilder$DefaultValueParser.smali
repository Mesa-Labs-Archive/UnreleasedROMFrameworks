.class Ljava/time/format/DateTimeFormatterBuilder$DefaultValueParser;
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
    name = "DefaultValueParser"
.end annotation


# instance fields
.field private final field:Ljava/time/temporal/TemporalField;

.field private final value:J


# direct methods
.method constructor <init>(Ljava/time/temporal/TemporalField;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$DefaultValueParser;->field:Ljava/time/temporal/TemporalField;

    iput-wide p2, p0, Ljava/time/format/DateTimeFormatterBuilder$DefaultValueParser;->value:J

    return-void
.end method


# virtual methods
.method public format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 6

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$DefaultValueParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$DefaultValueParser;->field:Ljava/time/temporal/TemporalField;

    iget-wide v2, p0, Ljava/time/format/DateTimeFormatterBuilder$DefaultValueParser;->value:J

    move-object v0, p1

    move v4, p3

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    :cond_0
    return p3
.end method
