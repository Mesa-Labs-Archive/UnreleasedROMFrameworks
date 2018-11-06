.class final Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;
.super Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntrySpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator",
        "<TK;TV;>;",
        "Ljava/util/Spliterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;TK;I)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic lambda$-java_util_concurrent_ConcurrentSkipListMap$EntrySpliterator_136111(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x1115

    return v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    const/4 v6, 0x0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->fence:Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iput-object v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-static {v0, v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gtz v6, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v4, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v4, :cond_3

    if-eq v4, v1, :cond_3

    move-object v5, v4

    new-instance v6, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v6, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Ljava/util/Map$Entry;->comparingByKey(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/-$Lambda$maBT9lzzYgJpLy8T-HMyKdSOI8M;

    invoke-direct {v0}, Ljava/util/concurrent/-$Lambda$maBT9lzzYgJpLy8T-HMyKdSOI8M;-><init>()V

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    const/4 v7, 0x0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->fence:Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-static {v0, v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gtz v6, :cond_2

    const/4 v1, 0x0

    :cond_1
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    return v7

    :cond_2
    iget-object v4, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v4, :cond_3

    if-eq v4, v1, :cond_3

    iget-object v6, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iput-object v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v5, v4

    new-instance v6, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v6, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v6, 0x1

    return v6

    :cond_3
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->trySplit()Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->comparator:Ljava/util/Comparator;

    iget-object v8, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->fence:Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eqz v3, :cond_3

    iget-object v7, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    if-eqz v7, :cond_3

    iget-object v10, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    :goto_0
    if-eqz v10, :cond_3

    iget-object v11, v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-eqz v11, :cond_2

    iget-object v6, v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eqz v6, :cond_2

    iget-object v9, v6, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eqz v9, :cond_2

    iget-object v0, v9, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v4, v9, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    if-eqz v4, :cond_2

    invoke-static {v1, v4, v7}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_2

    if-eqz v8, :cond_0

    invoke-static {v1, v4, v8}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    :cond_0
    iput-object v9, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v2, v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    iget-object v0, v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-eqz v0, :cond_1

    :goto_1
    iput-object v11, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    iget v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->est:I

    iget v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->est:I

    ushr-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    iput v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->est:I

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;

    iget v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->est:I

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;I)V

    return-object v0

    :cond_1
    iget-object v11, v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    goto :goto_1

    :cond_2
    iget-object v10, v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    iput-object v10, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    goto :goto_0

    :cond_3
    return-object v5
.end method
