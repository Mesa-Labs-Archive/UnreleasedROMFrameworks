.class public Ljava/util/LinkedHashMap;
.super Ljava/util/HashMap;
.source "LinkedHashMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/LinkedHashMap$LinkedEntryIterator;,
        Ljava/util/LinkedHashMap$LinkedEntrySet;,
        Ljava/util/LinkedHashMap$LinkedHashIterator;,
        Ljava/util/LinkedHashMap$LinkedHashMapEntry;,
        Ljava/util/LinkedHashMap$LinkedKeyIterator;,
        Ljava/util/LinkedHashMap$LinkedKeySet;,
        Ljava/util/LinkedHashMap$LinkedValueIterator;,
        Ljava/util/LinkedHashMap$LinkedValues;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x34c04e5c106cc0fbL


# instance fields
.field final accessOrder:Z

.field transient head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field transient tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    return-void
.end method

.method public constructor <init>(IFZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    iput-boolean p3, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->putMapEntries(Ljava/util/Map;Z)V

    return-void
.end method

.method private linkNodeLast(Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object p1, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    if-nez v0, :cond_0

    iput-object p1, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    :goto_0
    return-void

    :cond_0
    iput-object v0, p1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object p1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_0
.end method

.method private transferLinks(Ljava/util/LinkedHashMap$LinkedHashMapEntry;Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry",
            "<TK;TV;>;",
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    iget-object v1, p1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v1, p2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v0, p1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v0, p2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    if-nez v1, :cond_0

    iput-object p2, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    :goto_0
    if-nez v0, :cond_1

    iput-object p2, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    :goto_1
    return-void

    :cond_0
    iput-object p2, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_0

    :cond_1
    iput-object p2, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_1
.end method


# virtual methods
.method afterNodeAccess(Ljava/util/HashMap$Node;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v5, 0x0

    iget-boolean v4, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    if-eqz v4, :cond_0

    iget-object v2, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    if-eq v2, p1, :cond_0

    move-object v3, p1

    check-cast v3, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v1, v3, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v0, v3, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v5, v3, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    if-nez v1, :cond_1

    iput-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    :goto_0
    if-eqz v0, :cond_2

    iput-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    :goto_1
    if-nez v2, :cond_3

    iput-object v3, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    :goto_2
    iput-object v3, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget v4, p0, Ljava/util/LinkedHashMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/LinkedHashMap;->modCount:I

    :cond_0
    return-void

    :cond_1
    iput-object v0, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_0

    :cond_2
    move-object v2, v1

    goto :goto_1

    :cond_3
    iput-object v2, v3, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v3, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_2
.end method

.method afterNodeInsertion(Z)V
    .locals 7

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v6, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    if-eqz v6, :cond_0

    invoke-virtual {p0, v6}, Ljava/util/LinkedHashMap;->removeEldestEntry(Ljava/util/Map$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, v6, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->key:Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/LinkedHashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/LinkedHashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    :cond_0
    return-void
.end method

.method afterNodeRemoval(Ljava/util/HashMap$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v2, p1

    check-cast v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v1, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v0, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v3, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v3, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    if-nez v1, :cond_0

    iput-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    :goto_0
    if-nez v0, :cond_1

    iput-object v1, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    :goto_1
    return-void

    :cond_0
    iput-object v0, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_0

    :cond_1
    iput-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Ljava/util/HashMap;->clear()V

    iput-object v0, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    return-void
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    if-eq v1, p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public eldest()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/LinkedHashMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntrySet;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap$LinkedEntrySet;-><init>(Ljava/util/LinkedHashMap;)V

    iput-object v0, p0, Ljava/util/LinkedHashMap;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    iget v1, p0, Ljava/util/LinkedHashMap;->modCount:I

    iget-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    :goto_0
    iget v2, p0, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v2, v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->key:Ljava/lang/Object;

    iget-object v3, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_0

    :cond_1
    iget v2, p0, Ljava/util/LinkedHashMap;->modCount:I

    if-eq v2, v1, :cond_2

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    :cond_2
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/util/LinkedHashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1, p1}, Ljava/util/LinkedHashMap;->getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    iget-boolean v1, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    :cond_1
    iget-object v1, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    return-object v1
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/LinkedHashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1, p1}, Ljava/util/LinkedHashMap;->getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    iget-boolean v1, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    :cond_1
    iget-object v1, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    return-object v1
.end method

.method internalWriteEntries(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/LinkedHashMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap$LinkedKeySet;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap$LinkedKeySet;-><init>(Ljava/util/LinkedHashMap;)V

    iput-object v0, p0, Ljava/util/LinkedHashMap;->keySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method newNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    invoke-direct {p0, v0}, Ljava/util/LinkedHashMap;->linkNodeLast(Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V

    return-object v0
.end method

.method newTreeNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$TreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap$TreeNode;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/util/HashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    invoke-direct {p0, v0}, Ljava/util/LinkedHashMap;->linkNodeLast(Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V

    return-object v0
.end method

.method reinitialize()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Ljava/util/HashMap;->reinitialize()V

    iput-object v0, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    return-void
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    iget v1, p0, Ljava/util/LinkedHashMap;->modCount:I

    iget-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    :goto_0
    iget v2, p0, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v2, v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->key:Ljava/lang/Object;

    iget-object v3, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_0

    :cond_1
    iget v2, p0, Ljava/util/LinkedHashMap;->modCount:I

    if-eq v2, v1, :cond_2

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    :cond_2
    return-void
.end method

.method replacementNode(Ljava/util/HashMap$Node;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    new-instance v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget v2, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->hash:I

    iget-object v3, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->key:Ljava/lang/Object;

    iget-object v4, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4, p2}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    invoke-direct {p0, v0, v1}, Ljava/util/LinkedHashMap;->transferLinks(Ljava/util/LinkedHashMap$LinkedHashMapEntry;Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V

    return-object v1
.end method

.method replacementTreeNode(Ljava/util/HashMap$Node;Ljava/util/HashMap$Node;)Ljava/util/HashMap$TreeNode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    new-instance v1, Ljava/util/HashMap$TreeNode;

    iget v2, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->hash:I

    iget-object v3, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->key:Ljava/lang/Object;

    iget-object v4, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4, p2}, Ljava/util/HashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    invoke-direct {p0, v0, v1}, Ljava/util/LinkedHashMap;->transferLinks(Ljava/util/LinkedHashMap$LinkedHashMapEntry;Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V

    return-object v1
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/LinkedHashMap;->values:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap$LinkedValues;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap$LinkedValues;-><init>(Ljava/util/LinkedHashMap;)V

    iput-object v0, p0, Ljava/util/LinkedHashMap;->values:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
