.class final synthetic Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo$13;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BiConsumer;

    invoke-static {v0, p1, p2}, Ljava/util/stream/IntPipeline;->lambda$-java_util_stream_IntPipeline_16667(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo$13;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo$13;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
