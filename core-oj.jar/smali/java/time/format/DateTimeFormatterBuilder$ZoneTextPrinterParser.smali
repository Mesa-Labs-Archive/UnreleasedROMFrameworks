.class final Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;
.super Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ZoneTextPrinterParser"
.end annotation


# static fields
.field private static final DST:I = 0x1

.field private static final FULL_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

.field private static final GENERIC:I = 0x2

.field private static final SHORT_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

.field private static final STD:I

.field private static final TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

.field private static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final cachedTree:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final cachedTreeCI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private preferredZones:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final textStyle:Ljava/time/format/TextStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    new-array v0, v6, [Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v5

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->FULL_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    new-array v0, v6, [Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v5

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->SHORT_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cache:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/time/format/TextStyle;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/Set",
            "<",
            "Ljava/time/ZoneId;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ZoneText("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTree:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTreeCI:Ljava/util/Map;

    const-string/jumbo v2, "textStyle"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/format/TextStyle;

    iput-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getDisplayName(Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;
    .locals 12

    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    sget-object v4, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/SoftReference;

    const/4 v8, 0x0

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    if-nez v8, :cond_2

    :cond_1
    invoke-static {p3}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v1

    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v6, v3

    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Landroid/icu/text/TimeZoneNames;->getDisplayNames(Ljava/lang/String;[Landroid/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V

    if-nez v6, :cond_3

    const/4 v3, 0x0

    return-object v3

    :cond_2
    invoke-interface {v8, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    if-eqz v6, :cond_1

    :goto_0
    packed-switch p2, :pswitch_data_0

    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {v3}, Ljava/time/format/TextStyle;->zoneNameStyleIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    aget-object v3, v6, v3

    return-object v3

    :cond_3
    const/4 v3, 0x1

    aget-object v3, v6, v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    aget-object v3, v6, v3

    if-nez v3, :cond_b

    :cond_4
    :goto_1
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v4, v5, v3}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    invoke-virtual {v11}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v4, v5, v3}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aget-object v3, v6, v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    aget-object v3, v6, v3

    :goto_2
    const/4 v4, 0x1

    aput-object v3, v6, v4

    const/4 v3, 0x2

    aget-object v3, v6, v3

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    aget-object v10, v6, v3

    :cond_5
    const/4 v3, 0x2

    aput-object v10, v6, v3

    const/4 v3, 0x3

    aget-object v3, v6, v3

    if-eqz v3, :cond_d

    const/4 v3, 0x3

    aget-object v3, v6, v3

    :goto_3
    const/4 v4, 0x3

    aput-object v3, v6, v4

    const/4 v3, 0x4

    aget-object v3, v6, v3

    if-eqz v3, :cond_6

    const/4 v3, 0x4

    aget-object v0, v6, v3

    :cond_6
    const/4 v3, 0x4

    aput-object v0, v6, v3

    :cond_7
    const/4 v3, 0x5

    aget-object v3, v6, v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    aget-object v3, v6, v3

    const/4 v4, 0x5

    aput-object v3, v6, v4

    :cond_8
    const/4 v3, 0x6

    aget-object v3, v6, v3

    if-nez v3, :cond_9

    const/4 v3, 0x0

    aget-object v3, v6, v3

    const/4 v4, 0x6

    aput-object v3, v6, v4

    :cond_9
    if-nez v8, :cond_a

    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :cond_a
    invoke-interface {v8, p3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cache:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v8}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    const/4 v3, 0x3

    aget-object v3, v6, v3

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    aget-object v3, v6, v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_c
    move-object v3, v10

    goto :goto_2

    :cond_d
    move-object v3, v0

    goto :goto_3

    :pswitch_0
    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {v3}, Ljava/time/format/TextStyle;->zoneNameStyleIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    aget-object v3, v6, v3

    return-object v3

    :pswitch_1
    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {v3}, Ljava/time/format/TextStyle;->zoneNameStyleIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    aget-object v3, v6, v3

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/ZoneId;

    if-nez v3, :cond_0

    return v4

    :cond_0
    invoke-virtual {v3}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v2

    instance-of v6, v3, Ljava/time/ZoneOffset;

    if-nez v6, :cond_2

    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    sget-object v6, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v6}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v6

    invoke-static {v0}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/time/zone/ZoneRules;->isDaylightSavings(Ljava/time/Instant;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {p0, v2, v4, v6}, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->getDisplayName(Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v2, v1

    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v5

    :cond_3
    const/4 v4, 0x2

    goto :goto_0
.end method

.method protected getTree(Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .locals 24

    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    sget-object v11, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    if-ne v9, v11, :cond_0

    invoke-super/range {p0 .. p1}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->getTree(Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v9

    return-object v9

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v18

    invoke-static {}, Ljava/time/zone/ZoneRulesProvider;->getAvailableZoneIds()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->size()I

    move-result v21

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTree:Ljava/util/Map;

    :goto_0
    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    if-eqz v16, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move/from16 v0, v21

    if-ne v9, v0, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/SoftReference;

    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-nez v22, :cond_a

    :cond_1
    invoke-static/range {p1 .. p1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->newTree(Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v22

    invoke-static/range {v19 .. v19}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    sget-object v11, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    if-ne v9, v11, :cond_5

    sget-object v5, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->FULL_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    :goto_1
    array-length v9, v5

    new-array v8, v9, [Ljava/lang/String;

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v4}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->add(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Ljava/time/format/ZoneName;->toZid(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/icu/text/TimeZoneNames;->getDisplayNames(Ljava/lang/String;[Landroid/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V

    const/16 v17, 0x0

    :goto_2
    array-length v9, v8

    move/from16 v0, v17

    if-ge v0, v9, :cond_2

    aget-object v9, v8, v17

    if-eqz v9, :cond_3

    aget-object v9, v8, v17

    move-object/from16 v0, v22

    invoke-virtual {v0, v9, v4}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->add(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTreeCI:Ljava/util/Map;

    goto :goto_0

    :cond_5
    sget-object v5, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->SHORT_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    if-eqz v9, :cond_9

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_7
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Ljava/time/format/ZoneName;->toZid(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x0

    move-object v9, v3

    move-object v11, v5

    move-wide v12, v6

    move-object v14, v8

    invoke-virtual/range {v9 .. v15}, Landroid/icu/text/TimeZoneNames;->getDisplayNames(Ljava/lang/String;[Landroid/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V

    const/16 v17, 0x0

    :goto_3
    array-length v9, v8

    move/from16 v0, v17

    if-ge v0, v9, :cond_7

    aget-object v9, v8, v17

    if-eqz v9, :cond_8

    aget-object v9, v8, v17

    move-object/from16 v0, v22

    invoke-virtual {v0, v9, v4}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->add(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    :cond_9
    new-instance v9, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v9, v11, v12}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v19

    invoke-interface {v2, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-object v22
.end method
