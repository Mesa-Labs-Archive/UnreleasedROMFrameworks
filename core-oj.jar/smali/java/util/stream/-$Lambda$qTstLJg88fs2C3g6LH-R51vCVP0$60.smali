.class final synthetic Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$60;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$60;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/ToIntFunction;

    check-cast p1, Ljava/util/IntSummaryStatistics;

    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->lambda$-java_util_stream_Collectors_71492(Ljava/util/function/ToIntFunction;Ljava/util/IntSummaryStatistics;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$60;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$60;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
