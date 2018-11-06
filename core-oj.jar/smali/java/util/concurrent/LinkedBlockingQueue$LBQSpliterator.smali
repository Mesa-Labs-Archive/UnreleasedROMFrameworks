.class final Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;
.super Ljava/lang/Object;
.source "LinkedBlockingQueue.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LBQSpliterator"
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

.field current:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field est:J

.field exhausted:Z

.field final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

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

    iget-wide v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

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
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-boolean v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    if-nez v3, :cond_5

    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    if-nez v1, :cond_2

    :try_start_0
    iget-object v3, v2, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v1, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :cond_3
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    if-eqz v0, :cond_4

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_4
    if-nez v1, :cond_1

    :cond_5
    return-void

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    throw v3
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

    const/4 v3, 0x1

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-boolean v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    if-nez v2, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-nez v2, :cond_1

    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v2, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    :cond_1
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v2, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-nez v2, :cond_3

    iput-boolean v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v3

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    throw v2

    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    iget v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->batch:I

    if-gtz v1, :cond_5

    const/4 v4, 0x1

    :goto_0
    iget-boolean v7, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    if-nez v7, :cond_8

    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-nez v2, :cond_0

    iget-object v7, v6, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v2, v7, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-eqz v2, :cond_8

    :cond_0
    iget-object v7, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-eqz v7, :cond_8

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    if-nez v5, :cond_1

    :try_start_0
    iget-object v7, v6, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v5, v7, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-eqz v5, :cond_3

    :cond_1
    iget-object v7, v5, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    aput-object v7, v0, v3

    if-eqz v7, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    iget-object v5, v5, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    if-lt v3, v4, :cond_1

    :cond_3
    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    iput-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-nez v5, :cond_7

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    const/4 v7, 0x1

    iput-boolean v7, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    :cond_4
    :goto_1
    if-lez v3, :cond_8

    iput v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->batch:I

    const/4 v7, 0x0

    const/16 v8, 0x1110

    invoke-static {v0, v7, v3, v8}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v7

    return-object v7

    :cond_5
    const/high16 v7, 0x2000000

    if-lt v1, v7, :cond_6

    const/high16 v4, 0x2000000

    goto :goto_0

    :cond_6
    add-int/lit8 v4, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v7

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    throw v7

    :cond_7
    iget-wide v8, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    int-to-long v10, v3

    sub-long/2addr v8, v10

    iput-wide v8, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_4

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    goto :goto_1

    :cond_8
    const/4 v7, 0x0

    return-object v7
.end method
