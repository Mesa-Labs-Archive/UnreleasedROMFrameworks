.class public final Ljava/util/stream/Collectors;
.super Ljava/lang/Object;
.source "Collectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Collectors$CollectorImpl;,
        Ljava/util/stream/Collectors$Partition;
    }
.end annotation


# static fields
.field static final CH_CONCURRENT_ID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_CONCURRENT_NOID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_ID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_NOID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_UNORDERED_ID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -java_util_stream_Collectors-mthref-0(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic -java_util_stream_Collectors-mthref-1()Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-10(Ljava/util/StringJoiner;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-11(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->sum(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-12(Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collectors$1OptionalBox;
    .locals 1

    new-instance v0, Ljava/util/stream/Collectors$1OptionalBox;

    invoke-direct {v0, p0}, Ljava/util/stream/Collectors$1OptionalBox;-><init>(Ljava/util/function/BinaryOperator;)V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-13(Ljava/util/stream/Collectors$1OptionalBox;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/stream/Collectors$1OptionalBox;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -java_util_stream_Collectors-mthref-14()Ljava/util/Map;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-15()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-16()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-17()Ljava/util/Map;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-18()Ljava/util/Map;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-19()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-2(Ljava/util/List;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic -java_util_stream_Collectors-mthref-20()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-21()Ljava/util/IntSummaryStatistics;
    .locals 1

    new-instance v0, Ljava/util/IntSummaryStatistics;

    invoke-direct {v0}, Ljava/util/IntSummaryStatistics;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-22()Ljava/util/LongSummaryStatistics;
    .locals 1

    new-instance v0, Ljava/util/LongSummaryStatistics;

    invoke-direct {v0}, Ljava/util/LongSummaryStatistics;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-23()Ljava/util/DoubleSummaryStatistics;
    .locals 1

    new-instance v0, Ljava/util/DoubleSummaryStatistics;

    invoke-direct {v0}, Ljava/util/DoubleSummaryStatistics;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-3()Ljava/util/Set;
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-4(Ljava/util/Set;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic -java_util_stream_Collectors-mthref-5()Ljava/lang/StringBuilder;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-6(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic -java_util_stream_Collectors-mthref-7(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-8(Ljava/util/StringJoiner;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method static synthetic -java_util_stream_Collectors-mthref-9(Ljava/util/StringJoiner;Ljava/util/StringJoiner;)Ljava/util/StringJoiner;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->merge(Ljava/util/StringJoiner;)Ljava/util/StringJoiner;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap0()Ljava/util/function/Function;
    .locals 1

    invoke-static {}, Ljava/util/stream/Collectors;->castingIdentity()Ljava/util/function/Function;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    sget-object v1, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    sget-object v2, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    sget-object v0, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    sget-object v1, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava/util/stream/Collectors;->CH_CONCURRENT_NOID:Ljava/util/Set;

    sget-object v0, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    sget-object v0, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    sget-object v1, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava/util/stream/Collectors;->CH_UNORDERED_ID:Ljava/util/Set;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static averagingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/Collector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToDoubleFunction",
            "<-TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$36;

    invoke-direct {v1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$36;-><init>()V

    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$55;

    invoke-direct {v2, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$55;-><init>(Ljava/lang/Object;)V

    new-instance v3, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$6;

    invoke-direct {v3}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$6;-><init>()V

    new-instance v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$23;

    invoke-direct {v4}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$23;-><init>()V

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static averagingInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToIntFunction",
            "<-TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$37;

    invoke-direct {v1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$37;-><init>()V

    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$56;

    invoke-direct {v2, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$56;-><init>(Ljava/lang/Object;)V

    new-instance v3, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$7;

    invoke-direct {v3}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$7;-><init>()V

    new-instance v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$24;

    invoke-direct {v4}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$24;-><init>()V

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static averagingLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/Collector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToLongFunction",
            "<-TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$38;

    invoke-direct {v1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$38;-><init>()V

    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$57;

    invoke-direct {v2, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$57;-><init>(Ljava/lang/Object;)V

    new-instance v3, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$8;

    invoke-direct {v3}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$8;-><init>()V

    new-instance v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$25;

    invoke-direct {v4}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$25;-><init>()V

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method private static boxSupplier(Ljava/lang/Object;)Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/function/Supplier",
            "<[TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$77;

    invoke-direct {v0, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$77;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static castingIdentity()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/Function",
            "<TI;TR;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$26;

    invoke-direct {v0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$26;-><init>()V

    return-object v0
.end method

.method public static collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "RR:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Collector",
            "<TT;TA;TR;>;",
            "Ljava/util/function/Function",
            "<TR;TRR;>;)",
            "Ljava/util/stream/Collector",
            "<TT;TA;TRR;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v5

    sget-object v0, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    :cond_0
    :goto_0
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    invoke-interface {p0}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0

    :cond_1
    invoke-static {v5}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v5

    sget-object v0, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v5, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    goto :goto_0
.end method

.method static computeFinalSum([D)D
    .locals 8

    const/4 v4, 0x0

    aget-wide v4, p0, v4

    const/4 v6, 0x1

    aget-wide v6, p0, v6

    add-double v2, v4, v6

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    aget-wide v0, p0, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public static counting()Ljava/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$27;

    invoke-direct {v1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$27;-><init>()V

    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$9;

    invoke-direct {v2}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$9;-><init>()V

    invoke-static {v0, v1, v2}, Ljava/util/stream/Collectors;->reducing(Ljava/lang/Object;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TK;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/List",
            "<TT;>;>;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map",
            "<TK;TD;>;>(",
            "Ljava/util/function/Function",
            "<-TT;+TK;>;",
            "Ljava/util/function/Supplier",
            "<TM;>;",
            "Ljava/util/stream/Collector",
            "<-TT;TA;TD;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*TM;>;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v8

    invoke-interface {p2}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v6

    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$83;

    invoke-direct {v2, p0, v8, v6}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$83;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Collectors;->mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;

    move-result-object v3

    move-object v9, p1

    invoke-interface {p2}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, p1, v2, v3, v1}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0

    :cond_0
    invoke-interface {p2}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v7

    new-instance v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$71;

    invoke-direct {v4, v7}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$71;-><init>(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TK;>;",
            "Ljava/util/stream/Collector",
            "<-TT;TA;TD;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/Map",
            "<TK;TD;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$39;

    invoke-direct {v0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$39;-><init>()V

    invoke-static {p0, v0, p1}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static groupingByConcurrent(Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TK;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;",
            "Ljava/util/List",
            "<TT;>;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$40;

    invoke-direct {v0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$40;-><init>()V

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->groupingByConcurrent(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static groupingByConcurrent(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TD;>;>(",
            "Ljava/util/function/Function",
            "<-TT;+TK;>;",
            "Ljava/util/function/Supplier",
            "<TM;>;",
            "Ljava/util/stream/Collector",
            "<-TT;TA;TD;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*TM;>;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v8

    invoke-interface {p2}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v6

    invoke-interface {p2}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Collectors;->mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;

    move-result-object v3

    move-object v9, p1

    invoke-interface {p2}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$84;

    invoke-direct {v2, p0, v8, v6}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$84;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-interface {p2}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    invoke-direct {v0, p1, v2, v3, v1}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0

    :cond_0
    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$85;

    invoke-direct {v2, p0, v8, v6}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$85;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v7

    new-instance v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$72;

    invoke-direct {v4, v7}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$72;-><init>(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v5, Ljava/util/stream/Collectors;->CH_CONCURRENT_NOID:Ljava/util/Set;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static groupingByConcurrent(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TK;>;",
            "Ljava/util/stream/Collector",
            "<-TT;TA;TD;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TD;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$41;

    invoke-direct {v0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$41;-><init>()V

    invoke-static {p0, v0, p1}, Ljava/util/stream/Collectors;->groupingByConcurrent(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static joining()Ljava/util/stream/Collector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Collector",
            "<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$42;

    invoke-direct {v1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$42;-><init>()V

    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;

    invoke-direct {v2}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;-><init>()V

    new-instance v3, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$10;

    invoke-direct {v3}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$10;-><init>()V

    new-instance v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$28;

    invoke-direct {v4}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$28;-><init>()V

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/stream/Collector",
            "<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/stream/Collector",
            "<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$88;

    invoke-direct {v1, p0, p1, p2}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$88;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;

    invoke-direct {v2}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;-><init>()V

    new-instance v3, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$11;

    invoke-direct {v3}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$11;-><init>()V

    new-instance v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$29;

    invoke-direct {v4}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$29;-><init>()V

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_10371(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_10963(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_12527(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/StringJoiner;
    .locals 1

    new-instance v0, Ljava/util/StringJoiner;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_13304(Ljava/util/function/BinaryOperator;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 4

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3, p0}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method static synthetic lambda$-java_util_stream_Collectors_15131(Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_17830(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_19768()[I
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_19802(Ljava/util/function/ToIntFunction;[ILjava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_19863([I[I)[I
    .locals 3

    const/4 v2, 0x0

    aget v0, p0, v2

    aget v1, p1, v2

    add-int/2addr v0, v1

    aput v0, p0, v2

    return-object p0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_19918([I)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    aget v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_20488()[J
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_20523(Ljava/util/function/ToLongFunction;[JLjava/lang/Object;)V
    .locals 6

    const/4 v0, 0x0

    aget-wide v2, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v4

    add-long/2addr v2, v4

    aput-wide v2, p1, v0

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_20585([J[J)[J
    .locals 5

    const/4 v4, 0x0

    aget-wide v0, p0, v4

    aget-wide v2, p1, v4

    add-long/2addr v0, v2

    aput-wide v0, p0, v4

    return-object p0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_20640([J)Ljava/lang/Long;
    .locals 2

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_22029()[D
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_22066(Ljava/util/function/ToDoubleFunction;[DLjava/lang/Object;)V
    .locals 6

    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x2

    aget-wide v2, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v4

    add-double/2addr v2, v4

    aput-wide v2, p1, v0

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_22206([D[D)[D
    .locals 5

    const/4 v4, 0x2

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    aget-wide v0, p0, v4

    aget-wide v2, p1, v4

    add-double/2addr v0, v2

    aput-wide v0, p0, v4

    const/4 v0, 0x1

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_22374([D)Ljava/lang/Double;
    .locals 2

    invoke-static {p0}, Ljava/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_24382()[J
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_24417(Ljava/util/function/ToIntFunction;[JLjava/lang/Object;)V
    .locals 6

    const/4 v0, 0x0

    aget-wide v2, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    aput-wide v2, p1, v0

    const/4 v0, 0x1

    aget-wide v2, p1, v0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    aput-wide v2, p1, v0

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_24486([J[J)[J
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    aget-wide v0, p0, v4

    aget-wide v2, p1, v4

    add-long/2addr v0, v2

    aput-wide v0, p0, v4

    aget-wide v0, p0, v5

    aget-wide v2, p1, v5

    add-long/2addr v0, v2

    aput-wide v0, p0, v5

    return-object p0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_24555([J)Ljava/lang/Double;
    .locals 5

    const/4 v4, 0x1

    aget-wide v0, p0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    long-to-double v0, v0

    aget-wide v2, p0, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_25178()[J
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_25213(Ljava/util/function/ToLongFunction;[JLjava/lang/Object;)V
    .locals 6

    const/4 v0, 0x0

    aget-wide v2, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v4

    add-long/2addr v2, v4

    aput-wide v2, p1, v0

    const/4 v0, 0x1

    aget-wide v2, p1, v0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    aput-wide v2, p1, v0

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_25283([J[J)[J
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    aget-wide v0, p0, v4

    aget-wide v2, p1, v4

    add-long/2addr v0, v2

    aput-wide v0, p0, v4

    aget-wide v0, p0, v5

    aget-wide v2, p1, v5

    add-long/2addr v0, v2

    aput-wide v0, p0, v5

    return-object p0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_25352([J)Ljava/lang/Double;
    .locals 5

    const/4 v4, 0x1

    aget-wide v0, p0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    long-to-double v0, v0

    aget-wide v2, p0, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_27029()[D
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_27066(Ljava/util/function/ToDoubleFunction;[DLjava/lang/Object;)V
    .locals 6

    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x2

    aget-wide v2, p1, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    aput-wide v2, p1, v0

    const/4 v0, 0x3

    aget-wide v2, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v4

    add-double/2addr v2, v4

    aput-wide v2, p1, v0

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_27185([D[D)[D
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x1

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    aget-wide v0, p0, v4

    aget-wide v2, p1, v4

    add-double/2addr v0, v2

    aput-wide v0, p0, v4

    aget-wide v0, p0, v5

    aget-wide v2, p1, v5

    add-double/2addr v0, v2

    aput-wide v0, p0, v5

    return-object p0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_27314([D)Ljava/lang/Double;
    .locals 5

    const/4 v4, 0x2

    const-wide/16 v0, 0x0

    aget-wide v2, p0, v4

    cmpl-double v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v0

    aget-wide v2, p0, v4

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_28557(Ljava/util/function/BinaryOperator;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    aget-object v0, p1, v1

    invoke-interface {p0, v0, p2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p1, v1

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_28614(Ljava/util/function/BinaryOperator;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    aget-object v0, p1, v2

    aget-object v1, p2, v2

    invoke-interface {p0, v0, v1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p1, v2

    return-object p1
.end method

.method static synthetic lambda$-java_util_stream_Collectors_28684([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    aget-object v0, p0, v0

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_28841(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_30747(Ljava/util/stream/Collectors$1OptionalBox;Ljava/util/stream/Collectors$1OptionalBox;)Ljava/util/stream/Collectors$1OptionalBox;
    .locals 1

    iget-boolean v0, p1, Ljava/util/stream/Collectors$1OptionalBox;->present:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Ljava/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/util/stream/Collectors$1OptionalBox;->accept(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_30822(Ljava/util/stream/Collectors$1OptionalBox;)Ljava/util/Optional;
    .locals 1

    iget-object v0, p0, Ljava/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_32880(Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    aget-object v0, p2, v2

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p2, v2

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_32951(Ljava/util/function/BinaryOperator;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    aget-object v0, p1, v2

    aget-object v1, p2, v2

    invoke-interface {p0, v0, v1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p1, v2

    return-object p1
.end method

.method static synthetic lambda$-java_util_stream_Collectors_33021([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    aget-object v0, p0, v0

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_40369(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 4

    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "element cannot be mapped to a null key"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$73;

    invoke-direct {v2, p1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$73;-><init>(Ljava/lang/Object;)V

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_40537(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_41242(Ljava/util/function/Function;Ljava/util/Map;)Ljava/util/Map;
    .locals 2

    new-instance v1, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$65;

    invoke-direct {v1, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$65;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->replaceAll(Ljava/util/function/BiFunction;)V

    move-object v0, p1

    return-object p1
.end method

.method static synthetic lambda$-java_util_stream_Collectors_41300(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_48670(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .locals 4

    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "element cannot be mapped to a null key"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$74;

    invoke-direct {v2, p1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$74;-><init>(Ljava/lang/Object;)V

    invoke-interface {p3, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1, p4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_48852(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_49016(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .locals 4

    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "element cannot be mapped to a null key"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$75;

    invoke-direct {v2, p1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$75;-><init>(Ljava/lang/Object;)V

    invoke-interface {p3, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-interface {p2, v1, p4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method static synthetic lambda$-java_util_stream_Collectors_49198(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_49796(Ljava/util/function/Function;Ljava/util/concurrent/ConcurrentMap;)Ljava/util/concurrent/ConcurrentMap;
    .locals 2

    new-instance v1, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$66;

    invoke-direct {v1, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$66;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ConcurrentMap;->replaceAll(Ljava/util/function/BiFunction;)V

    move-object v0, p1

    return-object p1
.end method

.method static synthetic lambda$-java_util_stream_Collectors_49854(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_52253(Ljava/util/function/BiConsumer;Ljava/util/function/Predicate;Ljava/util/stream/Collectors$Partition;Ljava/lang/Object;)V
    .locals 1

    invoke-interface {p1, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Ljava/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    :goto_0
    invoke-interface {p0, v0, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p2, Ljava/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_52471(Ljava/util/function/BinaryOperator;Ljava/util/stream/Collectors$Partition;Ljava/util/stream/Collectors$Partition;)Ljava/util/stream/Collectors$Partition;
    .locals 4

    new-instance v0, Ljava/util/stream/Collectors$Partition;

    iget-object v1, p1, Ljava/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    iget-object v2, p2, Ljava/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    invoke-interface {p0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Ljava/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    iget-object v3, p2, Ljava/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    invoke-interface {p0, v2, v3}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_52675(Ljava/util/stream/Collector;)Ljava/util/stream/Collectors$Partition;
    .locals 3

    new-instance v0, Ljava/util/stream/Collectors$Partition;

    invoke-interface {p0}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_53066(Ljava/util/stream/Collector;Ljava/util/stream/Collectors$Partition;)Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/stream/Collectors$Partition;

    invoke-interface {p0}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v1

    iget-object v2, p1, Ljava/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v2

    iget-object v3, p1, Ljava/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_5845(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Duplicate key %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_6048(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_62004(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 2

    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v0, v1, p2}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_70477(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .locals 2

    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v0, v1, p2}, Ljava/util/concurrent/ConcurrentMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_71492(Ljava/util/function/ToIntFunction;Ljava/util/IntSummaryStatistics;Ljava/lang/Object;)V
    .locals 1

    invoke-interface {p0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/IntSummaryStatistics;->accept(I)V

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_71550(Ljava/util/IntSummaryStatistics;Ljava/util/IntSummaryStatistics;)Ljava/util/IntSummaryStatistics;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/IntSummaryStatistics;->combine(Ljava/util/IntSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_72369(Ljava/util/function/ToLongFunction;Ljava/util/LongSummaryStatistics;Ljava/lang/Object;)V
    .locals 2

    invoke-interface {p0, p2}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/LongSummaryStatistics;->accept(J)V

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_72428(Ljava/util/LongSummaryStatistics;Ljava/util/LongSummaryStatistics;)Ljava/util/LongSummaryStatistics;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/LongSummaryStatistics;->combine(Ljava/util/LongSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_73255(Ljava/util/function/ToDoubleFunction;Ljava/util/DoubleSummaryStatistics;Ljava/lang/Object;)V
    .locals 2

    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/DoubleSummaryStatistics;->accept(D)V

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_73316(Ljava/util/DoubleSummaryStatistics;Ljava/util/DoubleSummaryStatistics;)Ljava/util/DoubleSummaryStatistics;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/DoubleSummaryStatistics;->combine(Ljava/util/DoubleSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_8700(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_9491(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method private static mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map",
            "<TK;TV;>;>(",
            "Ljava/util/function/BinaryOperator",
            "<TV;>;)",
            "Ljava/util/function/BinaryOperator",
            "<TM;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$67;

    invoke-direct {v0, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$67;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;",
            "Ljava/util/stream/Collector",
            "<-TU;TA;TR;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*TR;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v6

    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    invoke-interface {p1}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v1

    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$80;

    invoke-direct {v2, v6, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$80;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static maxBy(Ljava/util/Comparator;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/Optional",
            "<TT;>;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/function/BinaryOperator;->maxBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Collectors;->reducing(Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static minBy(Ljava/util/Comparator;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/Optional",
            "<TT;>;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/function/BinaryOperator;->minBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Collectors;->reducing(Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static partitioningBy(Ljava/util/function/Predicate;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate",
            "<-TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/util/List",
            "<TT;>;>;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/stream/Collectors;->partitioningBy(Ljava/util/function/Predicate;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static partitioningBy(Ljava/util/function/Predicate;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate",
            "<-TT;>;",
            "Ljava/util/stream/Collector",
            "<-TT;TA;TD;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Boolean;",
            "TD;>;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v6

    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$81;

    invoke-direct {v2, v6, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$81;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v7

    new-instance v3, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$68;

    invoke-direct {v3, v7}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$68;-><init>(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$78;

    invoke-direct {v1, p1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$78;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v5, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v5, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0

    :cond_0
    new-instance v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$76;

    invoke-direct {v4, p1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$76;-><init>(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static reducing(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/function/BinaryOperator",
            "<TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    invoke-static {p0}, Ljava/util/stream/Collectors;->boxSupplier(Ljava/lang/Object;)Ljava/util/function/Supplier;

    move-result-object v1

    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$58;

    invoke-direct {v2, p1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$58;-><init>(Ljava/lang/Object;)V

    new-instance v3, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$69;

    invoke-direct {v3, p1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$69;-><init>(Ljava/lang/Object;)V

    new-instance v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$30;

    invoke-direct {v4}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$30;-><init>()V

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static reducing(Ljava/lang/Object;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator",
            "<TU;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*TU;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    invoke-static {p0}, Ljava/util/stream/Collectors;->boxSupplier(Ljava/lang/Object;)Ljava/util/function/Supplier;

    move-result-object v1

    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$82;

    invoke-direct {v2, p2, p1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$82;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$70;

    invoke-direct {v3, p2}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$70;-><init>(Ljava/lang/Object;)V

    new-instance v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$31;

    invoke-direct {v4}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$31;-><init>()V

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static reducing(Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BinaryOperator",
            "<TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/Optional",
            "<TT;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$79;

    invoke-direct {v1, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$79;-><init>(Ljava/lang/Object;)V

    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$2;

    invoke-direct {v2}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$2;-><init>()V

    new-instance v3, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$12;

    invoke-direct {v3}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$12;-><init>()V

    new-instance v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$32;

    invoke-direct {v4}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$32;-><init>()V

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method static sumWithCompensation([DD)[D
    .locals 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    aget-wide v6, p0, v9

    sub-double v2, p1, v6

    aget-wide v0, p0, v8

    add-double v4, v0, v2

    sub-double v6, v4, v0

    sub-double/2addr v6, v2

    aput-wide v6, p0, v9

    aput-wide v4, p0, v8

    return-object p0
.end method

.method public static summarizingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToDoubleFunction",
            "<-TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/DoubleSummaryStatistics;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$43;

    invoke-direct {v1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$43;-><init>()V

    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$59;

    invoke-direct {v2, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$59;-><init>(Ljava/lang/Object;)V

    new-instance v3, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$13;

    invoke-direct {v3}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$13;-><init>()V

    sget-object v4, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summarizingInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToIntFunction",
            "<-TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/IntSummaryStatistics;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$44;

    invoke-direct {v1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$44;-><init>()V

    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$60;

    invoke-direct {v2, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$60;-><init>(Ljava/lang/Object;)V

    new-instance v3, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$14;

    invoke-direct {v3}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$14;-><init>()V

    sget-object v4, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summarizingLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToLongFunction",
            "<-TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/LongSummaryStatistics;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$45;

    invoke-direct {v1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$45;-><init>()V

    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$61;

    invoke-direct {v2, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$61;-><init>(Ljava/lang/Object;)V

    new-instance v3, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$15;

    invoke-direct {v3}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$15;-><init>()V

    sget-object v4, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/Collector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToDoubleFunction",
            "<-TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$46;

    invoke-direct {v1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$46;-><init>()V

    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$62;

    invoke-direct {v2, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$62;-><init>(Ljava/lang/Object;)V

    new-instance v3, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$16;

    invoke-direct {v3}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$16;-><init>()V

    new-instance v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$33;

    invoke-direct {v4}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$33;-><init>()V

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summingInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToIntFunction",
            "<-TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$47;

    invoke-direct {v1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$47;-><init>()V

    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$63;

    invoke-direct {v2, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$63;-><init>(Ljava/lang/Object;)V

    new-instance v3, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$17;

    invoke-direct {v3}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$17;-><init>()V

    new-instance v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$34;

    invoke-direct {v4}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$34;-><init>()V

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summingLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/Collector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToLongFunction",
            "<-TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$48;

    invoke-direct {v1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$48;-><init>()V

    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$64;

    invoke-direct {v2, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$64;-><init>(Ljava/lang/Object;)V

    new-instance v3, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$18;

    invoke-direct {v3}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$18;-><init>()V

    new-instance v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$35;

    invoke-direct {v4}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$35;-><init>()V

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method private static throwingMerger()Ljava/util/function/BinaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/BinaryOperator",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$19;

    invoke-direct {v0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$19;-><init>()V

    return-object v0
.end method

.method public static toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection",
            "<TT;>;>(",
            "Ljava/util/function/Supplier",
            "<TC;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*TC;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$3;

    invoke-direct {v1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$3;-><init>()V

    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$20;

    invoke-direct {v2}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$20;-><init>()V

    sget-object v3, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TK;>;",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TU;>;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/stream/Collectors;->throwingMerger()Ljava/util/function/BinaryOperator;

    move-result-object v0

    new-instance v1, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$49;

    invoke-direct {v1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$49;-><init>()V

    invoke-static {p0, p1, v0, v1}, Ljava/util/stream/Collectors;->toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TK;>;",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator",
            "<TU;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TU;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$50;

    invoke-direct {v0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$50;-><init>()V

    invoke-static {p0, p1, p2, v0}, Ljava/util/stream/Collectors;->toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TU;>;>(",
            "Ljava/util/function/Function",
            "<-TT;+TK;>;",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator",
            "<TU;>;",
            "Ljava/util/function/Supplier",
            "<TM;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*TM;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$86;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$86;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/stream/Collectors$CollectorImpl;

    invoke-static {p2}, Ljava/util/stream/Collectors;->mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;

    move-result-object v2

    sget-object v3, Ljava/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    invoke-direct {v1, p3, v0, v2, v3}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v1
.end method

.method public static toList()Ljava/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$51;

    invoke-direct {v1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$51;-><init>()V

    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$4;

    invoke-direct {v2}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$4;-><init>()V

    new-instance v3, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$21;

    invoke-direct {v3}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$21;-><init>()V

    sget-object v4, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TK;>;",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/Map",
            "<TK;TU;>;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/stream/Collectors;->throwingMerger()Ljava/util/function/BinaryOperator;

    move-result-object v0

    new-instance v1, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$52;

    invoke-direct {v1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$52;-><init>()V

    invoke-static {p0, p1, v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TK;>;",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator",
            "<TU;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/Map",
            "<TK;TU;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$53;

    invoke-direct {v0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$53;-><init>()V

    invoke-static {p0, p1, p2, v0}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map",
            "<TK;TU;>;>(",
            "Ljava/util/function/Function",
            "<-TT;+TK;>;",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator",
            "<TU;>;",
            "Ljava/util/function/Supplier",
            "<TM;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*TM;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$87;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$87;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/stream/Collectors$CollectorImpl;

    invoke-static {p2}, Ljava/util/stream/Collectors;->mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;

    move-result-object v2

    sget-object v3, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v1, p3, v0, v2, v3}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v1
.end method

.method public static toSet()Ljava/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$54;

    invoke-direct {v1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$54;-><init>()V

    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$5;

    invoke-direct {v2}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$5;-><init>()V

    new-instance v3, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$22;

    invoke-direct {v3}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$22;-><init>()V

    sget-object v4, Ljava/util/stream/Collectors;->CH_UNORDERED_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method
