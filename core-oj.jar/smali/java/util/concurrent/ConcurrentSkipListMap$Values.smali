.class final Ljava/util/concurrent/ConcurrentSkipListMap$Values;
.super Ljava/util/AbstractCollection;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final m:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    instance-of v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TV;>;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    instance-of v4, v4, Ljava/util/concurrent/ConcurrentSkipListMap;

    if-eqz v4, :cond_1

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v4, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->removeValueIf(Ljava/util/function/Predicate;)Z

    move-result v4

    return v4

    :cond_1
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v4, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v4}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    const/4 v2, 0x0

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->size()I

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    instance-of v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->valueSpliterator()Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->toList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->toList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
