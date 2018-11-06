.class public Lsun/util/locale/provider/CalendarDataUtility;
.super Ljava/lang/Object;
.source "CalendarDataUtility.java"


# static fields
.field private static final BUDDHIST_CALENDAR:Ljava/lang/String; = "buddhist"

.field private static final GREGORIAN_CALENDAR:Ljava/lang/String; = "gregorian"

.field private static final ISLAMIC_CALENDAR:Ljava/lang/String; = "islamic"

.field private static final JAPANESE_CALENDAR:Ljava/lang/String; = "japanese"

.field private static REST_OF_STYLES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0x8001

    const/4 v1, 0x2

    const v2, 0x8002

    const/4 v3, 0x4

    const v4, 0x8004

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lsun/util/locale/provider/CalendarDataUtility;->REST_OF_STYLES:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDateFormatSymbols(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;
    .locals 3

    invoke-static {p0}, Lsun/util/locale/provider/CalendarDataUtility;->normalizeCalendarType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/icu/text/DateFormatSymbols;

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getNames(Ljava/lang/String;IILjava/util/Locale;)[Ljava/lang/String;
    .locals 6

    invoke-static {p2}, Lsun/util/locale/provider/CalendarDataUtility;->toContext(I)I

    move-result v0

    invoke-static {p2}, Lsun/util/locale/provider/CalendarDataUtility;->toWidth(I)I

    move-result v2

    invoke-static {p0, p3}, Lsun/util/locale/provider/CalendarDataUtility;->getDateFormatSymbols(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v1

    sparse-switch p1, :sswitch_data_0

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown field: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_0
    invoke-virtual {v1, v0, v2}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v3

    return-object v3

    :sswitch_1
    packed-switch v2, :pswitch_data_0

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getNarrowEras()[Ljava/lang/String;

    move-result-object v3

    return-object v3

    :pswitch_1
    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v3

    return-object v3

    :pswitch_2
    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getEraNames()[Ljava/lang/String;

    move-result-object v3

    return-object v3

    :sswitch_2
    invoke-virtual {v1, v0, v2}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v3

    return-object v3

    :sswitch_3
    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v3

    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x7 -> :sswitch_2
        0x9 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static normalizeCalendarType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v1, "gregory"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "iso8601"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v0, "gregorian"

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "islamic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "islamic"

    goto :goto_0

    :cond_2
    move-object v0, p0

    goto :goto_0
.end method

.method public static retrieveFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_1

    invoke-static {p0}, Lsun/util/locale/provider/CalendarDataUtility;->normalizeCalendarType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "buddhist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    add-int/lit8 p2, p2, -0x1

    :cond_1
    :goto_0
    if-gez p2, :cond_3

    return-object v3

    :cond_2
    const-string/jumbo v2, "islamic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "japanese"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit16 p2, p2, 0xe7

    goto :goto_0

    :cond_3
    invoke-static {p0, p1, p3, p4}, Lsun/util/locale/provider/CalendarDataUtility;->getNames(Ljava/lang/String;IILjava/util/Locale;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lt p2, v1, :cond_4

    return-object v3

    :cond_4
    aget-object v1, v0, p2

    return-object v1
.end method

.method public static retrieveFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p2, :cond_0

    const/4 v3, 0x1

    invoke-static {p0, p1, v3, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNamesImpl(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    sget-object v3, Lsun/util/locale/provider/CalendarDataUtility;->REST_OF_STYLES:[I

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget v1, v3, v2

    invoke-static {p0, p1, v1, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNamesImpl(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNamesImpl(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method private static retrieveFieldValueNamesImpl(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lsun/util/locale/provider/CalendarDataUtility;->getNames(Ljava/lang/String;IILjava/util/Locale;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_1

    invoke-static {p0}, Lsun/util/locale/provider/CalendarDataUtility;->normalizeCalendarType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "buddhist"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    const/4 v2, 0x1

    :cond_1
    :goto_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    move v0, v4

    :goto_1
    array-length v5, v1

    if-ge v0, v5, :cond_5

    aget-object v5, v1, v0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v6, "islamic"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "japanese"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0xe8

    const/16 v2, -0xe7

    goto :goto_0

    :cond_4
    aget-object v5, v1, v0

    add-int v6, v0, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v5

    :cond_5
    return-object v3
.end method

.method public static retrieveJavaTimeFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static retrieveJavaTimeFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static toContext(I)I
    .locals 3

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 v0, 0x0

    return v0

    :sswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8001 -> :sswitch_1
        0x8002 -> :sswitch_1
        0x8004 -> :sswitch_1
    .end sparse-switch
.end method

.method private static toWidth(I)I
    .locals 3

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 v0, 0x0

    return v0

    :sswitch_1
    const/4 v0, 0x2

    return v0

    :sswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8001 -> :sswitch_0
        0x8002 -> :sswitch_2
        0x8004 -> :sswitch_1
    .end sparse-switch
.end method
