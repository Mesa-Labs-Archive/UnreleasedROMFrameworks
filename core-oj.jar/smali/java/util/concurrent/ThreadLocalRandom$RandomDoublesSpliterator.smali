.class final Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;
.super Ljava/lang/Object;
.source "ThreadLocalRandom.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ThreadLocalRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RandomDoublesSpliterator"
.end annotation


# instance fields
.field final bound:D

.field final fence:J

.field index:J

.field final origin:D


# direct methods
.method constructor <init>(JJDD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    iput-wide p3, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    iput-wide p5, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->origin:D

    iput-wide p7, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->bound:D

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x4540

    return v0
.end method

.method public estimateSize()J
    .locals 4

    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 12

    if-nez p1, :cond_0

    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    :cond_0
    iget-wide v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    cmp-long v9, v4, v2

    if-gez v9, :cond_2

    iput-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    iget-wide v6, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->origin:D

    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->bound:D

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v8

    :cond_1
    invoke-virtual {v8, v6, v7, v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextDouble(DD)D

    move-result-wide v10

    invoke-interface {p1, v10, v11}, Ljava/util/function/DoubleConsumer;->accept(D)V

    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    cmp-long v9, v4, v2

    if-ltz v9, :cond_1

    :cond_2
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 10

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v4

    iget-wide v6, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->origin:D

    iget-wide v8, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->bound:D

    invoke-virtual {v4, v6, v7, v8, v9}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextDouble(DD)D

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Ljava/util/function/DoubleConsumer;->accept(D)V

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    const/4 v4, 0x1

    return v4

    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfDouble;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;
    .locals 10

    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    add-long/2addr v0, v2

    const/4 v6, 0x1

    ushr-long v4, v0, v6

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    iput-wide v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    iget-wide v6, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->origin:D

    iget-wide v8, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->bound:D

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    goto :goto_0
.end method
