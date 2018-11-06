.class final synthetic Ljava/util/stream/-$Lambda$aRB2Ve9yTNaLYumrLKKo_GKLlhc$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/stream/Node$OfLong;

    check-cast p2, Ljava/util/stream/Node$OfLong;

    invoke-static {p1, p2}, Ljava/util/stream/Nodes$CollectorTask$OfLong;->-java_util_stream_Nodes$CollectorTask$OfLong-mthref-1(Ljava/util/stream/Node$OfLong;Ljava/util/stream/Node$OfLong;)Ljava/util/stream/Node$OfLong;

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

    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$aRB2Ve9yTNaLYumrLKKo_GKLlhc$2;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
