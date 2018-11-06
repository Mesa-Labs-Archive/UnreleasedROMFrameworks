.class final synthetic Ljava/util/stream/-$Lambda$aRB2Ve9yTNaLYumrLKKo_GKLlhc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/stream/Node$OfDouble;

    check-cast p2, Ljava/util/stream/Node$OfDouble;

    invoke-static {p1, p2}, Ljava/util/stream/Nodes$CollectorTask$OfDouble;->-java_util_stream_Nodes$CollectorTask$OfDouble-mthref-1(Ljava/util/stream/Node$OfDouble;Ljava/util/stream/Node$OfDouble;)Ljava/util/stream/Node$OfDouble;

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

    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$aRB2Ve9yTNaLYumrLKKo_GKLlhc;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
