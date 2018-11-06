.class public final Ljava/time/format/DateTimeFormatterBuilder;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/format/DateTimeFormatterBuilder$1;,
        Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$DefaultValueParser;,
        Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;,
        Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;,
        Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;,
        Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;
    }
.end annotation


# static fields
.field private static final FIELD_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/time/temporal/TemporalField;",
            ">;"
        }
    .end annotation
.end field

.field static final LENGTH_SORT:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final QUERY_REGION_ONLY:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/ZoneId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private active:Ljava/time/format/DateTimeFormatterBuilder;

.field private final optional:Z

.field private padNextChar:C

.field private padNextWidth:I

.field private final parent:Ljava/time/format/DateTimeFormatterBuilder;

.field private final printerParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;",
            ">;"
        }
    .end annotation
.end field

.field private valueParserIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/time/format/-$Lambda$a1qgTVeqygBScuVh6yzVLwY_4Ag;

    invoke-direct {v0}, Ljava/time/format/-$Lambda$a1qgTVeqygBScuVh6yzVLwY_4Ag;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder;->QUERY_REGION_ONLY:Ljava/time/temporal/TemporalQuery;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x79

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/IsoFields;->QUARTER_OF_YEAR:Ljava/time/temporal/TemporalField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/IsoFields;->QUARTER_OF_YEAR:Ljava/time/temporal/TemporalField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x73

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$1;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder$1;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder;->LENGTH_SORT:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->optional:Z

    return-void
.end method

