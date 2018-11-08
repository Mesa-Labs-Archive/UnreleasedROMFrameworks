.class public abstract Ljava/time/zone/ZoneRulesProvider;
.super Ljava/lang/Object;
.source "ZoneRulesProvider.java"


# static fields
.field private static final PROVIDERS:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/time/zone/ZoneRulesProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final ZONES:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/zone/ZoneRulesProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v1, Ljava/time/zone/ZoneRulesProvider;->PROVIDERS:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x200

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v1, Ljava/time/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/time/zone/IcuZoneRulesProvider;

    invoke-direct {v0}, Ljava/time/zone/IcuZoneRulesProvider;-><init>()V

    invoke-static {v0}, Ljava/time/zone/ZoneRulesProvider;->registerProvider(Ljava/time/zone/ZoneRulesProvider;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableZoneIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Ljava/time/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static getProvider(Ljava/lang/String;)Ljava/time/zone/ZoneRulesProvider;
    .locals 4

    sget-object v1, Ljava/time/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/zone/ZoneRulesProvider;

    if-nez v0, :cond_1

    sget-object v1, Ljava/time/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/time/zone/ZoneRulesException;

    const-string/jumbo v2, "No time-zone data files registered"

    invoke-direct {v1, v2}, Ljava/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Ljava/time/zone/ZoneRulesException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown time-zone ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v0
.end method

.method public static getRules(Ljava/lang/String;Z)Ljava/time/zone/ZoneRules;
    .locals 1

    const-string/jumbo v0, "zoneId"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/time/zone/ZoneRulesProvider;->getProvider(Ljava/lang/String;)Ljava/time/zone/ZoneRulesProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/time/zone/ZoneRulesProvider;->provideRules(Ljava/lang/String;Z)Ljava/time/zone/ZoneRules;

    move-result-object v0

    return-object v0
.end method

.method public static getVersions(Ljava/lang/String;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/zone/ZoneRules;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "zoneId"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/time/zone/ZoneRulesProvider;->getProvider(Ljava/lang/String;)Ljava/time/zone/ZoneRulesProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/time/zone/ZoneRulesProvider;->provideVersions(Ljava/lang/String;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public static refresh()Z
    .locals 4

    const/4 v0, 0x0

    sget-object v3, Ljava/time/zone/ZoneRulesProvider;->PROVIDERS:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/zone/ZoneRulesProvider;

    invoke-virtual {v1}, Ljava/time/zone/ZoneRulesProvider;->provideRefresh()Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static registerProvider(Ljava/time/zone/ZoneRulesProvider;)V
    .locals 1

    const-string/jumbo v0, "provider"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/time/zone/ZoneRulesProvider;->registerProvider0(Ljava/time/zone/ZoneRulesProvider;)V

    sget-object v0, Ljava/time/zone/ZoneRulesProvider;->PROVIDERS:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static registerProvider0(Ljava/time/zone/ZoneRulesProvider;)V
    .locals 6

    invoke-virtual {p0}, Ljava/time/zone/ZoneRulesProvider;->provideZoneIds()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v3, "zoneId"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Ljava/time/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/zone/ZoneRulesProvider;

    if-eqz v0, :cond_0

    new-instance v3, Ljava/time/zone/ZoneRulesException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to register zone as one already registered with that ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", currently loading from provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    return-void
.end method


# virtual methods
.method protected provideRefresh()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract provideRules(Ljava/lang/String;Z)Ljava/time/zone/ZoneRules;
.end method

.method protected abstract provideVersions(Ljava/lang/String;)Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/zone/ZoneRules;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract provideZoneIds()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
