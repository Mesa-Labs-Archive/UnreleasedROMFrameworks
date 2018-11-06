.class public abstract Lsun/util/calendar/CalendarSystem;
.super Ljava/lang/Object;
.source "CalendarSystem.java"


# static fields
.field private static final GREGORIAN_INSTANCE:Lsun/util/calendar/Gregorian;

.field private static final calendars:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lsun/util/calendar/CalendarSystem;",
            ">;"
        }
    .end annotation
.end field

.field private static final names:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/util/calendar/CalendarSystem;->names:Ljava/util/Map;

    sget-object v0, Lsun/util/calendar/CalendarSystem;->names:Ljava/util/Map;

    const-string/jumbo v1, "gregorian"

    const-class v2, Lsun/util/calendar/Gregorian;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/calendar/CalendarSystem;->names:Ljava/util/Map;

    const-string/jumbo v1, "japanese"

    const-class v2, Lsun/util/calendar/LocalGregorianCalendar;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/calendar/CalendarSystem;->names:Ljava/util/Map;

    const-string/jumbo v1, "julian"

    const-class v2, Lsun/util/calendar/JulianCalendar;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lsun/util/calendar/CalendarSystem;->calendars:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lsun/util/calendar/Gregorian;

    invoke-direct {v0}, Lsun/util/calendar/Gregorian;-><init>()V

    sput-object v0, Lsun/util/calendar/CalendarSystem;->GREGORIAN_INSTANCE:Lsun/util/calendar/Gregorian;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v4, "gregorian"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lsun/util/calendar/CalendarSystem;->GREGORIAN_INSTANCE:Lsun/util/calendar/Gregorian;

    return-object v4

    :cond_0
    sget-object v4, Lsun/util/calendar/CalendarSystem;->calendars:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/CalendarSystem;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    sget-object v4, Lsun/util/calendar/CalendarSystem;->names:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-nez v1, :cond_2

    return-object v5

    :cond_2
    const-class v4, Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p0}, Lsun/util/calendar/LocalGregorianCalendar;->getLocalGregorianCalendar(Ljava/lang/String;)Lsun/util/calendar/LocalGregorianCalendar;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_4

    return-object v5

    :cond_3
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/CalendarSystem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "internal error"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_4
    sget-object v4, Lsun/util/calendar/CalendarSystem;->calendars:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/util/calendar/CalendarSystem;

    if-nez v2, :cond_5

    :goto_1
    return-object v0

    :cond_5
    move-object v0, v2

    goto :goto_1
.end method

.method public static getCalendarProperties()Ljava/util/Properties;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "calendars.properties"

    invoke-static {v2}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v3, :cond_4

    throw v3

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    if-eqz v3, :cond_3

    throw v3

    :catch_2
    move-exception v4

    if-nez v3, :cond_2

    move-object v3, v4

    goto :goto_2

    :cond_2
    if-eq v3, v4, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    throw v2

    :cond_4
    return-object v0

    :catchall_1
    move-exception v2

    goto :goto_1
.end method

.method public static getGregorianCalendar()Lsun/util/calendar/Gregorian;
    .locals 1

    sget-object v0, Lsun/util/calendar/CalendarSystem;->GREGORIAN_INSTANCE:Lsun/util/calendar/Gregorian;

    return-object v0
.end method


# virtual methods
.method public abstract getCalendarDate()Lsun/util/calendar/CalendarDate;
.end method

.method public abstract getCalendarDate(J)Lsun/util/calendar/CalendarDate;
.end method

.method public abstract getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
.end method

.method public abstract getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
.end method

.method public abstract getEra(Ljava/lang/String;)Lsun/util/calendar/Era;
.end method

.method public abstract getEras()[Lsun/util/calendar/Era;
.end method

.method public abstract getMonthLength(Lsun/util/calendar/CalendarDate;)I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNthDayOfWeek(IILsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
.end method

.method public abstract getTime(Lsun/util/calendar/CalendarDate;)J
.end method

.method public abstract getWeekLength()I
.end method

.method public abstract getYearLength(Lsun/util/calendar/CalendarDate;)I
.end method

.method public abstract getYearLengthInMonths(Lsun/util/calendar/CalendarDate;)I
.end method

.method public abstract newCalendarDate()Lsun/util/calendar/CalendarDate;
.end method

.method public abstract newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
.end method

.method public abstract normalize(Lsun/util/calendar/CalendarDate;)Z
.end method

.method public abstract setEra(Lsun/util/calendar/CalendarDate;Ljava/lang/String;)V
.end method

.method public abstract setTimeOfDay(Lsun/util/calendar/CalendarDate;I)Lsun/util/calendar/CalendarDate;
.end method

.method public abstract validate(Lsun/util/calendar/CalendarDate;)Z
.end method
