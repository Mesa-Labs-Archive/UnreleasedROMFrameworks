.class final Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;
.super Ljava/lang/Object;
.source "LinkedTransferQueue.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedTransferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LTQSpliterator"
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

.field current:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field exhausted:Z

.field final synthetic this$0:Ljava/util/concurrent/LinkedTransferQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/LinkedTransferQueue;)V
    .locals 0

    iput-object p1, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iget-boolean v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    if-nez v3, :cond_4

    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->current:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-nez v1, :cond_1

    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v1

    if-eqz v1, :cond_4

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    :cond_2
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    iget-object v2, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne v1, v2, :cond_5

    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    iget-boolean v3, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-nez v3, :cond_2

    :cond_4
    return-void

    :cond_5
    move-object v1, v2

    goto :goto_0
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
    iget-boolean v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    if-nez v3, :cond_5

    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->current:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-nez v1, :cond_1

    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v1

    if-eqz v1, :cond_5

    :cond_1
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    iget-object v2, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne v1, v2, :cond_6

    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v1

    :goto_0
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    iget-boolean v3, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-nez v3, :cond_1

    :cond_3
    iput-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->current:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-nez v1, :cond_4

    iput-boolean v4, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v4

    :cond_5
    const/4 v3, 0x0

    return v3

    :cond_6
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

    iget v1, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->batch:I

    if-gtz v1, :cond_5

    const/4 v4, 0x1

    :goto_0
    iget-boolean v7, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    if-nez v7, :cond_7

    iget-object v5, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->current:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-nez v5, :cond_0

    iget-object v7, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v5

    if-eqz v5, :cond_7

    :cond_0
    iget-object v7, v5, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v7, :cond_7

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    :cond_1
    iget-object v2, v5, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    if-eq v2, v5, :cond_2

    aput-object v2, v0, v3

    if-eqz v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    iget-object v6, v5, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne v5, v6, :cond_8

    iget-object v7, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_3

    if-ge v3, v4, :cond_3

    iget-boolean v7, v5, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-nez v7, :cond_1

    :cond_3
    iput-object v5, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->current:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-nez v5, :cond_4

    const/4 v7, 0x1

    iput-boolean v7, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    :cond_4
    if-lez v3, :cond_7

    iput v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->batch:I

    const/16 v7, 0x1110

    invoke-static {v0, v9, v3, v7}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

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

    :cond_7
    return-object v8

    :cond_8
    move-object v5, v6

    goto :goto_1
.end method
