.class public Ljava/util/stream/DoublePipeline$Head;
.super Ljava/util/stream/DoublePipeline;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/DoublePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Head"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/DoublePipeline",
        "<TE_IN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Spliterator;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Double;",
            ">;IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/DoublePipeline;-><init>(Ljava/util/Spliterator;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Double;",
            ">;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/DoublePipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    return-void
.end method


# virtual methods
.method public forEach(Ljava/util/function/DoubleConsumer;)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/DoublePipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/stream/DoublePipeline$Head;->sourceStageSpliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/DoublePipeline;->-wrap0(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Ljava/util/stream/DoublePipeline;->forEach(Ljava/util/function/DoubleConsumer;)V

    goto :goto_0
.end method

.method public forEachOrdered(Ljava/util/function/DoubleConsumer;)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/DoublePipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/stream/DoublePipeline$Head;->sourceStageSpliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/DoublePipeline;->-wrap0(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Ljava/util/stream/DoublePipeline;->forEachOrdered(Ljava/util/function/DoubleConsumer;)V

    goto :goto_0
.end method

.method public final opIsStateful()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/stream/Sink",
            "<TE_IN;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