.method private constructor <init>(Ljava/time/format/DateTimeFormatterBuilder;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    iput-boolean p2, p0, Ljava/time/format/DateTimeFormatterBuilder;->optional:Z

    return-void
.end method

.method private appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "pp"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    if-lez v1, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-char v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->padNextChar:C

    invoke-direct {v0, p1, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;-><init>(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;IC)V

    move-object p1, v0

    :cond_0
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iput v3, v1, Ljava/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iput-char v3, v1, Ljava/time/format/DateTimeFormatterBuilder;->padNextChar:C

    :cond_1
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v2, -0x1

    iput v2, v1, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 4

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    if-ltz v2, :cond_1

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget v0, v2, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget v2, p1, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v3, p1, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->-get0(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/SignStyle;

    move-result-object v2

    sget-object v3, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    if-ne v2, v3, :cond_0

    iget v2, p1, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v1

    invoke-virtual {p1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iput v0, v2, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    :goto_0
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-object p0

    :cond_0
    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v1

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v3

    iput v3, v2, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v3

    iput v3, v2, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    goto :goto_1
.end method

.method private static convertStyle(Ljava/time/format/FormatStyle;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/time/format/FormatStyle;->ordinal()I

    move-result v0

    return v0
.end method

.method public static getLocalizedDateTimePattern(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;Ljava/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v1, "locale"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "chrono"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Either dateStyle or timeStyle must be non-null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-interface {p2}, Ljava/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Ljava/time/format/DateTimeFormatterBuilder;->convertStyle(Ljava/time/format/FormatStyle;)I

    move-result v3

    invoke-static {p1}, Ljava/time/format/DateTimeFormatterBuilder;->convertStyle(Ljava/time/format/FormatStyle;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/icu/util/Calendar;->getDateTimeFormatString(Landroid/icu/util/ULocale;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_time_format_DateTimeFormatterBuilder_6842(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneId;
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/time/ZoneOffset;

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private parseField(CILjava/time/temporal/TemporalField;)V
    .locals 5

    const/16 v4, 0x13

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    if-ne p2, v2, :cond_10

    invoke-virtual {p0, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    :goto_0
    return-void

    :sswitch_0
    if-ne p2, v3, :cond_0

    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Ljava/time/LocalDate;

    invoke-virtual {p0, p3, v3, v3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendValueReduced(Ljava/time/temporal/TemporalField;IILjava/time/chrono/ChronoLocalDate;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ge p2, v1, :cond_1

    sget-object v1, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    invoke-virtual {p0, p3, p2, v4, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    invoke-virtual {p0, p3, p2, v4, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_0

    :sswitch_1
    if-ne p2, v3, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid pattern \"cc\""

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :sswitch_2
    const/4 v0, 0x1

    :sswitch_3
    packed-switch p2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Too many pattern letters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/16 v1, 0x63

    if-eq p1, v1, :cond_3

    const/16 v1, 0x65

    if-ne p1, v1, :cond_4

    :cond_3
    new-instance v1, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v1, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CI)V

    invoke-direct {p0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto :goto_0

    :cond_4
    const/16 v1, 0x45

    if-ne p1, v1, :cond_5

    sget-object v1, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_0

    :cond_5
    if-ne p2, v2, :cond_6

    invoke-virtual {p0, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p3, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_0

    :pswitch_1
    if-eqz v0, :cond_7

    sget-object v1, Ljava/time/format/TextStyle;->SHORT_STANDALONE:Ljava/time/format/TextStyle;

    :goto_1
    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_0

    :cond_7
    sget-object v1, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    goto :goto_1

    :pswitch_2
    if-eqz v0, :cond_8

    sget-object v1, Ljava/time/format/TextStyle;->FULL_STANDALONE:Ljava/time/format/TextStyle;

    :goto_2
    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_0

    :cond_8
    sget-object v1, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    goto :goto_2

    :pswitch_3
    if-eqz v0, :cond_9

    sget-object v1, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    :goto_3
    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    :cond_9
    sget-object v1, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    goto :goto_3

    :sswitch_4
    if-ne p2, v2, :cond_a

    sget-object v1, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Too many pattern letters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_5
    packed-switch p2, :pswitch_data_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Too many pattern letters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_4
    sget-object v1, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    :pswitch_5
    sget-object v1, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    :pswitch_6
    sget-object v1, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    :sswitch_6
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, p2, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    :sswitch_7
    if-ne p2, v2, :cond_b

    invoke-virtual {p0, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Too many pattern letters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_8
    if-ne p2, v2, :cond_c

    invoke-virtual {p0, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    :cond_c
    if-ne p2, v3, :cond_d

    invoke-virtual {p0, p3, p2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Too many pattern letters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_9
    if-ne p2, v2, :cond_e

    invoke-virtual {p0, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x3

    if-gt p2, v1, :cond_f

    invoke-virtual {p0, p3, p2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Too many pattern letters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    invoke-virtual {p0, p3, p2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_9
        0x45 -> :sswitch_3
        0x46 -> :sswitch_7
        0x47 -> :sswitch_5
        0x48 -> :sswitch_8
        0x4b -> :sswitch_8
        0x4c -> :sswitch_2
        0x4d -> :sswitch_3
        0x51 -> :sswitch_3
        0x53 -> :sswitch_6
        0x61 -> :sswitch_4
        0x63 -> :sswitch_1
        0x64 -> :sswitch_8
        0x65 -> :sswitch_3
        0x68 -> :sswitch_8
        0x6b -> :sswitch_8
        0x6d -> :sswitch_8
        0x71 -> :sswitch_2
        0x73 -> :sswitch_8
        0x75 -> :sswitch_0
        0x79 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private parsePattern(Ljava/lang/String;)V
    .locals 12

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_2d

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v9, 0x41

    if-lt v1, v9, :cond_1

    const/16 v9, 0x5a

    if-gt v1, v9, :cond_1

    :cond_0
    add-int/lit8 v5, v4, 0x1

    move v6, v4

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_4

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v1, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/16 v9, 0x61

    if-lt v1, v9, :cond_2

    const/16 v9, 0x7a

    if-le v1, v9, :cond_0

    :cond_2
    const/16 v9, 0x27

    if-ne v1, v9, :cond_27

    add-int/lit8 v5, v4, 0x1

    move v6, v4

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_24

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x27

    if-ne v9, v10, :cond_3

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_24

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x27

    if-ne v9, v10, :cond_24

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    sub-int v0, v5, v4

    const/16 v9, 0x70

    if-ne v1, v9, :cond_2f

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_2e

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v9, 0x41

    if-lt v1, v9, :cond_6

    const/16 v9, 0x5a

    if-gt v1, v9, :cond_6

    :cond_5
    move v3, v0

    add-int/lit8 v4, v5, 0x1

    move v6, v5

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_8

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v1, :cond_8

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    const/16 v9, 0x61

    if-lt v1, v9, :cond_7

    const/16 v9, 0x7a

    if-le v1, v9, :cond_5

    :cond_7
    move v4, v5

    :goto_4
    if-nez v3, :cond_9

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Pad letter \'p\' must be followed by valid pad pattern: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_8
    sub-int v0, v4, v5

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->padNext(I)Ljava/time/format/DateTimeFormatterBuilder;

    :goto_5
    sget-object v9, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/temporal/TemporalField;

    if-eqz v2, :cond_a

    invoke-direct {p0, v1, v0, v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseField(CILjava/time/temporal/TemporalField;)V

    :goto_6
    add-int/lit8 v4, v4, -0x1

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_a
    const/16 v9, 0x7a

    if-ne v1, v9, :cond_d

    const/4 v9, 0x4

    if-le v0, v9, :cond_b

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Too many pattern letters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_b
    const/4 v9, 0x4

    if-ne v0, v9, :cond_c

    sget-object v9, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_6

    :cond_c
    sget-object v9, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_6

    :cond_d
    const/16 v9, 0x56

    if-ne v1, v9, :cond_f

    const/4 v9, 0x2

    if-eq v0, v9, :cond_e

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Pattern letter count must be 2: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_e
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneId()Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_6

    :cond_f
    const/16 v9, 0x5a

    if-ne v1, v9, :cond_13

    const/4 v9, 0x4

    if-ge v0, v9, :cond_10

    const-string/jumbo v9, "+HHMM"

    const-string/jumbo v10, "+0000"

    invoke-virtual {p0, v9, v10}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_6

    :cond_10
    const/4 v9, 0x4

    if-ne v0, v9, :cond_11

    sget-object v9, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_6

    :cond_11
    const/4 v9, 0x5

    if-ne v0, v9, :cond_12

    const-string/jumbo v9, "+HH:MM:ss"

    const-string/jumbo v10, "Z"

    invoke-virtual {p0, v9, v10}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_6

    :cond_12
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Too many pattern letters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_13
    const/16 v9, 0x4f

    if-ne v1, v9, :cond_16

    const/4 v9, 0x1

    if-ne v0, v9, :cond_14

    sget-object v9, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_6

    :cond_14
    const/4 v9, 0x4

    if-ne v0, v9, :cond_15

    sget-object v9, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_6

    :cond_15
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Pattern letter count must be 1 or 4: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_16
    const/16 v9, 0x58

    if-ne v1, v9, :cond_19

    const/4 v9, 0x5

    if-le v0, v9, :cond_17

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Too many pattern letters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_17
    sget-object v10, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    const/4 v9, 0x1

    if-ne v0, v9, :cond_18

    const/4 v9, 0x0

    :goto_8
    add-int/2addr v9, v0

    aget-object v9, v10, v9

    const-string/jumbo v10, "Z"

    invoke-virtual {p0, v9, v10}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_6

    :cond_18
    const/4 v9, 0x1

    goto :goto_8

    :cond_19
    const/16 v9, 0x78

    if-ne v1, v9, :cond_1e

    const/4 v9, 0x5

    if-le v0, v9, :cond_1a

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Too many pattern letters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1a
    const/4 v9, 0x1

    if-ne v0, v9, :cond_1b

    const-string/jumbo v8, "+00"

    :goto_9
    sget-object v10, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    const/4 v9, 0x1

    if-ne v0, v9, :cond_1d

    const/4 v9, 0x0

    :goto_a
    add-int/2addr v9, v0

    aget-object v9, v10, v9

    invoke-virtual {p0, v9, v8}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_6

    :cond_1b
    rem-int/lit8 v9, v0, 0x2

    if-nez v9, :cond_1c

    const-string/jumbo v8, "+0000"

    goto :goto_9

    :cond_1c
    const-string/jumbo v8, "+00:00"

    goto :goto_9

    :cond_1d
    const/4 v9, 0x1

    goto :goto_a

    :cond_1e
    const/16 v9, 0x57

    if-ne v1, v9, :cond_20

    const/4 v9, 0x1

    if-le v0, v9, :cond_1f

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Too many pattern letters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1f
    new-instance v9, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v9, v1, v0}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CI)V

    invoke-direct {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto/16 :goto_6

    :cond_20
    const/16 v9, 0x77

    if-ne v1, v9, :cond_22

    const/4 v9, 0x2

    if-le v0, v9, :cond_21

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Too many pattern letters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_21
    new-instance v9, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v9, v1, v0}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CI)V

    invoke-direct {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto/16 :goto_6

    :cond_22
    const/16 v9, 0x59

    if-ne v1, v9, :cond_23

    new-instance v9, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v9, v1, v0}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CI)V

    invoke-direct {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto/16 :goto_6

    :cond_23
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown pattern letter: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v5, v9, :cond_25

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Pattern ends with an incomplete string literal: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_25
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_26

    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move v4, v5

    goto/16 :goto_7

    :cond_26
    const-string/jumbo v9, "\'\'"

    const-string/jumbo v10, "\'"

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move v4, v5

    goto/16 :goto_7

    :cond_27
    const/16 v9, 0x5b

    if-ne v1, v9, :cond_28

    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_7

    :cond_28
    const/16 v9, 0x5d

    if-ne v1, v9, :cond_2a

    iget-object v9, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v9, v9, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    if-nez v9, :cond_29

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "Pattern invalid as it contains ] without previous ["

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_29
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_7

    :cond_2a
    const/16 v9, 0x7b

    if-eq v1, v9, :cond_2b

    const/16 v9, 0x7d

    if-ne v1, v9, :cond_2c

    :cond_2b
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Pattern includes reserved character: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2c
    const/16 v9, 0x23

    if-eq v1, v9, :cond_2b

    invoke-virtual {p0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_7

    :cond_2d
    return-void

    :cond_2e
    move v4, v5

    goto/16 :goto_4

    :cond_2f
    move v4, v5

    goto/16 :goto_5
.end method

.method private toFormatter(Ljava/util/Locale;Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;
    .locals 8

    const/4 v5, 0x0

    const-string/jumbo v0, "locale"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>(Ljava/util/List;Z)V

    new-instance v0, Ljava/time/format/DateTimeFormatter;

    sget-object v3, Ljava/time/format/DecimalStyle;->STANDARD:Ljava/time/format/DecimalStyle;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v0
.end method


# virtual methods
.method public append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 1

    const-string/jumbo v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimeFormatter;->toPrinterParser(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendChronologyId()Ljava/time/format/DateTimeFormatterBuilder;
    .locals 2

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;-><init>(Ljava/time/format/TextStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendChronologyText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 1

    const-string/jumbo v0, "textStyle"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;

    invoke-direct {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;-><init>(Ljava/time/format/TextStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 1

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIZ)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendInstant()Ljava/time/format/DateTimeFormatterBuilder;
    .locals 2

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendInstant(I)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 3

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The fractional digits must be from -1 to 9 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;

    invoke-direct {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 1

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;

    invoke-direct {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;-><init>(C)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "literal"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;-><init>(C)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;

    invoke-direct {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto :goto_0
.end method

.method public appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Either the date or time style must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;

    invoke-direct {v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;-><init>(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendLocalizedOffset(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 2

    const-string/jumbo v0, "style"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Style must be either full or short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;

    invoke-direct {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;-><init>(Ljava/time/format/TextStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 1

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    invoke-direct {v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;
    .locals 1

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_Z:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendOptional(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 1

    const-string/jumbo v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimeFormatter;->toPrinterParser(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 1

    const-string/jumbo v0, "pattern"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder;->parsePattern(Ljava/lang/String;)V

    return-object p0
.end method

.method public appendText(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 1

    sget-object v0, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 2

    const-string/jumbo v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "textStyle"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;

    invoke-static {}, Ljava/time/format/DateTimeTextProvider;->getInstance()Ljava/time/format/DateTimeTextProvider;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;-><init>(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/time/format/DateTimeTextProvider;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendText(Ljava/time/temporal/TemporalField;Ljava/util/Map;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/time/format/DateTimeFormatterBuilder;"
        }
    .end annotation

    const-string/jumbo v4, "field"

    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "textLookup"

    invoke-static {p2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    sget-object v4, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-static {v4, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    new-instance v3, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {v3, v1}, Ljava/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$2;

    invoke-direct {v2, p0, v3}, Ljava/time/format/DateTimeFormatterBuilder$2;-><init>(Ljava/time/format/DateTimeFormatterBuilder;Ljava/time/format/DateTimeTextProvider$LocaleStore;)V

    new-instance v4, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;

    sget-object v5, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-direct {v4, p1, v5, v2}, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;-><init>(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/time/format/DateTimeTextProvider;)V

    invoke-direct {p0, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 4

    const-string/jumbo v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    sget-object v1, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    const/4 v2, 0x1

    const/16 v3, 0x13

    invoke-direct {v0, p1, v2, v3, v1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    return-object p0
.end method

.method public appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 4

    const-string/jumbo v1, "field"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x1

    if-lt p2, v1, :cond_0

    const/16 v1, 0x13

    if-le p2, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The width must be from 1 to 19 inclusive but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    sget-object v1, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    invoke-direct {v0, p1, p2, p2, v1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    return-object p0
.end method

.method public appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 4

    const/16 v3, 0x13

    const/4 v2, 0x1

    if-ne p2, p3, :cond_0

    sget-object v1, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    if-ne p4, v1, :cond_0

    invoke-virtual {p0, p1, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "field"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "signStyle"

    invoke-static {p4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-lt p2, v2, :cond_1

    if-le p2, v3, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The minimum width must be from 1 to 19 inclusive but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-lt p3, v2, :cond_3

    if-le p3, v3, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The maximum width must be from 1 to 19 inclusive but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    if-ge p3, p2, :cond_5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The maximum width must exceed or equal the minimum width but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    return-object p0
.end method

.method public appendValueReduced(Ljava/time/temporal/TemporalField;III)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 6

    const-string/jumbo v1, "field"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    return-object p0
.end method

.method public appendValueReduced(Ljava/time/temporal/TemporalField;IILjava/time/chrono/ChronoLocalDate;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 6

    const-string/jumbo v1, "field"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "baseDate"

    invoke-static {p4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    return-object p0
.end method

.method public appendZoneId()Ljava/time/format/DateTimeFormatterBuilder;
    .locals 3

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    const-string/jumbo v2, "ZoneId()"

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendZoneOrOffsetId()Ljava/time/format/DateTimeFormatterBuilder;
    .locals 3

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    const-string/jumbo v2, "ZoneOrOffsetId()"

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendZoneRegionId()Ljava/time/format/DateTimeFormatterBuilder;
    .locals 3

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder;->QUERY_REGION_ONLY:Ljava/time/temporal/TemporalQuery;

    const-string/jumbo v2, "ZoneRegionId()"

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendZoneText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 2

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Ljava/time/format/TextStyle;Ljava/util/Set;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendZoneText(Ljava/time/format/TextStyle;Ljava/util/Set;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/Set",
            "<",
            "Ljava/time/ZoneId;",
            ">;)",
            "Ljava/time/format/DateTimeFormatterBuilder;"
        }
    .end annotation

    const-string/jumbo v0, "preferredZones"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    invoke-direct {v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Ljava/time/format/TextStyle;Ljava/util/Set;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;
    .locals 3

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot call optionalEnd() as there was no previous call to optionalStart()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-boolean v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->optional:Z

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>(Ljava/util/List;Z)V

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    iput-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    :goto_0
    return-object p0

    :cond_1
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    iput-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_0
.end method

.method public optionalStart()Ljava/time/format/DateTimeFormatterBuilder;
    .locals 3

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v1, -0x1

    iput v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>(Ljava/time/format/DateTimeFormatterBuilder;Z)V

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    return-object p0
.end method

.method public padNext(I)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatterBuilder;->padNext(IC)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public padNext(IC)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The pad width must be at least one but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iput p1, v0, Ljava/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iput-char p2, v0, Ljava/time/format/DateTimeFormatterBuilder;->padNextChar:C

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v1, -0x1

    iput v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    return-object p0
.end method

.method public parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;
    .locals 1

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->INSENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public parseCaseSensitive()Ljava/time/format/DateTimeFormatterBuilder;
    .locals 1

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->SENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public parseDefaulting(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 2

    const-string/jumbo v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$DefaultValueParser;

    invoke-direct {v0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$DefaultValueParser;-><init>(Ljava/time/temporal/TemporalField;J)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public parseLenient()Ljava/time/format/DateTimeFormatterBuilder;
    .locals 1

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->LENIENT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public parseStrict()Ljava/time/format/DateTimeFormatterBuilder;
    .locals 1

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->STRICT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public toFormatter()Ljava/time/format/DateTimeFormatter;
    .locals 1

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;
    .locals 1

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;
    .locals 2

    sget-object v0, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method
