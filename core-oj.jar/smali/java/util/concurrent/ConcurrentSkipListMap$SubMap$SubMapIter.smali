.class abstract Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;
.super Ljava/lang/Object;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "SubMapIter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;",
        "Ljava/util/Spliterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final synthetic this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V
    .locals 5

    const/4 v4, 0x0

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v3, p1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    :cond_0
    iget-boolean v3, p1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-nez v3, :cond_2

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v3, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p1, v3, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v3

    if-nez v3, :cond_3

    iput-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_1

    :cond_3
    move-object v1, v2

    iput-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->nextValue:Ljava/lang/Object;

    goto :goto_1
.end method

.method private ascend()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-object v3, v3, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v3, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-nez v3, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v4, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooHigh(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    :cond_2
    move-object v1, v2

    iput-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->nextValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method private descend()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-object v3, v3, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-object v3, v3, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v4, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v3

    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-nez v3, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v4, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooLow(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    :cond_2
    move-object v1, v2

    iput-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->nextValue:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method final advance()V
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-boolean v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->descend()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->ascend()V

    goto :goto_0
.end method

.method public estimateSize()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
