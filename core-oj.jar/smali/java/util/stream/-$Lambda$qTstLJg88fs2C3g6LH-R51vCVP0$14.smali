.class final synthetic Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/IntSummaryStatistics;

    check-cast p2, Ljava/util/IntSummaryStatistics;

    invoke-static {p1, p2}, Ljava/util/stream/Collectors;->lambda$-java_util_stream_Collectors_71550(Ljava/util/IntSummaryStatistics;Ljava/util/IntSummaryStatistics;)Ljava/util/IntSummaryStatistics;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$14;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
