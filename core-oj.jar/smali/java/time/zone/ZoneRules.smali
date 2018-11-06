.class public final Ljava/time/zone/ZoneRules;
.super Ljava/lang/Object;
.source "ZoneRules.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final EMPTY_LASTRULES:[Ljava/time/zone/ZoneOffsetTransitionRule;

.field private static final EMPTY_LDT_ARRAY:[Ljava/time/LocalDateTime;

.field private static final EMPTY_LONG_ARRAY:[J

.field private static final LAST_CACHED_YEAR:I = 0x834

.field private static final serialVersionUID:J = 0x2a3f985312278703L


# instance fields
.field private final lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

.field private final transient lastRulesCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/time/zone/ZoneOffsetTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final savingsInstantTransitions:[J

.field private final savingsLocalTransitions:[Ljava/time/LocalDateTime;

.field private final standardOffsets:[Ljava/time/ZoneOffset;

.field private final standardTransitions:[J

.field private final wallOffsets:[Ljava/time/ZoneOffset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [J

    sput-object v0, Ljava/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    new-array v0, v1, [Ljava/time/zone/ZoneOffsetTransitionRule;

    sput-object v0, Ljava/time/zone/ZoneRules;->EMPTY_LASTRULES:[Ljava/time/zone/ZoneOffsetTransitionRule;

    new-array v0, v1, [Ljava/time/LocalDateTime;

    sput-object v0, Ljava/time/zone/ZoneRules;->EMPTY_LDT_ARRAY:[Ljava/time/LocalDateTime;

    return-void
.end method

.method private constructor <init>(Ljava/time/ZoneOffset;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/time/ZoneOffset;

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    iget-object v0, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v0, Ljava/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    sget-object v0, Ljava/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    sget-object v0, Ljava/time/zone/ZoneRules;->EMPTY_LDT_ARRAY:[Ljava/time/LocalDateTime;

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    iget-object v0, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    sget-object v0, Ljava/time/zone/ZoneRules;->EMPTY_LASTRULES:[Ljava/time/zone/ZoneOffsetTransitionRule;

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    return-void
.end method

.method constructor <init>(Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/ZoneOffset;",
            "Ljava/time/ZoneOffset;",
            "Ljava/util/List",
            "<",
            "Ljava/time/zone/ZoneOffsetTransition;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/time/zone/ZoneOffsetTransition;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/time/zone/ZoneOffsetTransitionRule;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v5, p0, Ljava/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [J

    iput-object v5, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [Ljava/time/ZoneOffset;

    iput-object v5, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    iget-object v5, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    iget-object v6, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/time/zone/ZoneOffsetTransition;

    invoke-virtual {v5}, Ljava/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v8

    aput-wide v8, v6, v0

    iget-object v6, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    add-int/lit8 v7, v0, 0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/time/zone/ZoneOffsetTransition;

    invoke-virtual {v5}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v5

    aput-object v5, v6, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/zone/ZoneOffsetTransition;

    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/time/LocalDateTime;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/time/LocalDateTime;

    iput-object v5, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/time/ZoneOffset;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/time/ZoneOffset;

    iput-object v5, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [J

    iput-object v5, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    const/4 v0, 0x0

    :goto_3
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    iget-object v6, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/time/zone/ZoneOffsetTransition;

    invoke-virtual {v5}, Ljava/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v8

    aput-wide v8, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x10

    if-le v5, v6, :cond_4

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Too many transition rules"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/time/zone/ZoneOffsetTransitionRule;

    invoke-interface {p5, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/time/zone/ZoneOffsetTransitionRule;

    iput-object v5, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    return-void
.end method

.method private constructor <init>([J[Ljava/time/ZoneOffset;[J[Ljava/time/ZoneOffset;[Ljava/time/zone/ZoneOffsetTransitionRule;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v5, p0, Ljava/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    iput-object p1, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    iput-object p2, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    iput-object p3, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    iput-object p4, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    iput-object p5, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v5, p3

    if-nez v5, :cond_0

    sget-object v5, Ljava/time/zone/ZoneRules;->EMPTY_LDT_ARRAY:[Ljava/time/LocalDateTime;

    iput-object v5, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    :goto_0
    return-void

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_1
    array-length v5, p3

    if-ge v2, v5, :cond_2

    aget-object v1, p4, v2

    add-int/lit8 v5, v2, 0x1

    aget-object v0, p4, v5

    new-instance v4, Ljava/time/zone/ZoneOffsetTransition;

    aget-wide v6, p3, v2

    invoke-direct {v4, v6, v7, v1, v0}, Ljava/time/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/time/LocalDateTime;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/time/LocalDateTime;

    iput-object v5, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    goto :goto_0
.end method

.method private findOffsetInfo(Ljava/time/LocalDateTime;Ljava/time/zone/ZoneOffsetTransition;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v1

    return-object v1

    :cond_3
    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v1

    return-object v1

    :cond_4
    return-object p2
.end method

.method private findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;
    .locals 5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Ljava/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/time/zone/ZoneOffsetTransition;

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v4, v1

    new-array v2, v4, [Ljava/time/zone/ZoneOffsetTransition;

    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    aget-object v4, v1, v0

    invoke-virtual {v4, p1}, Ljava/time/zone/ZoneOffsetTransitionRule;->createTransition(I)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v4

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x834

    if-ge p1, v4, :cond_2

    iget-object v4, p0, Ljava/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v2
.end method

.method private findYear(JLjava/time/ZoneOffset;)I
    .locals 7

    invoke-virtual {p3}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    add-long v2, p1, v4

    const-wide/32 v4, 0x15180

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/LocalDate;->getYear()I

    move-result v4

    return v4
.end method

.method private getOffsetInfo(Ljava/time/LocalDateTime;)Ljava/lang/Object;
    .locals 11

    const/4 v8, 0x0

    iget-object v9, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v9, v9

    if-nez v9, :cond_0

    iget-object v9, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    aget-object v8, v9, v8

    return-object v8

    :cond_0
    iget-object v9, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v9, v9

    if-lez v9, :cond_4

    iget-object v9, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    iget-object v10, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    invoke-virtual {p1, v9}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v9

    invoke-direct {p0, v9}, Ljava/time/zone/ZoneRules;->findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v7

    const/4 v3, 0x0

    array-length v9, v7

    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v6, v7, v8

    invoke-direct {p0, p1, v6}, Ljava/time/zone/ZoneRules;->findOffsetInfo(Ljava/time/LocalDateTime;Ljava/time/zone/ZoneOffsetTransition;)Ljava/lang/Object;

    move-result-object v3

    instance-of v10, v3, Ljava/time/zone/ZoneOffsetTransition;

    if-nez v10, :cond_1

    invoke-virtual {v6}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    return-object v3

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    return-object v3

    :cond_4
    iget-object v9, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    invoke-static {v9, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    const/4 v9, -0x1

    if-ne v2, v9, :cond_5

    iget-object v9, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    aget-object v8, v9, v8

    return-object v8

    :cond_5
    if-gez v2, :cond_7

    neg-int v8, v2

    add-int/lit8 v2, v8, -0x2

    :cond_6
    :goto_1
    and-int/lit8 v8, v2, 0x1

    if-nez v8, :cond_9

    iget-object v8, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    aget-object v1, v8, v2

    iget-object v8, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    add-int/lit8 v9, v2, 0x1

    aget-object v0, v8, v9

    iget-object v8, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    div-int/lit8 v9, v2, 0x2

    aget-object v5, v8, v9

    iget-object v8, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    div-int/lit8 v9, v2, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-object v4, v8, v9

    invoke-virtual {v4}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v8

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v9

    if-le v8, v9, :cond_8

    new-instance v8, Ljava/time/zone/ZoneOffsetTransition;

    invoke-direct {v8, v1, v5, v4}, Ljava/time/zone/ZoneOffsetTransition;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v8

    :cond_7
    iget-object v8, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_6

    iget-object v8, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    aget-object v8, v8, v2

    iget-object v9, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    add-int/lit8 v10, v2, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    new-instance v8, Ljava/time/zone/ZoneOffsetTransition;

    invoke-direct {v8, v0, v5, v4}, Ljava/time/zone/ZoneOffsetTransition;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v8

    :cond_9
    iget-object v8, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    div-int/lit8 v9, v2, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    return-object v8
.end method

.method public static of(Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneRules;
    .locals 1

    const-string/jumbo v0, "offset"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/time/zone/ZoneRules;

    invoke-direct {v0, p0}, Ljava/time/zone/ZoneRules;-><init>(Ljava/time/ZoneOffset;)V

    return-object v0
.end method

.method public static of(Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/time/zone/ZoneRules;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/ZoneOffset;",
            "Ljava/time/ZoneOffset;",
            "Ljava/util/List",
            "<",
            "Ljava/time/zone/ZoneOffsetTransition;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/time/zone/ZoneOffsetTransition;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/time/zone/ZoneOffsetTransitionRule;",
            ">;)",
            "Ljava/time/zone/ZoneRules;"
        }
    .end annotation

    const-string/jumbo v0, "baseStandardOffset"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "baseWallOffset"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "standardOffsetTransitionList"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "transitionList"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "lastRules"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/time/zone/ZoneRules;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/time/zone/ZoneRules;-><init>(Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/zone/ZoneRules;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v9

    if-nez v9, :cond_0

    sget-object v1, Ljava/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v9, :cond_1

    invoke-static {p0}, Ljava/time/zone/Ser;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v10

    aput-wide v10, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    new-array v1, v9, [J

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v9, 0x1

    new-array v2, v0, [Ljava/time/ZoneOffset;

    const/4 v6, 0x0

    :goto_2
    array-length v0, v2

    if-ge v6, v0, :cond_2

    invoke-static {p0}, Ljava/time/zone/Ser;->readOffset(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v0

    aput-object v0, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v8

    if-nez v8, :cond_3

    sget-object v3, Ljava/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    :goto_3
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v8, :cond_4

    invoke-static {p0}, Ljava/time/zone/Ser;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v10

    aput-wide v10, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    new-array v3, v8, [J

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v8, 0x1

    new-array v4, v0, [Ljava/time/ZoneOffset;

    const/4 v6, 0x0

    :goto_5
    array-length v0, v4

    if-ge v6, v0, :cond_5

    invoke-static {p0}, Ljava/time/zone/Ser;->readOffset(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v0

    aput-object v0, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v7

    if-nez v7, :cond_6

    sget-object v5, Ljava/time/zone/ZoneRules;->EMPTY_LASTRULES:[Ljava/time/zone/ZoneOffsetTransitionRule;

    :goto_6
    const/4 v6, 0x0

    :goto_7
    if-ge v6, v7, :cond_7

    invoke-static {p0}, Ljava/time/zone/ZoneOffsetTransitionRule;->readExternal(Ljava/io/DataInput;)Ljava/time/zone/ZoneOffsetTransitionRule;

    move-result-object v0

    aput-object v0, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_6
    new-array v5, v7, [Ljava/time/zone/ZoneOffsetTransitionRule;

    goto :goto_6

    :cond_7
    new-instance v0, Ljava/time/zone/ZoneRules;

    invoke-direct/range {v0 .. v5}, Ljava/time/zone/ZoneRules;-><init>([J[Ljava/time/ZoneOffset;[J[Ljava/time/ZoneOffset;[Ljava/time/zone/ZoneOffsetTransitionRule;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/time/zone/Ser;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/time/zone/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Ljava/time/zone/ZoneRules;

    if-eqz v2, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/time/zone/ZoneRules;

    iget-object v2, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    iget-object v3, v0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    iget-object v3, v0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    iget-object v3, v0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    iget-object v3, v0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    iget-object v2, v0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public getDaylightSavings(Ljava/time/Instant;)Ljava/time/Duration;
    .locals 4

    iget-object v2, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v2, v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    return-object v2

    :cond_0
    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneRules;->getStandardOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v2

    return-object v2
.end method

.method public getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;
    .locals 10

    const/4 v8, 0x0

    iget-object v7, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v7, v7

    if-nez v7, :cond_0

    iget-object v7, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    aget-object v7, v7, v8

    return-object v7

    :cond_0
    invoke-virtual {p1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    iget-object v7, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v7, v7

    if-lez v7, :cond_3

    iget-object v7, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    iget-object v8, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget-wide v8, v7, v8

    cmp-long v7, v0, v8

    if-lez v7, :cond_3

    iget-object v7, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    iget-object v8, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    invoke-direct {p0, v0, v1, v7}, Ljava/time/zone/ZoneRules;->findYear(JLjava/time/ZoneOffset;)I

    move-result v6

    invoke-direct {p0, v6}, Ljava/time/zone/ZoneRules;->findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v7, v5

    if-ge v2, v7, :cond_2

    aget-object v4, v5, v2

    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v8

    cmp-long v7, v0, v8

    if-gez v7, :cond_1

    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v7

    return-object v7

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v7

    return-object v7

    :cond_3
    iget-object v7, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-static {v7, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    if-gez v3, :cond_4

    neg-int v7, v3

    add-int/lit8 v3, v7, -0x2

    :cond_4
    iget-object v7, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    add-int/lit8 v8, v3, 0x1

    aget-object v7, v7, v8

    return-object v7
.end method

.method public getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;
    .locals 2

    invoke-direct {p0, p1}, Ljava/time/zone/ZoneRules;->getOffsetInfo(Ljava/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/time/zone/ZoneOffsetTransition;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/time/zone/ZoneOffsetTransition;

    invoke-virtual {v0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v1

    return-object v1

    :cond_0
    check-cast v0, Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public getStandardOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v3, v3

    if-nez v3, :cond_0

    iget-object v3, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    aget-object v3, v3, v4

    return-object v3

    :cond_0
    invoke-virtual {p1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    iget-object v3, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    invoke-static {v3, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    if-gez v2, :cond_1

    neg-int v3, v2

    add-int/lit8 v2, v3, -0x2

    :cond_1
    iget-object v3, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    return-object v3
.end method

.method public getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;
    .locals 2

    invoke-direct {p0, p1}, Ljava/time/zone/ZoneRules;->getOffsetInfo(Ljava/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/time/zone/ZoneOffsetTransition;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/time/zone/ZoneOffsetTransition;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTransitionRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/zone/ZoneOffsetTransitionRule;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransitions()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/zone/ZoneOffsetTransition;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/time/zone/ZoneOffsetTransition;

    iget-object v3, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    aget-object v3, v3, v0

    iget-object v6, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    add-int/lit8 v7, v0, 0x1

    aget-object v6, v6, v7

    invoke-direct {v2, v4, v5, v3, v6}, Ljava/time/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getValidOffsets(Ljava/time/LocalDateTime;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalDateTime;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/time/ZoneOffset;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/time/zone/ZoneRules;->getOffsetInfo(Ljava/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/time/zone/ZoneOffsetTransition;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/time/zone/ZoneOffsetTransition;

    invoke-virtual {v0}, Ljava/time/zone/ZoneOffsetTransition;->getValidOffsets()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    check-cast v0, Ljava/time/ZoneOffset;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    iget-object v1, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isDaylightSavings(Ljava/time/Instant;)Z
    .locals 2

    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneRules;->getStandardOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFixedOffset()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v1, v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isValidOffset(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneRules;->getValidOffsets(Ljava/time/LocalDateTime;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public nextTransition(Ljava/time/Instant;)Ljava/time/zone/ZoneOffsetTransition;
    .locals 13

    const/4 v12, 0x0

    const/4 v7, 0x0

    iget-object v6, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v6, v6

    if-nez v6, :cond_0

    return-object v12

    :cond_0
    invoke-virtual {p1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    iget-object v6, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    iget-object v8, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget-wide v8, v6, v8

    cmp-long v6, v0, v8

    if-ltz v6, :cond_5

    iget-object v6, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v6, v6

    if-nez v6, :cond_1

    return-object v12

    :cond_1
    iget-object v6, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    iget-object v8, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget-object v6, v6, v8

    invoke-direct {p0, v0, v1, v6}, Ljava/time/zone/ZoneRules;->findYear(JLjava/time/ZoneOffset;)I

    move-result v5

    invoke-direct {p0, v5}, Ljava/time/zone/ZoneRules;->findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v4

    array-length v8, v4

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v3, v4, v6

    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v10

    cmp-long v9, v0, v10

    if-gez v9, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const v6, 0x3b9ac9ff

    if-ge v5, v6, :cond_4

    add-int/lit8 v6, v5, 0x1

    invoke-direct {p0, v6}, Ljava/time/zone/ZoneRules;->findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v4

    aget-object v6, v4, v7

    return-object v6

    :cond_4
    return-object v12

    :cond_5
    iget-object v6, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-static {v6, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    if-gez v2, :cond_6

    neg-int v6, v2

    add-int/lit8 v2, v6, -0x1

    :goto_1
    new-instance v6, Ljava/time/zone/ZoneOffsetTransition;

    iget-object v7, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    aget-wide v8, v7, v2

    iget-object v7, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    aget-object v7, v7, v2

    iget-object v10, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    add-int/lit8 v11, v2, 0x1

    aget-object v10, v10, v11

    invoke-direct {v6, v8, v9, v7, v10}, Ljava/time/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v6

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public previousTransition(Ljava/time/Instant;)Ljava/time/zone/ZoneOffsetTransition;
    .locals 15

    iget-object v10, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v10, v10

    if-nez v10, :cond_0

    const/4 v10, 0x0

    return-object v10

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Ljava/time/Instant;->getNano()I

    move-result v10

    if-lez v10, :cond_1

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v10, v0, v10

    if-gez v10, :cond_1

    const-wide/16 v10, 0x1

    add-long/2addr v0, v10

    :cond_1
    iget-object v10, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    iget-object v11, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    aget-wide v4, v10, v11

    iget-object v10, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v10, v10

    if-lez v10, :cond_4

    cmp-long v10, v0, v4

    if-lez v10, :cond_4

    iget-object v10, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    iget-object v11, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    aget-object v6, v10, v11

    invoke-direct {p0, v0, v1, v6}, Ljava/time/zone/ZoneRules;->findYear(JLjava/time/ZoneOffset;)I

    move-result v9

    invoke-direct {p0, v9}, Ljava/time/zone/ZoneRules;->findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v8

    array-length v10, v8

    add-int/lit8 v2, v10, -0x1

    :goto_0
    if-ltz v2, :cond_3

    aget-object v10, v8, v2

    invoke-virtual {v10}, Ljava/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v10

    cmp-long v10, v0, v10

    if-lez v10, :cond_2

    aget-object v10, v8, v2

    return-object v10

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v4, v5, v6}, Ljava/time/zone/ZoneRules;->findYear(JLjava/time/ZoneOffset;)I

    move-result v7

    add-int/lit8 v9, v9, -0x1

    if-le v9, v7, :cond_4

    invoke-direct {p0, v9}, Ljava/time/zone/ZoneRules;->findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v8

    array-length v10, v8

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v8, v10

    return-object v10

    :cond_4
    iget-object v10, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-static {v10, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    if-gez v3, :cond_5

    neg-int v10, v3

    add-int/lit8 v3, v10, -0x1

    :cond_5
    if-gtz v3, :cond_6

    const/4 v10, 0x0

    return-object v10

    :cond_6
    new-instance v10, Ljava/time/zone/ZoneOffsetTransition;

    iget-object v11, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    add-int/lit8 v12, v3, -0x1

    aget-wide v12, v11, v12

    iget-object v11, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    add-int/lit8 v14, v3, -0x1

    aget-object v11, v11, v14

    iget-object v14, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    aget-object v14, v14, v3

    invoke-direct {v10, v12, v13, v11, v14}, Ljava/time/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v10
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ZoneRules[currentStandardOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    iget-object v2, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    array-length v5, v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v6, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_0

    aget-wide v2, v6, v5

    invoke-static {v2, v3, p1}, Ljava/time/zone/Ser;->writeEpochSec(JLjava/io/DataOutput;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    array-length v7, v6

    move v5, v4

    :goto_1
    if-ge v5, v7, :cond_1

    aget-object v0, v6, v5

    invoke-static {v0, p1}, Ljava/time/zone/Ser;->writeOffset(Ljava/time/ZoneOffset;Ljava/io/DataOutput;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v5, v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v6, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v7, v6

    move v5, v4

    :goto_2
    if-ge v5, v7, :cond_2

    aget-wide v2, v6, v5

    invoke-static {v2, v3, p1}, Ljava/time/zone/Ser;->writeEpochSec(JLjava/io/DataOutput;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    iget-object v6, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    array-length v7, v6

    move v5, v4

    :goto_3
    if-ge v5, v7, :cond_3

    aget-object v0, v6, v5

    invoke-static {v0, p1}, Ljava/time/zone/Ser;->writeOffset(Ljava/time/ZoneOffset;Ljava/io/DataOutput;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    iget-object v5, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v5, v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeByte(I)V

    iget-object v5, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v6, v5

    :goto_4
    if-ge v4, v6, :cond_4

    aget-object v1, v5, v4

    invoke-virtual {v1, p1}, Ljava/time/zone/ZoneOffsetTransitionRule;->writeExternal(Ljava/io/DataOutput;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method
