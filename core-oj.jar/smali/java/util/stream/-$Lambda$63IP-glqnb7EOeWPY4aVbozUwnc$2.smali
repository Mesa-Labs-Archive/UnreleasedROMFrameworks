.class final synthetic Ljava/util/stream/-$Lambda$63IP-glqnb7EOeWPY4aVbozUwnc$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/stream/-$Lambda$63IP-glqnb7EOeWPY4aVbozUwnc$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Spliterator;

    invoke-static {v0}, Ljava/util/stream/AbstractPipeline;->lambda$-java_util_stream_AbstractPipeline_20439(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$Lambda$63IP-glqnb7EOeWPY4aVbozUwnc$2;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Ljava/util/stream/-$Lambda$63IP-glqnb7EOeWPY4aVbozUwnc$2;->$m$0()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
