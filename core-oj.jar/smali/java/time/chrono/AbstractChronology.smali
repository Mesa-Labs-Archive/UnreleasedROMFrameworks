.class public abstract Ljava/time/chrono/AbstractChronology;
.super Ljava/lang/Object;
.source "AbstractChronology.java"

# interfaces
.implements Ljava/time/chrono/Chronology;


# static fields
.field private static final CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/chrono/Chronology;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/chrono/Chronology;",
            ">;"
        }
    .end annotation
.end field

.field static final DATE_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/time/chrono/ChronoLocalDate;",
            ">;"
        }
    .end annotation
.end field

.field static final DATE_TIME_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<+",
            "Ljava/time/chrono/ChronoLocalDate;",
            ">;>;"
        }
    .end annotation
.end field

.field static final INSTANT_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/time/chrono/-$Lambda$2u9I1kadVYC2Q_h8lznNWkqzo1s;

    invoke-direct {v0}, Ljava/time/chrono/-$Lambda$2u9I1kadVYC2Q_h8lznNWkqzo1s;-><init>()V

    check-cast v0, Ljava/io/Serializable;

    sput-object v0, Ljava/time/chrono/AbstractChronology;->DATE_ORDER:Ljava/util/Comparator;

    new-instance v0, Ljava/time/chrono/-$Lambda$2u9I1kadVYC2Q_h8lznNWkqzo1s$1;

    invoke-direct {v0}, Ljava/time/chrono/-$Lambda$2u9I1kadVYC2Q_h8lznNWkqzo1s$1;-><init>()V

    check-cast v0, Ljava/io/Serializable;

    sput-object v0, Ljava/time/chrono/AbstractChronology;->DATE_TIME_ORDER:Ljava/util/Comparator;

    new-instance v0, Ljava/time/chrono/-$Lambda$2u9I1kadVYC2Q_h8lznNWkqzo1s$2;

    invoke-direct {v0}, Ljava/time/chrono/-$Lambda$2u9I1kadVYC2Q_h8lznNWkqzo1s$2;-><init>()V

    check-cast v0, Ljava/io/Serializable;

    sput-object v0, Ljava/time/chrono/AbstractChronology;->INSTANT_ORDER:Ljava/util/Comparator;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAvailableChronologies()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/time/chrono/Chronology;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/time/chrono/AbstractChronology;->initCache()Z

    new-instance v2, Ljava/util/HashSet;

    sget-object v4, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-class v4, Ljava/time/chrono/Chronology;

    invoke-static {v4}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static initCache()Z
    .locals 8

    const/4 v7, 0x0

    sget-object v5, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v6, "ISO"

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    sget-object v5, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    invoke-static {v5}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;)Ljava/time/chrono/Chronology;

    sget-object v5, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    invoke-static {v5}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;)Ljava/time/chrono/Chronology;

    sget-object v5, Ljava/time/chrono/MinguoChronology;->INSTANCE:Ljava/time/chrono/MinguoChronology;

    invoke-static {v5}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;)Ljava/time/chrono/Chronology;

    sget-object v5, Ljava/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljava/time/chrono/ThaiBuddhistChronology;

    invoke-static {v5}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;)Ljava/time/chrono/Chronology;

    const-class v5, Ljava/time/chrono/AbstractChronology;

    invoke-static {v5, v7}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/AbstractChronology;

    invoke-virtual {v0}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "ISO"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v0}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;)Ljava/time/chrono/Chronology;

    move-result-object v5

    if-eqz v5, :cond_0

    :cond_1
    const-string/jumbo v5, "java.time.chrono"

    invoke-static {v5}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ignoring duplicate Chronology, from ServiceLoader configuration "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v5, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-static {v5}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;)Ljava/time/chrono/Chronology;

    const/4 v5, 0x1

    return v5

    :cond_3
    const/4 v5, 0x0

    return v5
.end method

.method static synthetic lambda$-java_time_chrono_AbstractChronology_5936(Ljava/time/chrono/ChronoLocalDate;Ljava/time/chrono/ChronoLocalDate;)I
    .locals 4

    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$-java_time_chrono_AbstractChronology_6277(Ljava/time/chrono/ChronoLocalDateTime;Ljava/time/chrono/ChronoLocalDateTime;)I
    .locals 6

    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-interface {v1}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-interface {v1}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    :cond_0
    return v0
.end method

.method static synthetic lambda$-java_time_chrono_AbstractChronology_6799(Ljava/time/chrono/ChronoZonedDateTime;Ljava/time/chrono/ChronoZonedDateTime;)I
    .locals 6

    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->getNano()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->getNano()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    :cond_0
    return v0
