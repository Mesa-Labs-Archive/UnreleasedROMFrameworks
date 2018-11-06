.class Ljava/util/concurrent/ArrayBlockingQueue$Itr;
.super Ljava/lang/Object;
.source "ArrayBlockingQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ArrayBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final DETACHED:I = -0x3

.field private static final NONE:I = -0x1

.field private static final REMOVED:I = -0x2


# instance fields
.field private cursor:I

.field private lastItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private lastRet:I

.field private nextIndex:I

.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private prevCycles:I

.field private prevTakeIndex:I

.field final synthetic this$0:Ljava/util/concurrent/ArrayBlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ArrayBlockingQueue;)V
    .locals 4

    const/4 v2, -0x1

    iput-object p1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    iget-object v0, p1, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-nez v2, :cond_0

    const/4 v2, -0x1

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    const/4 v2, -0x1

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    const/4 v2, -0x3

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget v1, p1, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    invoke-direct {p0, v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incCursor(I)I

    move-result v2

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    iget-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    invoke-direct {v2, p1, p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V

    iput-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    :goto_1
    iget-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    iget v2, v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_1
    :try_start_2
    iget-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->register(Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V

    iget-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->doSomeSweeping(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private detach()V
    .locals 2

    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    if-ltz v0, :cond_0

    const/4 v0, -0x3

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->doSomeSweeping(Z)V

    :cond_0
    return-void
.end method

.method private distance(III)I
    .locals 1

    sub-int v0, p1, p2

    if-gez v0, :cond_0

    add-int/2addr v0, p3

    :cond_0
    return v0
.end method

.method private incCursor(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v0, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    :cond_1
    return p1
.end method

.method private incorporateDequeues()V
    .locals 10

    const/4 v9, -0x2

    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v1, v1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    iget v0, v1, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v8, v1, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    iget v7, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I

    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    if-ne v0, v7, :cond_0

    if-eq v8, v3, :cond_4

    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v1, v1, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v6, v1

    sub-int v1, v0, v7

    mul-int/2addr v1, v6

    sub-int v2, v8, v3

    add-int/2addr v1, v2

    int-to-long v4, v1

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->invalidated(IIJI)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v9, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    :cond_1
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->invalidated(IIJI)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v9, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    :cond_2
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->invalidated(IIJI)Z

    move-result v1

    if-eqz v1, :cond_3

    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    :cond_3
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    if-gez v1, :cond_5

    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    if-gez v1, :cond_5

    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    if-gez v1, :cond_5

    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->detach()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I

    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    goto :goto_0
.end method

.method private invalidated(IIJI)Z
    .locals 5

    const/4 v1, 0x0

    if-gez p1, :cond_0

    return v1

    :cond_0
    sub-int v0, p1, p2

    if-gez v0, :cond_1

    add-int/2addr v0, p5

    :cond_1
    int-to-long v2, v0

    cmp-long v2, p3, v2

    if-lez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private noNext()V
    .locals 3

    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, v1, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incorporateDequeues()V

    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->detach()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->noNext()V

    const/4 v0, 0x0

    return v0
.end method

.method isDetached()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    if-nez v2, :cond_0

    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v1, v3, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incorporateDequeues()V

    :cond_1
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    if-ltz v0, :cond_2

    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    invoke-direct {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incCursor(I)I

    move-result v3

    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :cond_2
    const/4 v3, -0x1

    :try_start_1
    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public remove()V
    .locals 5

    const/4 v4, -0x1

    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v2, v3, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incorporateDequeues()V

    :cond_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    const/4 v3, -0x1

    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    if-ltz v1, :cond_4

    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->removeAt(I)V

    :cond_1
    :goto_0
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    if-gez v3, :cond_2

    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    if-gez v3, :cond_2

    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->detach()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_1

    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    :cond_4
    if-ne v1, v4, :cond_1

    :try_start_2
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method removedAt(I)Z
    .locals 13

    const/4 v12, -0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v8

    if-eqz v8, :cond_0

    return v9

    :cond_0
    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v6, v8, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v8, v8, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v2, v8

    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v8, v8, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    iget v8, v8, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    iget v11, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I

    sub-int v11, v8, v11

    if-ge p1, v6, :cond_4

    move v8, v9

    :goto_0
    add-int/2addr v8, v11

    mul-int/2addr v8, v2

    sub-int v11, p1, v4

    add-int v5, v8, v11

    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    if-ltz v0, :cond_1

    invoke-direct {p0, v0, v4, v2}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->distance(III)I

    move-result v7

    if-ne v7, v5, :cond_5

    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v8, v8, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    if-ne v0, v8, :cond_1

    const/4 v0, -0x1

    const/4 v8, -0x1

    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    :cond_1
    :goto_1
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    if-ltz v1, :cond_2

    invoke-direct {p0, v1, v4, v2}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->distance(III)I

    move-result v7

    if-ne v7, v5, :cond_6

    const/4 v1, -0x2

    iput v12, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    :cond_2
    :goto_2
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    if-ltz v3, :cond_3

    invoke-direct {p0, v3, v4, v2}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->distance(III)I

    move-result v7

    if-ne v7, v5, :cond_7

    const/4 v3, -0x2

    iput v12, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    :cond_3
    :goto_3
    if-gez v0, :cond_8

    if-gez v3, :cond_8

    if-gez v1, :cond_8

    const/4 v8, -0x3

    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    return v9

    :cond_4
    move v8, v10

    goto :goto_0

    :cond_5
    if-le v7, v5, :cond_1

    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->dec(I)I

    move-result v0

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    goto :goto_1

    :cond_6
    if-le v7, v5, :cond_2

    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v8, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->dec(I)I

    move-result v1

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    goto :goto_2

    :cond_7
    if-le v7, v5, :cond_3

    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v8, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->dec(I)I

    move-result v3

    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    goto :goto_3

    :cond_8
    return v10
.end method

.method shutdown()V
    .locals 2

    const/4 v1, -0x2

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    if-ltz v0, :cond_0

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    :cond_0
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    if-ltz v0, :cond_1

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    :cond_1
    const/4 v0, -0x3

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    return-void
.end method

.method takeIndexWrapped()Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    iget v0, v0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I

    sub-int/2addr v0, v1

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->shutdown()V

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
