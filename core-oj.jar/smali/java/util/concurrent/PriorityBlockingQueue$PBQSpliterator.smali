.class final Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;
.super Ljava/lang/Object;
.source "PriorityBlockingQueue.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/PriorityBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PBQSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field array:[Ljava/lang/Object;

.field fence:I

.field index:I

.field final queue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<TE;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    iput-object p2, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->array:[Ljava/lang/Object;

    iput p3, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    iput p4, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->fence:I

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x4140

    return v0
.end method

.method public estimateSize()J
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->array:[Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/PriorityBlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v3, v0

    iput v3, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->fence:I

    :cond_1
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->fence:I

    array-length v3, v0

    if-gt v1, v3, :cond_3

    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    if-ltz v2, :cond_3

    iput v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    if-ge v2, v1, :cond_3

    :cond_2
    aget-object v3, v0, v2

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_2

    :cond_3
    return-void
.end method

.method final getFence()I
    .locals 2

    iget v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->fence:I

    if-gez v0, :cond_0

    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->array:[Ljava/lang/Object;

    array-length v0, v1

    iput v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->fence:I

    :cond_0
    return v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->getFence()I

    move-result v1

    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    if-le v1, v2, :cond_1

    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    aget-object v0, v1, v2

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v1, 0x1

    return v1

    :cond_1
    return v3
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->trySplit()Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator",
            "<TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    add-int v3, v1, v0

    ushr-int/lit8 v2, v3, 0x1

    if-lt v1, v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;

    iget-object v4, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v5, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->array:[Ljava/lang/Object;

    iput v2, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    invoke-direct {v3, v4, v5, v1, v2}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;II)V

    goto :goto_0
.end method