.end method

.method static of(Ljava/lang/String;)Ljava/time/chrono/Chronology;
    .locals 6

    const-string/jumbo v3, "id"

    invoke-static {p0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    invoke-static {p0}, Ljava/time/chrono/AbstractChronology;->of0(Ljava/lang/String;)Ljava/time/chrono/Chronology;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {}, Ljava/time/chrono/AbstractChronology;->initCache()Z

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Ljava/time/chrono/Chronology;

    invoke-static {v3}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    invoke-interface {v0}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v0}, Ljava/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_3
    return-object v0

    :cond_4
    new-instance v3, Ljava/time/DateTimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown chronology: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static of0(Ljava/lang/String;)Ljava/time/chrono/Chronology;
    .locals 2

    sget-object v1, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    if-nez v0, :cond_0

    sget-object v1, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    :cond_0
    return-object v0
.end method

.method static ofLocale(Ljava/util/Locale;)Ljava/time/chrono/Chronology;
    .locals 7

    const-string/jumbo v4, "locale"

    invoke-static {p0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "ca"

    invoke-virtual {p0, v4}, Ljava/util/Locale;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v4, "iso"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "iso8601"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    return-object v4

    :cond_1
    invoke-static {}, Ljava/time/chrono/AbstractChronology;->initCache()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    sget-object v4, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    if-eqz v0, :cond_1

    return-object v0

    :cond_3
    const-class v4, Ljava/time/chrono/Chronology;

    invoke-static {v4}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    invoke-interface {v0}, Ljava/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v0

    :cond_5
    new-instance v4, Ljava/time/DateTimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown calendar system: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/chrono/Chronology;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/time/chrono/Chronology;->of(Ljava/lang/String;)Ljava/time/chrono/Chronology;

    move-result-object v1

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static registerChrono(Ljava/time/chrono/Chronology;)Ljava/time/chrono/Chronology;
    .locals 1

    invoke-interface {p0}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;Ljava/lang/String;)Ljava/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method static registerChrono(Ljava/time/chrono/Chronology;Ljava/lang/String;)Ljava/time/chrono/Chronology;
    .locals 3

    sget-object v2, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/temporal/ChronoField;",
            "J)V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, p3

    if-eqz v1, :cond_0

    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Conflict found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " differs from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/time/chrono/Chronology;

    invoke-virtual {p0, p1}, Ljava/time/chrono/AbstractChronology;->compareTo(Ljava/time/chrono/Chronology;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/time/chrono/Chronology;)I
    .locals 2

    invoke-virtual {p0}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v2, p1, Ljava/time/chrono/AbstractChronology;

    if-eqz v2, :cond_2

    check-cast p1, Ljava/time/chrono/AbstractChronology;

    invoke-virtual {p0, p1}, Ljava/time/chrono/AbstractChronology;->compareTo(Ljava/time/chrono/Chronology;)I

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/time/chrono/AbstractChronology;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method resolveAligned(Ljava/time/chrono/ChronoLocalDate;JJJ)Ljava/time/chrono/ChronoLocalDate;
    .locals 8

    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x7

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, p2, p3, v1}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v1, p4, p5, v2}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    cmp-long v1, p6, v4

    if-lez v1, :cond_1

    sub-long v2, p6, v6

    div-long/2addr v2, v4

    sget-object v1, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    sub-long v2, p6, v6

    rem-long/2addr v2, v4

    add-long p6, v2, v6

    :cond_0
    :goto_0
    long-to-int v1, p6

    invoke-static {v1}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v1

    invoke-static {v1}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :cond_1
    cmp-long v1, p6, v6

    if-gez v1, :cond_0

    invoke-static {p6, p7, v4, v5}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v2

    div-long/2addr v2, v4

    sget-object v1, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    const-wide/16 v2, 0x6

    add-long/2addr v2, p6

    rem-long/2addr v2, v4

    add-long p6, v2, v6

    goto :goto_0
.end method

.method public resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v1, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/AbstractChronology;->dateEpochDay(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveProlepticMonth(Ljava/util/Map;Ljava/time/format/ResolverStyle;)V

    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveYearOfEra(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveYMD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :cond_2
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveYMAA(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :cond_3
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveYMAD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :cond_4
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveYD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :cond_5
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveYAA(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :cond_6
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveYAD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :cond_7
    return-object v2
.end method

.method resolveProlepticMonth(Ljava/util/Map;Ljava/time/format/ResolverStyle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")V"
        }
    .end annotation

    sget-object v2, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_1

    sget-object v2, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq p2, v2, :cond_0

    sget-object v2, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_0
    invoke-virtual {p0}, Ljava/time/chrono/AbstractChronology;->dateNow()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    const-wide/16 v4, 0x1

    invoke-interface {v2, v3, v4, v5}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v3}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, p1, v2, v4, v5}, Ljava/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v3}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, p1, v2, v4, v5}, Ljava/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    :cond_1
    return-void
