.class Ljava/util/Collections$CheckedNavigableMap;
.super Ljava/util/Collections$CheckedSortedMap;
.source "Collections.java"

# interfaces
.implements Ljava/util/NavigableMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckedNavigableMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$CheckedSortedMap",
        "<TK;TV;>;",
        "Ljava/util/NavigableMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4357691bf8b35350L


# instance fields
.field private final nm:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava/util/Collections$CheckedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)V

    iput-object p1, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    return-void
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v2, p1}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    :cond_0
    return-object v1
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections;->checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->checkedNavigableMap(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    :cond_0
    return-object v1
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v2, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    :cond_0
    return-object v1
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->checkedNavigableMap(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->checkedNavigableMap(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/Collections$CheckedNavigableMap;->headMap(Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v2, p1}, Ljava/util/NavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    :cond_0
    return-object v1
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/Collections$CheckedNavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Ljava/util/Collections$CheckedNavigableMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    :cond_0
    return-object v1
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v2, p1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    :cond_0
    return-object v1
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections;->checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, p2, v2}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->checkedNavigableMap(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->checkedNavigableMap(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/Collections$CheckedNavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->checkedNavigableMap(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->checkedNavigableMap(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/Collections$CheckedNavigableMap;->tailMap(Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method
