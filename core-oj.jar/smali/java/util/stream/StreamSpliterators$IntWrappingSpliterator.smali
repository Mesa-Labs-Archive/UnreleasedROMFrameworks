.class final Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;
.super Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntWrappingSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator",
        "<TP_IN;",
        "Ljava/lang/Integer;",
        "Ljava/util/stream/SpinedBuffer$OfInt;",
        ">;",
        "Ljava/util/Spliterator$OfInt;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_StreamSpliterators$IntWrappingSpliterator-mthref-0(Ljava/util/stream/SpinedBuffer$OfInt;I)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->accept(I)V

    return-void
.end method

.method static synthetic -java_util_stream_StreamSpliterators$IntWrappingSpliterator-mthref-1(Ljava/util/function/IntConsumer;I)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method constructor <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)V

    return-void
.end method

.method constructor <init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/Spliterator",
            "<TP_IN;>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 3

    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->finished:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->init()V

    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$11;

    invoke-direct {v1, p1}, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$11;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v0, v1, v2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->finished:Z

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method initPartialTraversalState()V
    .locals 3

    new-instance v0, Ljava/util/stream/SpinedBuffer$OfInt;

    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer$OfInt;-><init>()V

    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$12;

    invoke-direct {v2, v0}, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$12;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/stream/PipelineHelper;->wrapSink(Ljava/util/stream/Sink;)Ljava/util/stream/Sink;

    move-result-object v1

    iput-object v1, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->bufferSink:Ljava/util/stream/Sink;

    new-instance v1, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$6;

    invoke-direct {v1, p0}, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$6;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->pusher:Ljava/util/function/BooleanSupplier;

    return-void
.end method

.method synthetic lambda$-java_util_stream_StreamSpliterators$IntWrappingSpliterator_12402()Z
    .locals 2

    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->bufferSink:Ljava/util/stream/Sink;

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->doAdvance()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    check-cast v1, Ljava/util/stream/SpinedBuffer$OfInt;

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->nextToConsume:J

    invoke-virtual {v1, v2, v3}, Ljava/util/stream/SpinedBuffer$OfInt;->get(J)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_0
    return v0
.end method

.method public trySplit()Ljava/util/Spliterator$OfInt;
    .locals 1

    invoke-super {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfInt;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method wrap(Ljava/util/Spliterator;)Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)",
            "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator",
            "<TP_IN;",
            "Ljava/lang/Integer;",
            "*>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;

    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    iget-boolean v2, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->isParallel:Z

    invoke-direct {v0, v1, p1, v2}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)V

    return-object v0
.end method