.end method

.method resolveYAA(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    sget-object v8, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v8}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v9

    sget-object v8, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sget-object v8, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v9, v10, v11, v8}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v3

    sget-object v8, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne p2, v8, :cond_0

    sget-object v8, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v6

    sget-object v8, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v4

    const/4 v8, 0x1

    invoke-virtual {p0, v3, v8}, Ljava/time/chrono/AbstractChronology;->dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v8

    sget-object v9, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v8, v6, v7, v9}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v8

    sget-object v9, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v8, v4, v5, v9}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v8

    return-object v8

    :cond_0
    sget-object v8, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v8}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v9

    sget-object v8, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sget-object v8, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v9, v10, v11, v8}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v1

    sget-object v8, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v8}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v9

    sget-object v8, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sget-object v8, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v9, v10, v11, v8}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    const/4 v8, 0x1

    invoke-virtual {p0, v3, v8}, Ljava/time/chrono/AbstractChronology;->dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v8

    add-int/lit8 v9, v1, -0x1

    mul-int/lit8 v9, v9, 0x7

    add-int/lit8 v10, v0, -0x1

    add-int/2addr v9, v10

    int-to-long v10, v9

    sget-object v9, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v8, v10, v11, v9}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    sget-object v8, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne p2, v8, :cond_1

    sget-object v8, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v8}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v8

    if-eq v8, v3, :cond_1

    new-instance v8, Ljava/time/DateTimeException;

    const-string/jumbo v9, "Strict mode rejected resolved date as it is in a different year"

    invoke-direct {v8, v9}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    return-object v2
.end method

.method resolveYAD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v2, v3, v0}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v11

    sget-object v0, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne p2, v0, :cond_0

    sget-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v4

    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v6

    const/4 v0, 0x1

    invoke-virtual {p0, v11, v0}, Ljava/time/chrono/AbstractChronology;->dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Ljava/time/chrono/AbstractChronology;->resolveAligned(Ljava/time/chrono/ChronoLocalDate;JJJ)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    sget-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v2, v3, v0}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v8

    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v2, v3, v0}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v10

    const/4 v0, 0x1

    invoke-virtual {p0, v11, v0}, Ljava/time/chrono/AbstractChronology;->dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    add-int/lit8 v1, v8, -0x1

    mul-int/lit8 v1, v1, 0x7

    int-to-long v2, v1

    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-static {v10}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v1

    invoke-static {v1}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v9

    sget-object v0, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne p2, v0, :cond_1

    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v9, v0}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    if-eq v0, v11, :cond_1

    new-instance v0, Ljava/time/DateTimeException;

    const-string/jumbo v1, "Strict mode rejected resolved date as it is in a different year"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v9
.end method

.method resolveYD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v4}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v5

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v5, v6, v7, v4}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v3

    sget-object v4, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne p2, v4, :cond_0

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v0

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/time/chrono/AbstractChronology;->dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    sget-object v5, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v4, v0, v1, v5}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    return-object v4

    :cond_0
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v4}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v5

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v5, v6, v7, v4}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v2

    invoke-virtual {p0, v3, v2}, Ljava/time/chrono/AbstractChronology;->dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    return-object v4
.end method

.method resolveYMAA(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    sget-object v13, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v14

    sget-object v13, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget-object v13, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1, v13}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v12

    sget-object v13, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_0

    sget-object v13, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x1

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v8

    sget-object v13, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x1

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v10

    sget-object v13, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x1

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v6

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v13

    sget-object v14, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v13, v8, v9, v14}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v13

    sget-object v14, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v13, v10, v11, v14}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v13

    sget-object v14, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v13, v6, v7, v14}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v13

    return-object v13

    :cond_0
    sget-object v13, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v14

    sget-object v13, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget-object v13, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1, v13}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v5

    sget-object v13, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v14

    sget-object v13, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget-object v13, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1, v13}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v3

    sget-object v13, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v14

    sget-object v13, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget-object v13, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1, v13}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v2

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v5, v13}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v13

    add-int/lit8 v14, v3, -0x1

    mul-int/lit8 v14, v14, 0x7

    add-int/lit8 v15, v2, -0x1

    add-int/2addr v14, v15

    int-to-long v14, v14

    sget-object v16, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface/range {v13 .. v16}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    sget-object v13, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_1

    sget-object v13, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v13}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v13

    if-eq v13, v5, :cond_1

    new-instance v13, Ljava/time/DateTimeException;

    const-string/jumbo v14, "Strict mode rejected resolved date as it is in a different month"

    invoke-direct {v13, v14}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_1
    return-object v4
