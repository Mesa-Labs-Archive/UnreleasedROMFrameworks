.class final Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;
.super Ljava/lang/Object;
.source "ConcurrentLinkedQueue.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentLinkedQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CLQSpliterator"
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


# static fields
.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field batch:I

.field current:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field exhausted:Z

.field final queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x1110

    return v0
.end method

.method public estimateSize()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-boolean v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->exhausted:Z

    if-nez v4, :cond_4

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v1, :cond_1

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    if-eqz v1, :cond_4

    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->exhausted:Z

    :cond_2
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-ne v1, v2, :cond_5

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    if-nez v1, :cond_2

    :cond_4
    return-void

    :cond_5
    move-object v1, v2

    goto :goto_0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    const/4 v5, 0x1

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-boolean v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->exhausted:Z

    if-nez v4, :cond_4

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v1, :cond_1

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    if-eqz v1, :cond_4

    :cond_1
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-ne v1, v2, :cond_5

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    :goto_0
    if-nez v0, :cond_2

    if-nez v1, :cond_1

    :cond_2
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v1, :cond_3

    iput-boolean v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->exhausted:Z

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v5

    :cond_4
    const/4 v4, 0x0

    return v4

    :cond_5
    move-object v1, v2

    goto :goto_0
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->batch:I

    if-gtz v1, :cond_5

    const/4 v3, 0x1

    :goto_0
    iget-boolean v7, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->exhausted:Z

    if-nez v7, :cond_7

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v4, :cond_0

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v4

    if-eqz v4, :cond_7

    :cond_0
    iget-object v7, v4, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-eqz v7, :cond_7

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    :cond_1
    iget-object v7, v4, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    aput-object v7, v0, v2

    if-eqz v7, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-ne v4, v5, :cond_8

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_3

    if-lt v2, v3, :cond_1

    :cond_3
    iput-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v4, :cond_4

    const/4 v7, 0x1

    iput-boolean v7, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->exhausted:Z

    :cond_4
    if-lez v2, :cond_7

    iput v2, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->batch:I

    const/16 v7, 0x1110

    invoke-static {v0, v9, v2, v7}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v7

    return-object v7

    :cond_5
    const/high16 v7, 0x2000000

    if-lt v1, v7, :cond_6

    const/high16 v3, 0x2000000

    goto :goto_0

    :cond_6
    add-int/lit8 v3, v1, 0x1

    goto :goto_0

    :cond_7
    return-object v8

    :cond_8
    move-object v4, v5

    goto :goto_1
.end method
