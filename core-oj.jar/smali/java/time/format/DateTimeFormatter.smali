.class public final Ljava/time/format/DateTimeFormatter;
.super Ljava/lang/Object;
.source "DateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/format/DateTimeFormatter$ClassicFormat;
    }
.end annotation


# static fields
.field public static final BASIC_ISO_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_DATE_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_OFFSET_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_OFFSET_DATE_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_OFFSET_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_ORDINAL_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_WEEK_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_ZONED_DATE_TIME:Ljava/time/format/DateTimeFormatter;

.field private static final PARSED_EXCESS_DAYS:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/Period;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARSED_LEAP_SECOND:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final RFC_1123_DATE_TIME:Ljava/time/format/DateTimeFormatter;


# instance fields
.field private final chrono:Ljava/time/chrono/Chronology;

.field private final decimalStyle:Ljava/time/format/DecimalStyle;

.field private final locale:Ljava/util/Locale;

.field private final printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

.field private final resolverFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/time/temporal/TemporalField;",
            ">;"
        }
    .end annotation
.end field

.field private final resolverStyle:Ljava/time/format/ResolverStyle;

.field private final zone:Ljava/time/ZoneId;


# direct methods
.method static synthetic -get0(Ljava/time/format/DateTimeFormatter;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get1(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/ResolverStyle;
    .locals 1

    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext;
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/time/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    const/16 v11, 0x3a

    const/16 v10, 0x2d

    const/16 v9, 0x20

    const/4 v8, 0x4

    const/4 v7, 0x2

    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    sget-object v4, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    const/16 v5, 0xa

    invoke-virtual {v2, v3, v8, v5, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v3, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v3, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_DATE:Ljava/time/format/DateTimeFormatter;

    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->ISO_DATE:Ljava/time/format/DateTimeFormatter;

    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v3, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v3, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v3, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v3, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const/4 v4, 0x0

    const/16 v5, 0x9

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_TIME:Ljava/time/format/DateTimeFormatter;

    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->ISO_TIME:Ljava/time/format/DateTimeFormatter;

    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    const/16 v3, 0x54

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v3, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseSensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneRegionId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->ISO_ZONED_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v3, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseSensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneRegionId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->ISO_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    sget-object v4, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    const/16 v5, 0xa

    invoke-virtual {v2, v3, v8, v5, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->ISO_ORDINAL_DATE:Ljava/time/format/DateTimeFormatter;

    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    sget-object v4, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    const/16 v5, 0xa

    invoke-virtual {v2, v3, v8, v5, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    const-string/jumbo v3, "-W"

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/IsoFields;->WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    invoke-virtual {v2, v3, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->ISO_WEEK_DATE:Ljava/time/format/DateTimeFormatter;

    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendInstant()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v3, v8}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v3, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v3, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    const-string/jumbo v3, "+HHMMss"

    const-string/jumbo v4, "Z"

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->BASIC_ISO_DATE:Ljava/time/format/DateTimeFormatter;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Mon"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Tue"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Wed"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Thu"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Fri"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Sat"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Sun"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Jan"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Feb"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Mar"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Apr"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "May"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Jun"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Jul"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Aug"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Sep"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Oct"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0xb

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Nov"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0xc

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "Dec"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseLenient()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v3, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/util/Map;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    sget-object v4, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5, v7, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/util/Map;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v3, v8}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v3, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v3, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v3, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    const-string/jumbo v3, "+HHMM"

    const-string/jumbo v4, "GMT"

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Ljava/time/format/DateTimeFormatter;->RFC_1123_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    new-instance v2, Ljava/time/format/-$Lambda$0XYNFtuSwmPr7fM6_PYPS6Yf4g0;

    invoke-direct {v2}, Ljava/time/format/-$Lambda$0XYNFtuSwmPr7fM6_PYPS6Yf4g0;-><init>()V

    sput-object v2, Ljava/time/format/DateTimeFormatter;->PARSED_EXCESS_DAYS:Ljava/time/temporal/TemporalQuery;

    new-instance v2, Ljava/time/format/-$Lambda$0XYNFtuSwmPr7fM6_PYPS6Yf4g0$1;

    invoke-direct {v2}, Ljava/time/format/-$Lambda$0XYNFtuSwmPr7fM6_PYPS6Yf4g0$1;-><init>()V

    sput-object v2, Ljava/time/format/DateTimeFormatter;->PARSED_LEAP_SECOND:Ljava/time/temporal/TemporalQuery;

    return-void
.end method

.method constructor <init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;",
            "Ljava/util/Locale;",
            "Ljava/time/format/DecimalStyle;",
            "Ljava/time/format/ResolverStyle;",
            "Ljava/util/Set",
            "<",
            "Ljava/time/temporal/TemporalField;",
            ">;",
            "Ljava/time/chrono/Chronology;",
            "Ljava/time/ZoneId;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "printerParser"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iput-object v0, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iput-object p5, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    const-string/jumbo v0, "locale"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    const-string/jumbo v0, "decimalStyle"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/format/DecimalStyle;

    iput-object v0, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    const-string/jumbo v0, "resolverStyle"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/format/ResolverStyle;

    iput-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iput-object p6, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    iput-object p7, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    return-void
.end method

.method private createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljava/time/format/DateTimeParseException;
    .locals 5

    const/16 v2, 0x40

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Text \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' could not be parsed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, v4, p2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V

    return-object v1

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic lambda$-java_time_format_DateTimeFormatter_61156(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Period;
    .locals 1

    instance-of v0, p0, Ljava/time/format/Parsed;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/time/format/Parsed;

    iget-object v0, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    return-object v0

    :cond_0
    sget-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    return-object v0
.end method

.method static synthetic lambda$-java_time_format_DateTimeFormatter_63118(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Boolean;
    .locals 1

    instance-of v0, p0, Ljava/time/format/Parsed;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/time/format/Parsed;

    iget-boolean v0, p0, Ljava/time/format/Parsed;->leapSecond:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static ofLocalizedDate(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;
    .locals 3

    const-string/jumbo v0, "dateStyle"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static ofLocalizedDateTime(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;
    .locals 3

    const-string/jumbo v0, "dateTimeStyle"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0, p0}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static ofLocalizedDateTime(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;
    .locals 3

    const-string/jumbo v0, "dateStyle"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "timeStyle"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static ofLocalizedTime(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;
    .locals 3

    const-string/jumbo v0, "timeStyle"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;
    .locals 1

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;
    .locals 1

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method private parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;
    .locals 7

    const/16 v6, 0x40

    const/4 v5, 0x0

    if-eqz p2, :cond_1

    move-object v2, p2

    :goto_0
    invoke-direct {p0, p1, v2}, Ljava/time/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    if-ltz v3, :cond_2

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v6, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    if-ltz v3, :cond_5

    new-instance v3, Ljava/time/format/DateTimeParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Text \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' could not be parsed at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    invoke-direct {v3, v4, p1, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v3

    :cond_1
    new-instance v2, Ljava/text/ParsePosition;

    invoke-direct {v2, v5}, Ljava/text/ParsePosition;-><init>(I)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    :cond_3
    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-virtual {v1, v3, v4}, Ljava/time/format/DateTimeParseContext;->toResolved(Ljava/time/format/ResolverStyle;Ljava/util/Set;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v3

    return-object v3

    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    new-instance v3, Ljava/time/format/DateTimeParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Text \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' could not be parsed, unparsed text found at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-direct {v3, v4, p1, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v3
.end method

.method private parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext;
    .locals 3

    const-string/jumbo v2, "text"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v2, "position"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/time/format/DateTimeParseContext;

    invoke-direct {v0, p0}, Ljava/time/format/DateTimeParseContext;-><init>(Ljava/time/format/DateTimeFormatter;)V

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v2, v0, p1, v1}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v1

    if-gez v1, :cond_0

    not-int v2, v1

    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v0
.end method

.method public static final parsedExcessDays()Ljava/time/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/Period;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/time/format/DateTimeFormatter;->PARSED_EXCESS_DAYS:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static final parsedLeapSecond()Ljava/time/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/time/format/DateTimeFormatter;->PARSED_LEAP_SECOND:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method


# virtual methods
.method public format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->formatTo(Ljava/time/temporal/TemporalAccessor;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public formatTo(Ljava/time/temporal/TemporalAccessor;Ljava/lang/Appendable;)V
    .locals 5

    const-string/jumbo v3, "temporal"

    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v3, "appendable"

    invoke-static {p2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    new-instance v1, Ljava/time/format/DateTimePrintContext;

    invoke-direct {v1, p1, p0}, Ljava/time/format/DateTimePrintContext;-><init>(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)V

    instance-of v3, p2, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, p2}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v3, v1, v0}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/time/DateTimeException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getChronology()Ljava/time/chrono/Chronology;
    .locals 1

    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    return-object v0
.end method

.method public getDecimalStyle()Ljava/time/format/DecimalStyle;
    .locals 1

    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getResolverFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/time/temporal/TemporalField;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    return-object v0
.end method

.method public getResolverStyle()Ljava/time/format/ResolverStyle;
    .locals 1

    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    return-object v0
.end method

.method public getZone()Ljava/time/ZoneId;
    .locals 1

    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    return-object v0
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Ljava/time/temporal/TemporalQuery",
            "<TT;>;)TT;"
        }
    .end annotation

    const-string/jumbo v2, "text"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v2, "query"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v2}, Ljava/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-direct {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljava/time/format/DateTimeParseException;

    move-result-object v2

    throw v2

    :catch_1
    move-exception v1

    throw v1
.end method

.method public parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;
    .locals 3

    const-string/jumbo v2, "text"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v2}, Ljava/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-direct {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljava/time/format/DateTimeParseException;

    move-result-object v2

    throw v2

    :catch_1
    move-exception v1

    throw v1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;
    .locals 2

    const-string/jumbo v1, "text"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "position"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-direct {p0, p1, p2}, Ljava/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-direct {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljava/time/format/DateTimeParseException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    throw v0
.end method

.method public varargs parseBest(Ljava/lang/CharSequence;[Ljava/time/temporal/TemporalQuery;)Ljava/time/temporal/TemporalAccessor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/time/temporal/TemporalQuery",
            "<*>;)",
            "Ljava/time/temporal/TemporalAccessor;"
        }
    .end annotation

    const-string/jumbo v4, "text"

    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "queries"

    invoke-static {p2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v4, p2

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "At least two queries must be specified"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, p1, v4}, Ljava/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v3

    const/4 v4, 0x0

    array-length v6, p2

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, p2, v5
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-interface {v3, v2}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/temporal/TemporalAccessor;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    :catch_0
    move-exception v0

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v4, Ljava/time/DateTimeException;

    const-string/jumbo v5, "Unable to convert parsed text using any of the specified queries"

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/time/format/DateTimeParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_1
    move-exception v1

    throw v1

    :catch_2
    move-exception v0

    invoke-direct {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljava/time/format/DateTimeParseException;

    move-result-object v4

    throw v4
.end method

.method public parseUnresolved(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Ljava/time/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/time/format/DateTimeParseContext;->toUnresolved()Ljava/time/format/Parsed;

    move-result-object v1

    return-object v1
.end method

.method public toFormat()Ljava/text/Format;
    .locals 2

    new-instance v0, Ljava/time/format/DateTimeFormatter$ClassicFormat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/time/format/DateTimeFormatter$ClassicFormat;-><init>(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalQuery;)V

    return-object v0
.end method

.method public toFormat(Ljava/time/temporal/TemporalQuery;)Ljava/text/Format;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalQuery",
            "<*>;)",
            "Ljava/text/Format;"
        }
    .end annotation

    const-string/jumbo v0, "parseQuery"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/time/format/DateTimeFormatter$ClassicFormat;

    invoke-direct {v0, p0, p1}, Ljava/time/format/DateTimeFormatter$ClassicFormat;-><init>(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalQuery;)V

    return-object v0
.end method

.method toPrinterParser(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .locals 1

    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->withOptional(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;
    .locals 8

    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/time/format/DateTimeFormatter;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v5, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public withDecimalStyle(Ljava/time/format/DecimalStyle;)Ljava/time/format/DateTimeFormatter;
    .locals 8

    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    invoke-virtual {v0, p1}, Ljava/time/format/DecimalStyle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/time/format/DateTimeFormatter;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v5, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;
    .locals 8

    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/time/format/DateTimeFormatter;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v5, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public withResolverFields(Ljava/util/Set;)Ljava/time/format/DateTimeFormatter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/time/temporal/TemporalField;",
            ">;)",
            "Ljava/time/format/DateTimeFormatter;"
        }
    .end annotation

    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :cond_1
    new-instance v0, Ljava/time/format/DateTimeFormatter;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public varargs withResolverFields([Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatter;
    .locals 8

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    :cond_0
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Ljava/time/format/DateTimeFormatter;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    invoke-direct/range {v0 .. v7}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public withResolverStyle(Ljava/time/format/ResolverStyle;)Ljava/time/format/DateTimeFormatter;
    .locals 8

    const-string/jumbo v0, "resolverStyle"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/time/format/DateTimeFormatter;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    iget-object v5, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;
    .locals 8

    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/time/format/DateTimeFormatter;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v5, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v0
.end method