.end method

.method resolveYMAD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v3

    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1, v2}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v14

    sget-object v2, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_0

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v16, 0x1

    move-wide/from16 v0, v16

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v4

    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v16, 0x1

    move-wide/from16 v0, v16

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v6

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v16, 0x1

    move-wide/from16 v0, v16

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v8

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2, v3}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v3

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Ljava/time/chrono/AbstractChronology;->resolveAligned(Ljava/time/chrono/ChronoLocalDate;JJJ)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    return-object v2

    :cond_0
    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v3

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1, v2}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v13

    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v3

    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1, v2}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v10

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v3

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1, v2}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v12

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13, v2}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    add-int/lit8 v3, v10, -0x1

    mul-int/lit8 v3, v3, 0x7

    int-to-long v0, v3

    move-wide/from16 v16, v0

    sget-object v3, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    move-wide/from16 v0, v16

    invoke-interface {v2, v0, v1, v3}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-static {v12}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v3

    invoke-static {v3}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v11

    sget-object v2, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_1

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v11, v2}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    if-eq v2, v13, :cond_1

    new-instance v2, Ljava/time/DateTimeException;

    const-string/jumbo v3, "Strict mode rejected resolved date as it is in a different month"

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    return-object v11
.end method

.method resolveYMD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    sget-object v11, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v12

    sget-object v11, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sget-object v11, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v12, v14, v15, v11}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v10

    sget-object v11, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_0

    sget-object v11, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v8

    sget-object v11, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v2

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v12}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v11

    sget-object v12, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v11, v8, v9, v12}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v11

    sget-object v12, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v11, v2, v3, v12}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v11

    return-object v11

    :cond_0
    sget-object v11, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v12

    sget-object v11, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sget-object v11, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v12, v14, v15, v11}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v7

    sget-object v11, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v5

    sget-object v11, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sget-object v11, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v5, v12, v13, v11}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v4

    sget-object v11, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v7, v4}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/ChronoLocalDate;
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    return-object v11

    :catch_0
    move-exception v6

    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v7, v11}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v11

    invoke-static {}, Ljava/time/temporal/TemporalAdjusters;->lastDayOfMonth()Ljava/time/temporal/TemporalAdjuster;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v11

    return-object v11

    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v7, v4}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v11

    return-object v11
.end method

.method resolveYearOfEra(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    const/4 v12, 0x0

    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_6

    sget-object v7, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    sget-object v7, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq p2, v7, :cond_1

    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v7}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v10, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v7, v8, v9, v10}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v5

    :goto_0
    if-eqz v1, :cond_2

    sget-object v7, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v7}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v10, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v7, v8, v9, v10}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v7

    invoke-virtual {p0, v7}, Ljava/time/chrono/AbstractChronology;->eraOf(I)Ljava/time/chrono/Era;

    move-result-object v2

    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2, v5}, Ljava/time/chrono/AbstractChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, p1, v7, v8, v9}, Ljava/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    :cond_0
    :goto_1
    return-object v12

    :cond_1
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toIntExact(J)I

    move-result v5

    goto :goto_0

    :cond_2
    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v7}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v8

    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v8, v10, v11, v7}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v4

    const/4 v7, 0x1

    invoke-virtual {p0, v4, v7}, Ljava/time/chrono/AbstractChronology;->dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->getEra()Ljava/time/chrono/Era;

    move-result-object v8

    invoke-virtual {p0, v8, v5}, Ljava/time/chrono/AbstractChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, p1, v7, v8, v9}, Ljava/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    goto :goto_1

    :cond_3
    sget-object v7, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne p2, v7, :cond_4

    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/time/chrono/AbstractChronology;->eras()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v8, v5

    invoke-virtual {p0, p1, v7, v8, v9}, Ljava/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    goto :goto_1

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/Era;

    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2, v5}, Ljava/time/chrono/AbstractChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, p1, v7, v8, v9}, Ljava/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    goto :goto_1

    :cond_6
    sget-object v7, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v7}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v8

    sget-object v7, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sget-object v7, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v8, v10, v11, v7}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    goto/16 :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/time/chrono/Ser;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method
