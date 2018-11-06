.class final Ljava/util/stream/StreamSpliterators$WrappingSpliterator;
.super Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
.source "StreamSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WrappingSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator",
        "<TP_IN;TP_OUT;",
        "Ljava/util/stream/SpinedBuffer",
        "<TP_OUT;>;>;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_StreamSpliterators$WrappingSpliterator-mthref-0(Ljava/util/stream/SpinedBuffer;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -java_util_stream_StreamSpliterators$WrappingSpliterator-mthref-1(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;",
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
            "<TP_OUT;>;",
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
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TP_OUT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->finished:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->init()V

    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$15;

    invoke-direct {v1, p1}, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$15;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v0, v1, v2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->finished:Z

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method initPartialTraversalState()V
    .locals 3

    new-instance v0, Ljava/util/stream/SpinedBuffer;

    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer;-><init>()V

    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$16;

    invoke-direct {v2, v0}, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$16;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/stream/PipelineHelper;->wrapSink(Ljava/util/stream/Sink;)Ljava/util/stream/Sink;

    move-result-object v1

    iput-object v1, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->bufferSink:Ljava/util/stream/Sink;

    new-instance v1, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$8;

    invoke-direct {v1, p0}, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$8;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->pusher:Ljava/util/function/BooleanSupplier;

    return-void
.end method

.method synthetic lambda$-java_util_stream_StreamSpliterators$WrappingSpliterator_10555()Z
    .locals 2

    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->bufferSink:Ljava/util/stream/Sink;

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TP_OUT;>;)Z"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->doAdvance()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    check-cast v1, Ljava/util/stream/SpinedBuffer;

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->nextToConsume:J

    invoke-virtual {v1, v2, v3}, Ljava/util/stream/SpinedBuffer;->get(J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method bridge synthetic wrap(Ljava/util/Spliterator;)Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->wrap(Ljava/util/Spliterator;)Ljava/util/stream/StreamSpliterators$WrappingSpliterator;

    move-result-object v0

    return-object v0
.end method

.method wrap(Ljava/util/Spliterator;)Ljava/util/stream/StreamSpliterators$WrappingSpliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)",
            "Ljava/util/stream/StreamSpliterators$WrappingSpliterator",
            "<TP_IN;TP_OUT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;

    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    iget-boolean v2, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->isParallel:Z

    invoke-direct {v0, v1, p1, v2}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)V

    return-object v0
.end method
