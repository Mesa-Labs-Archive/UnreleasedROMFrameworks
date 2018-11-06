.class final Ljava/util/LinkedHashMap$LinkedEntrySet;
.super Ljava/util/AbstractSet;
.source "LinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LinkedEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/LinkedHashMap;


# direct methods
.method constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 0

    iput-object p1, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x0

    instance-of v4, p1, Ljava/util/Map$Entry;

    if-nez v4, :cond_0

    return v3

    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/util/LinkedHashMap;->hash(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5, v2}, Ljava/util/LinkedHashMap;->getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/HashMap$Node;->equals(Ljava/lang/Object;)Z

    move-result v3

    :cond_1
    return v3
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget v1, v2, Ljava/util/LinkedHashMap;->modCount:I

    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v2, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget v2, v2, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v1, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget v2, v2, Ljava/util/LinkedHashMap;->modCount:I

    if-eq v2, v1, :cond_2

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    :cond_2
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntryIterator;

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap$LinkedEntryIterator;-><init>(Ljava/util/LinkedHashMap;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    move-object v6, p1

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/util/LinkedHashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/LinkedHashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return v4

    :cond_0
    move v4, v7

    goto :goto_0

    :cond_1
    return v7
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget v0, v0, Ljava/util/LinkedHashMap;->size:I

    return v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    const/16 v0, 0x51

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
