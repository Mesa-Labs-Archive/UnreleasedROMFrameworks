.class final synthetic Ljava/util/stream/-$Lambda$aRB2Ve9yTNaLYumrLKKo_GKLlhc$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/stream/Node;

    check-cast p2, Ljava/util/stream/Node;

    invoke-static {p1, p2}, Ljava/util/stream/Nodes$CollectorTask$OfRef;->-java_util_stream_Nodes$CollectorTask$OfRef-mthref-0(Ljava/util/stream/Node;Ljava/util/stream/Node;)Ljava/util/stream/Node;

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

    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$aRB2Ve9yTNaLYumrLKKo_GKLlhc$3;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
