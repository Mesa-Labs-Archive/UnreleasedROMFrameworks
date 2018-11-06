.class final Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;
.super Ljava/lang/Object;
.source "LinkedBlockingDeque.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LBDSpliterator"
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

.field current:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field est:J

.field exhausted:Z

.field final queue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/LinkedBlockingDeque;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

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

    iget-wide v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

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
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v1, v3, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-boolean v4, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    if-nez v4, :cond_5

    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-nez v2, :cond_2

    :try_start_0
    iget-object v2, v3, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    :cond_2
    if-eqz v2, :cond_3

    iget-object v0, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    iget-object v2, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_4

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_4
    if-nez v2, :cond_1

    :cond_5
    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    const/4 v4, 0x1

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v1, v2, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-boolean v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    if-nez v3, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-nez v3, :cond_1

    iget-object v3, v2, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    iput-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    :cond_1
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    iget-object v0, v3, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    iget-object v3, v3, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    iput-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-nez v3, :cond_3

    iput-boolean v4, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v4

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    :cond_4
    const/4 v3, 0x0

    return v3
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

    iget-object v7, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingDeque;

    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->batch:I

    if-gtz v1, :cond_5

    const/4 v5, 0x1

    :goto_0
    iget-boolean v8, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    if-nez v8, :cond_8

    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-nez v2, :cond_0

    iget-object v2, v7, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-eqz v2, :cond_8

    :cond_0
    iget-object v8, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-eqz v8, :cond_8

    new-array v0, v5, [Ljava/lang/Object;

    iget-object v4, v7, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v3, 0x0

    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-nez v6, :cond_1

    :try_start_0
    iget-object v6, v7, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-eqz v6, :cond_3

    :cond_1
    iget-object v8, v6, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    aput-object v8, v0, v3

    if-eqz v8, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    iget-object v6, v6, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_3

    if-lt v3, v5, :cond_1

    :cond_3
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iput-object v6, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-nez v6, :cond_7

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

    const/4 v8, 0x1

    iput-boolean v8, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    :cond_4
    :goto_1
    if-lez v3, :cond_8

    iput v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->batch:I

    const/4 v8, 0x0

    const/16 v9, 0x1110

    invoke-static {v0, v8, v3, v9}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v8

    return-object v8

    :cond_5
    const/high16 v8, 0x2000000

    if-lt v1, v8, :cond_6

    const/high16 v5, 0x2000000

    goto :goto_0

    :cond_6
    add-int/lit8 v5, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v8

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v8

    :cond_7
    iget-wide v8, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

    int-to-long v10, v3

    sub-long/2addr v8, v10

    iput-wide v8, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

    goto :goto_1

    :cond_8
    const/4 v8, 0x0

    return-object v8
.end method
