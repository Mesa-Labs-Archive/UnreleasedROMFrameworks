.class public Ljava/util/concurrent/ConcurrentSkipListMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentNavigableMap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;,
        Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,
        Ljava/util/concurrent/ConcurrentSkipListMap$Index;,
        Ljava/util/concurrent/ConcurrentSkipListMap$Iter;,
        Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,
        Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$Node;,
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,
        Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$Values;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentNavigableMap",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final BASE_HEADER:Ljava/lang/Object;

.field private static final EQ:I = 0x1

.field private static final GT:I = 0x0

.field private static final HEAD:J

.field private static final LT:I = 0x2

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = -0x77b98a51f9eeb959L


# instance fields
.field final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private transient descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Values",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Ljava/util/concurrent/ConcurrentSkipListMap;->BASE_HEADER:Ljava/lang/Object;

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/ConcurrentSkipListMap;->U:Lsun/misc/Unsafe;

    :try_start_0
    sget-object v1, Ljava/util/concurrent/ConcurrentSkipListMap;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/ConcurrentSkipListMap;

    const-string/jumbo v3, "head"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ConcurrentSkipListMap;->HEAD:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

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

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/SortedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    invoke-interface {p1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->buildFromSorted(Ljava/util/SortedMap;)V

    return-void
.end method

.method private buildFromSorted(Ljava/util/SortedMap;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v16, Ljava/lang/NullPointerException;

    invoke-direct/range {v16 .. v16}, Ljava/lang/NullPointerException;-><init>()V

    throw v16

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v1, v3, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    iget v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v5, v0, :cond_1

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v12, v3

    iget v5, v3, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    :goto_1
    if-lez v5, :cond_2

    invoke-virtual {v11, v5, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v12, v12, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v13

    const/4 v9, 0x0

    const v16, -0x7fffffff

    and-int v16, v16, v13

    if-nez v16, :cond_5

    :cond_4
    add-int/lit8 v9, v9, 0x1

    ushr-int/lit8 v13, v13, 0x1

    and-int/lit8 v16, v13, 0x1

    if-nez v16, :cond_4

    iget v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v9, v0, :cond_5

    iget v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    move/from16 v16, v0

    add-int/lit8 v9, v16, 0x1

    :cond_5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    if-eqz v10, :cond_6

    if-nez v14, :cond_7

    :cond_6
    new-instance v16, Ljava/lang/NullPointerException;

    invoke-direct/range {v16 .. v16}, Ljava/lang/NullPointerException;-><init>()V

    throw v16

    :cond_7
    new-instance v15, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v15, v10, v14, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    iput-object v15, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v1, v15

    if-lez v9, :cond_3

    const/4 v6, 0x0

    const/4 v5, 0x1

    move-object v7, v6

    move-object v4, v3

    :goto_3
    if-gt v5, v9, :cond_b

    new-instance v6, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v6, v15, v7, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    iget v0, v4, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v5, v0, :cond_a

    new-instance v3, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v0, v4, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v3, v0, v4, v6, v5}, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;I)V

    :goto_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v5, v0, :cond_8

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object/from16 v0, v16

    iput-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    invoke-virtual {v11, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_5
    add-int/lit8 v5, v5, 0x1

    move-object v7, v6

    move-object v4, v3

    goto :goto_3

    :cond_8
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    iput-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    return-void

    :cond_a
    move-object v3, v4

    goto :goto_4

    :cond_b
    move-object v3, v4

    goto/16 :goto_2
.end method

.method private casHead(Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex",
            "<TK;TV;>;)Z"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentSkipListMap;->HEAD:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private clearIndexToFirst()V
    .locals 3

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    :cond_1
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    :cond_2
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v0, :cond_1

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v2, :cond_3

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tryReduceLevel()V

    :cond_3
    return-void
.end method

.method static final cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method private doGet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v8, 0x0

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    :cond_1
    :goto_0
    invoke-direct {p0, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    iget-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    :goto_1
    if-nez v4, :cond_3

    :cond_2
    return-object v8

    :cond_3
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v4, v7, :cond_1

    iget-object v5, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-nez v5, :cond_4

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0

    :cond_4
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v7, :cond_1

    if-eq v5, v4, :cond_1

    iget-object v7, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-static {v2, p1, v7}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_5

    move-object v6, v5

    return-object v5

    :cond_5
    if-ltz v1, :cond_2

    move-object v0, v4

    move-object v4, v3

    goto :goto_1
.end method

.method private doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v29, Ljava/lang/NullPointerException;

    invoke-direct/range {v29 .. v29}, Ljava/lang/NullPointerException;-><init>()V

    throw v29

    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v4

    iget-object v0, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object/from16 v17, v0

    :goto_1
    if-eqz v17, :cond_5

    move-object/from16 v0, v17

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v0, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object/from16 v29, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_1

    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    move-object/from16 v26, v0

    if-nez v26, :cond_2

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0

    :cond_2
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_1

    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v6, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_3

    move-object/from16 v4, v17

    move-object/from16 v17, v7

    goto :goto_1

    :cond_3
    if-nez v5, :cond_5

    if-nez p3, :cond_4

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1

    :cond_4
    move-object/from16 v27, v26

    return-object v26

    :cond_5
    new-instance v28, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v29

    if-eqz v29, :cond_1

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->nextSecondarySeed()I

    move-result v24

    const v29, -0x7fffffff

    and-int v29, v29, v24

    if-nez v29, :cond_a

    const/4 v15, 0x1

    :goto_2
    ushr-int/lit8 v24, v24, 0x1

    and-int/lit8 v29, v24, 0x1

    if-eqz v29, :cond_6

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget v0, v8, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v15, v0, :cond_7

    const/4 v9, 0x1

    move-object v11, v10

    :goto_3
    if-gt v9, v15, :cond_13

    new-instance v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v10, v0, v11, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    add-int/lit8 v9, v9, 0x1

    move-object v11, v10

    goto :goto_3

    :cond_7
    add-int/lit8 v15, v16, 0x1

    add-int/lit8 v29, v15, 0x1

    move/from16 v0, v29

    new-array v12, v0, [Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    const/4 v9, 0x1

    move-object v11, v10

    :goto_4
    if-gt v9, v15, :cond_8

    new-instance v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v10, v0, v11, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    aput-object v10, v12, v9

    add-int/lit8 v9, v9, 0x1

    move-object v11, v10

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget v0, v8, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-gt v15, v0, :cond_b

    move-object v10, v11

    :goto_5
    move v13, v15

    :cond_9
    iget v14, v8, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    move-object/from16 v22, v8

    iget-object v0, v8, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object/from16 v23, v0

    move-object/from16 v25, v10

    :goto_6
    if-eqz v22, :cond_a

    if-nez v25, :cond_d

    :cond_a
    :goto_7
    const/16 v29, 0x0

    return-object v29

    :cond_b
    move-object/from16 v18, v8

    iget-object v0, v8, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object/from16 v21, v0

    add-int/lit8 v14, v20, 0x1

    move-object/from16 v19, v18

    :goto_8
    if-gt v14, v15, :cond_c

    new-instance v18, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    aget-object v29, v12, v14

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3, v14}, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;I)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v19, v18

    goto :goto_8

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v8, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->casHead(Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z

    move-result v29

    if-eqz v29, :cond_8

    move-object/from16 v8, v19

    move/from16 v15, v20

    aget-object v10, v12, v20

    goto :goto_5

    :cond_d
    if-eqz v23, :cond_f

    move-object/from16 v0, v23

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v6, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    move-object/from16 v29, v0

    if-nez v29, :cond_e

    invoke-virtual/range {v22 .. v23}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v29

    if-eqz v29, :cond_9

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object/from16 v23, v0

    goto :goto_6

    :cond_e
    if-lez v5, :cond_f

    move-object/from16 v22, v23

    move-object/from16 v0, v23

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object/from16 v23, v0

    goto :goto_6

    :cond_f
    if-ne v14, v13, :cond_11

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->link(Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v29

    if-eqz v29, :cond_9

    move-object/from16 v0, v25

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    move-object/from16 v29, v0

    if-nez v29, :cond_10

    invoke-direct/range {p0 .. p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto/16 :goto_7

    :cond_10
    add-int/lit8 v13, v13, -0x1

    if-eqz v13, :cond_a

    :cond_11
    add-int/lit8 v14, v14, -0x1

    if-lt v14, v13, :cond_12

    if-ge v14, v15, :cond_12

    move-object/from16 v0, v25

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object/from16 v25, v0

    :cond_12
    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object/from16 v23, v0

    goto/16 :goto_6

    :cond_13
    move-object v10, v11

    goto/16 :goto_5
.end method

.method private doRemoveFirstEntry()Ljava/util/Map$Entry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v6, 0x0

    :cond_0
    :goto_0
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v0, v5, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-nez v2, :cond_1

    return-object v6

    :cond_1
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v5, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v2, v5, :cond_0

    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-nez v3, :cond_2

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v3, v6}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->appendMarker(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    :cond_4
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->clearIndexToFirst()V

    move-object v4, v3

    new-instance v5, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v6, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {v5, v6, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5
.end method

.method private doRemoveLastEntry()Ljava/util/Map$Entry;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v7, 0x0

    :cond_0
    :goto_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessorOfLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v7

    :cond_1
    if-eqz v1, :cond_4

    move-object v0, v3

    move-object v3, v1

    :cond_2
    iget-object v1, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v3, v6, :cond_0

    iget-object v4, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-nez v4, :cond_3

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0

    :cond_3
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v6, :cond_0

    if-ne v4, v3, :cond_1

    goto :goto_0

    :cond_4
    invoke-virtual {v3, v4, v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->appendMarker(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_7

    :cond_5
    invoke-direct {p0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    :cond_6
    :goto_1
    move-object v5, v4

    new-instance v6, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v6, v2, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    :cond_7
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-direct {p0, v2, v6}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v6, v6, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v6, :cond_6

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tryReduceLevel()V

    goto :goto_1
.end method

.method private findNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v7, 0x0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    :cond_1
    :goto_0
    invoke-direct {p0, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    iget-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    :goto_1
    if-nez v4, :cond_3

    :cond_2
    return-object v7

    :cond_3
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v4, v6, :cond_1

    iget-object v5, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-nez v5, :cond_4

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0

    :cond_4
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v6, :cond_1

    if-eq v5, v4, :cond_1

    iget-object v6, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-static {v2, p1, v6}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_5

    return-object v4

    :cond_5
    if-ltz v1, :cond_2

    move-object v0, v4

    move-object v4, v3

    goto :goto_1
.end method

.method private findPredecessor(Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v4, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    :goto_0
    if-eqz v4, :cond_2

    iget-object v2, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    iget-object v5, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-nez v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v4, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    goto :goto_0

    :cond_1
    invoke-static {p2, p1, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_2

    move-object v3, v4

    iget-object v4, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    goto :goto_0

    :cond_2
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v0, :cond_3

    iget-object v5, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    return-object v5

    :cond_3
    move-object v3, v0

    iget-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    goto :goto_0
.end method

.method private findPredecessorOfLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    :goto_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    :goto_1
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    goto :goto_0

    :cond_0
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v3, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eqz v3, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    return-object v3
.end method

.method private initialize()V
    .locals 4

    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    sget-object v2, Ljava/util/concurrent/ConcurrentSkipListMap;->BASE_HEADER:Ljava/lang/Object;

    invoke-direct {v1, v3, v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v3, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;I)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    iget v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v4, v0, :cond_0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object v11, v2

    iget v4, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    :goto_1
    if-lez v4, :cond_2

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    move-object/from16 v0, p0

    iput-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    return-void

    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_4

    new-instance v16, Ljava/lang/NullPointerException;

    invoke-direct/range {v16 .. v16}, Ljava/lang/NullPointerException;-><init>()V

    throw v16

    :cond_4
    move-object v9, v8

    move-object v14, v13

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v12

    const/4 v7, 0x0

    const v16, -0x7fffffff

    and-int v16, v16, v12

    if-nez v16, :cond_6

    :cond_5
    add-int/lit8 v7, v7, 0x1

    ushr-int/lit8 v12, v12, 0x1

    and-int/lit8 v16, v12, 0x1

    if-nez v16, :cond_5

    iget v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v7, v0, :cond_6

    iget v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    move/from16 v16, v0

    add-int/lit8 v7, v16, 0x1

    :cond_6
    new-instance v15, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v15, v8, v13, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    iput-object v15, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v1, v15

    if-lez v7, :cond_2

    const/4 v5, 0x0

    const/4 v4, 0x1

    move-object v6, v5

    move-object v3, v2

    :goto_2
    if-gt v4, v7, :cond_1

    new-instance v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v5, v15, v6, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    iget v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v4, v0, :cond_8

    new-instance v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v2, v0, v3, v5, v4}, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;I)V

    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v4, v0, :cond_7

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object/from16 v0, v16

    iput-object v5, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    invoke-virtual {v10, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move-object v6, v5

    move-object v3, v2

    goto :goto_2

    :cond_7
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    move-object v2, v3

    goto :goto_3
.end method

.method static final toList(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private tryReduceLevel()V
    .locals 5

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    if-eqz v0, :cond_0

    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    check-cast v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    if-eqz v1, :cond_0

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v3, :cond_0

    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v3, :cond_0

    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v3, :cond_0

    invoke-direct {p0, v2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->casHead(Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-eqz v3, :cond_0

    invoke-direct {p0, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->casHead(Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    goto :goto_0
.end method

.method public clear()V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->clone()Ljava/util/concurrent/ConcurrentSkipListMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/util/concurrent/ConcurrentSkipListMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap",
            "<TK;TV;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->buildFromSorted(Ljava/util/SortedMap;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
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

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-interface {p2, p1, v5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_0
    return-object v5

    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, p1, v1, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v1

    :cond_3
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v2, :cond_1

    move-object v3, v2

    invoke-interface {p2, p1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v1

    :cond_4
    invoke-virtual {p0, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_0
.end method

.method public computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function",
            "<-TK;+TV;>;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->doGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v2, v1

    :cond_2
    :goto_0
    return-object v2

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method

.method public computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v2, :cond_1

    move-object v3, v2

    invoke-interface {p2, p1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v1

    :cond_2
    invoke-virtual {p0, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_3
    return-object v5
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->doGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v7, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    if-eqz v7, :cond_0

    :goto_0
    return-object v7

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    move-object v7, v0

    goto :goto_0
.end method

.method final doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v8, 0x0

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    :cond_1
    :goto_0
    invoke-direct {p0, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    iget-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    :goto_1
    if-nez v4, :cond_3

    :cond_2
    return-object v8

    :cond_3
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v4, v7, :cond_1

    iget-object v5, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-nez v5, :cond_4

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0

    :cond_4
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v7, :cond_1

    if-eq v5, v4, :cond_1

    iget-object v7, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-static {v2, p1, v7}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_2

    if-lez v1, :cond_5

    move-object v0, v4

    move-object v4, v3

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_2

    :cond_6
    invoke-virtual {v4, v5, v8}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->appendMarker(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_9

    :cond_7
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    :cond_8
    :goto_2
    move-object v6, v5

    return-object v5

    :cond_9
    invoke-direct {p0, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v7, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v7, v7, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v7, :cond_8

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tryReduceLevel()V

    goto :goto_2
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

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    goto :goto_0
.end method

.method final entrySpliterator()Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    :goto_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v6, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v3, v6, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eqz v3, :cond_0

    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;

    if-nez v3, :cond_1

    const/4 v5, 0x0

    :goto_1
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;I)V

    return-object v0

    :cond_1
    const v5, 0x7fffffff

    goto :goto_1

    :cond_2
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-virtual {v3, v6, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-ne p1, p0, :cond_0

    return v11

    :cond_0
    instance-of v8, p1, Ljava/util/Map;

    if-nez v8, :cond_1

    return v10

    :cond_1
    move-object v4, p1

    check-cast v4, Ljava/util/Map;

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    return v10

    :cond_3
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v3, :cond_5

    if-nez v7, :cond_6

    :cond_5
    :goto_0
    return v10

    :cond_6
    invoke-virtual {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_4

    goto :goto_0

    :cond_7
    return v11

    :catch_0
    move-exception v6

    return v10

    :catch_1
    move-exception v5

    return v10
.end method

.method final findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0
.end method

.method final findLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    :goto_0
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    goto :goto_0

    :cond_0
    move-object v4, v5

    goto :goto_0

    :cond_1
    iget-object v1, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-eqz v1, :cond_2

    move-object v4, v1

    goto :goto_0

    :cond_2
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    :goto_1
    if-nez v3, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v0, v7

    :cond_3
    return-object v0

    :cond_4
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v8, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eq v3, v8, :cond_6

    :cond_5
    :goto_2
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    goto :goto_0

    :cond_6
    iget-object v6, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-nez v6, :cond_7

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_2

    :cond_7
    iget-object v8, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v8, :cond_5

    if-eq v6, v3, :cond_5

    move-object v0, v3

    move-object v3, v2

    goto :goto_1
.end method

.method final findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p1, :cond_1

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    :cond_0
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eq v3, v6, :cond_4

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    :goto_1
    if-nez v3, :cond_0

    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    move-object v0, v5

    :cond_3
    return-object v0

    :cond_4
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-nez v4, :cond_5

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0

    :cond_5
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v6, :cond_1

    if-eq v4, v3, :cond_1

    iget-object v6, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-static {p3, p1, v6}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_7

    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_7

    :cond_6
    return-object v3

    :cond_7
    if-gez v1, :cond_8

    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_6

    :cond_8
    if-gtz v1, :cond_a

    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_a

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    move-result v6

    if-eqz v6, :cond_9

    :goto_2
    return-object v5

    :cond_9
    move-object v5, v0

    goto :goto_2

    :cond_a
    move-object v0, v3

    move-object v3, v2

    goto :goto_1
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

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    return-object v1
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    const/4 v3, 0x3

    invoke-virtual {p0, p1, v3, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    goto :goto_0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 3
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
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p1, v2, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->doGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)",
            "Ljava/util/AbstractMap$SimpleImmutableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->doGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    goto :goto_0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method final keySpliterator()Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    :goto_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v6, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v3, v6, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eqz v3, :cond_0

    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;

    if-nez v3, :cond_1

    const/4 v5, 0x0

    :goto_1
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;I)V

    return-object v0

    :cond_1
    const v5, 0x7fffffff

    goto :goto_1

    :cond_2
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-virtual {v3, v6, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0
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

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    return-object v1
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    goto :goto_0
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction",
            "<-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_1
    if-eqz p3, :cond_0

    :cond_2
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    return-object p2

    :cond_3
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v2, :cond_2

    move-object v3, v2

    invoke-interface {p3, v2, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v1

    :cond_4
    invoke-virtual {p0, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    return-object v5
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    goto :goto_0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemoveFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemoveLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method removeEntryIf(Ljava/util/function/Predicate;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, v1, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v1, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    :cond_2
    return v3
.end method

.method removeValueIf(Ljava/util/function/Predicate;)Z
    .locals 5
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
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    :cond_2
    return v2
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v4

    :cond_2
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v1

    return-object v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_1
    if-eqz p3, :cond_0

    :cond_2
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    if-nez v0, :cond_3

    return v3

    :cond_3
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v1, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {v0, v1, p3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    return v2
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

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p1, v3, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_2
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public size()I
    .locals 6

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    :cond_0
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    :cond_1
    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v0, v4

    if-ltz v3, :cond_2

    const v3, 0x7fffffff

    :goto_1
    return v3

    :cond_2
    long-to-int v3, v0

    goto :goto_1
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentSkipListMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    return-object v0
.end method

.method final valueSpliterator()Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    :goto_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v6, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v3, v6, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eqz v3, :cond_0

    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;

    if-nez v3, :cond_1

    const/4 v5, 0x0

    :goto_1
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;I)V

    return-object v0

    :cond_1
    const v5, 0x7fffffff

    goto :goto_1

    :cond_2
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-virtual {v3, v6, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0
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

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$Values;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    goto :goto_0
.end method
