.class public Ljava/util/concurrent/ConcurrentLinkedDeque;
.super Ljava/util/AbstractCollection;
.source "ConcurrentLinkedDeque.java"

# interfaces
.implements Ljava/util/Deque;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;,
        Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;,
        Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;,
        Ljava/util/concurrent/ConcurrentLinkedDeque$Itr;,
        Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/util/Deque",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final HEAD:J

.field private static final HOPS:I = 0x2

.field private static final NEXT_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREV_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAIL:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = 0xc29535d4a608822L


# instance fields
.field private volatile transient head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private volatile transient tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/ConcurrentLinkedDeque;->U:Lsun/misc/Unsafe;

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>()V

    sput-object v1, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    sget-object v1, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    sget-object v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    iput-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>()V

    sput-object v1, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    sget-object v1, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    sget-object v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    iput-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    :try_start_0
    sget-object v1, Ljava/util/concurrent/ConcurrentLinkedDeque;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/ConcurrentLinkedDeque;

    const-string/jumbo v3, "head"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->HEAD:J

    sget-object v1, Ljava/util/concurrent/ConcurrentLinkedDeque;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/ConcurrentLinkedDeque;

    const-string/jumbo v3, "tail"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->TAIL:J
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
    .locals 2

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    if-nez v2, :cond_0

    move-object v4, v3

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    move-object v4, v3

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2, v4}, Ljava/util/concurrent/ConcurrentLinkedDeque;->initHeadTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    return-void
.end method

.method private casHead(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)Z"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->HEAD:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private casTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)Z"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->TAIL:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private initHeadTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-ne p1, p2, :cond_0

    if-nez p1, :cond_1

    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-direct {p2, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    move-object p1, p2

    :cond_0
    :goto_0
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    iput-object p2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    return-void

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    move-object p2, v0

    goto :goto_0
.end method

.method private linkFirst(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v3, v0

    :cond_1
    :goto_0
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v4, :cond_3

    move-object v3, v4

    iget-object v4, v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v4, :cond_3

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eq v0, v1, :cond_2

    move-object v3, v1

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v3, v4

    goto :goto_1

    :cond_3
    iget-object v5, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eq v5, v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    invoke-virtual {v3, v6, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eq v3, v0, :cond_4

    invoke-direct {p0, v0, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casHead(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    :cond_4
    return-void
.end method

.method private linkLast(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v1, v3

    :cond_1
    :goto_0
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v2, :cond_3

    move-object v1, v2

    iget-object v2, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v2, :cond_3

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eq v3, v4, :cond_2

    move-object v1, v4

    :goto_1
    move-object v3, v4

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_1

    :cond_3
    iget-object v5, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eq v5, v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    invoke-virtual {v1, v6, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eq v1, v3, :cond_4

    invoke-direct {p0, v3, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    :cond_4
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-direct {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    if-nez v0, :cond_0

    move-object v3, v2

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    move-object v3, v2

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->initHeadTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    return-void
.end method

.method private screenNullResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    return-object p1
.end method

.method private skipDeletedPredecessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    :cond_0
    iget-object v1, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v0, v1

    :goto_0
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v3, :cond_3

    :cond_1
    if-eq v1, v0, :cond_2

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    return-void

    :cond_3
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v2, :cond_5

    iget-object v3, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v3, v0, :cond_1

    :cond_4
    iget-object v3, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-nez v3, :cond_0

    iget-object v3, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v3, :cond_0

    return-void

    :cond_5
    if-eq v0, v2, :cond_4

    move-object v0, v2

    goto :goto_0
.end method

.method private skipDeletedSuccessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v1, v0

    :goto_0
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v3, :cond_3

    :cond_1
    if-eq v0, v1, :cond_2

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    return-void

    :cond_3
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v2, :cond_5

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v3, v1, :cond_1

    :cond_4
    iget-object v3, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-nez v3, :cond_0

    iget-object v3, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v3, :cond_0

    return-void

    :cond_5
    if-eq v1, v2, :cond_4

    move-object v1, v2

    goto :goto_0
.end method

.method private toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    move-object v2, v1

    move v4, v3

    :goto_0
    if-eqz v2, :cond_3

    iget-object v0, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v0, :cond_9

    if-nez v5, :cond_2

    const/4 v6, 0x4

    new-array v5, v6, [Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v3, v4, 0x1

    aput-object v0, v5, v4

    :goto_2
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eq v2, v1, :cond_0

    move-object v2, v1

    move v4, v3

    goto :goto_0

    :cond_2
    array-length v6, v5

    if-ne v4, v6, :cond_1

    add-int/lit8 v6, v4, 0x4

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_3
    if-nez v5, :cond_4

    new-array v6, v8, [Ljava/lang/Object;

    return-object v6

    :cond_4
    if-eqz p1, :cond_7

    array-length v6, p1

    if-gt v4, v6, :cond_7

    if-eq p1, v5, :cond_5

    invoke-static {v5, v8, p1, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    array-length v6, p1

    if-ge v4, v6, :cond_6

    aput-object v7, p1, v4

    :cond_6
    return-object p1

    :cond_7
    array-length v6, v5

    if-ne v4, v6, :cond_8

    :goto_3
    return-object v5

    :cond_8
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    goto :goto_3

    :cond_9
    move v3, v4

    goto :goto_2
.end method

.method private unlinkFirst(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p2

    :goto_0
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-nez v3, :cond_0

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v2, :cond_3

    :cond_0
    if-eqz v0, :cond_2

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eq v3, v1, :cond_2

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->skipDeletedPredecessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    iget-object v3, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v3, :cond_2

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v3, :cond_1

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v3, p1, :cond_2

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateHead()V

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateTail()V

    invoke-virtual {v0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->prevTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    :cond_2
    return-void

    :cond_3
    if-ne v1, v2, :cond_4

    return-void

    :cond_4
    move-object v0, v1

    move-object v1, v2

    goto :goto_0
.end method

.method private unlinkLast(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p2

    :goto_0
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-nez v3, :cond_0

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v2, :cond_3

    :cond_0
    if-eqz v0, :cond_2

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eq v3, v1, :cond_2

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->skipDeletedSuccessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    iget-object v3, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v3, :cond_2

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v3, :cond_1

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v3, p1, :cond_2

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateHead()V

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateTail()V

    invoke-virtual {v0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->nextTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    :cond_2
    return-void

    :cond_3
    if-ne v1, v2, :cond_4

    return-void

    :cond_4
    move-object v0, v1

    move-object v1, v2

    goto :goto_0
.end method

.method private final updateHead()V
    .locals 4

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    iget-object v3, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-nez v3, :cond_3

    iget-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v1, :cond_3

    :goto_0
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v2, :cond_1

    move-object v1, v2

    iget-object v2, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v2, :cond_2

    :cond_1
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casHead(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_2
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v0, v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final updateTail()V
    .locals 4

    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-nez v3, :cond_3

    iget-object v0, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v0, :cond_3

    :goto_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v1, :cond_1

    move-object v0, v1

    iget-object v1, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v1, :cond_2

    :cond_1
    invoke-direct {p0, v2, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_2
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v2, v3, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    const/4 v10, 0x0

    if-ne p1, p0, :cond_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    if-nez v0, :cond_1

    move-object v3, v4

    move-object v0, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    move-object v3, v4

    goto :goto_0

    :cond_2
    if-nez v0, :cond_4

    const/4 v9, 0x0

    return v9

    :cond_3
    iget-object v9, v5, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v9, v5, :cond_7

    :cond_4
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v5, v7

    :cond_5
    :goto_1
    iget-object v6, v5, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v6, :cond_3

    move-object v5, v6

    iget-object v6, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v6, :cond_3

    iget-object v8, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eq v7, v8, :cond_6

    move-object v5, v8

    :goto_2
    move-object v7, v8

    goto :goto_1

    :cond_6
    move-object v5, v6

    goto :goto_2

    :cond_7
    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    invoke-virtual {v5, v10, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-direct {p0, v7, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v7, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    iget-object v9, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v9, :cond_8

    invoke-direct {p0, v7, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    :cond_8
    const/4 v9, 0x1

    return v9
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->linkFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->linkLast(Ljava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .locals 1

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;-><init>(Ljava/util/concurrent/ConcurrentLinkedDeque;Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;)V

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v2, v0

    :goto_0
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v3, :cond_2

    move-object v2, v3

    iget-object v3, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v3, :cond_2

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eq v0, v1, :cond_1

    move-object v2, v1

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v2, v3

    goto :goto_1

    :cond_2
    if-eq v2, v0, :cond_3

    invoke-direct {p0, v0, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casHead(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    return-object v2
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->screenNullResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->screenNullResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Itr;-><init>(Ljava/util/concurrent/ConcurrentLinkedDeque;Ljava/util/concurrent/ConcurrentLinkedDeque$Itr;)V

    return-object v0
.end method

.method last()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation

    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-object v0, v2

    :goto_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v1, :cond_2

    move-object v0, v1

    iget-object v1, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v1, :cond_2

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eq v2, v3, :cond_1

    move-object v0, v3

    :goto_1
    move-object v2, v3

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    if-eq v0, v2, :cond_3

    invoke-direct {p0, v2, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    return-object v0
.end method

.method nextTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->linkFirst(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->linkLast(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->last()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pred(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->last()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pred(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final pred(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->last()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method prevTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->screenNullResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->screenNullResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->last()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pred(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public size()I
    .locals 4

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    const v3, 0x7fffffff

    if-ne v0, v3, :cond_2

    :cond_1
    return v0

    :cond_2
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eq v2, v1, :cond_0

    move-object v2, v1

    goto :goto_0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;-><init>(Ljava/util/concurrent/ConcurrentLinkedDeque;)V

    return-object v0
.end method

.method final succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;

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

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v3

    move-object v4, v3

    move v7, v6

    :goto_0
    if-eqz v4, :cond_3

    iget-object v2, v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v2, :cond_5

    if-nez v0, :cond_2

    const/4 v8, 0x4

    new-array v0, v8, [Ljava/lang/String;

    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v7, 0x1

    aput-object v5, v0, v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v1, v8

    :goto_2
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eq v4, v3, :cond_0

    move-object v4, v3

    move v7, v6

    goto :goto_0

    :cond_2
    array-length v8, v0

    if-ne v7, v8, :cond_1

    mul-int/lit8 v8, v7, 0x2

    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_1

    :cond_3
    if-nez v7, :cond_4

    const-string/jumbo v8, "[]"

    return-object v8

    :cond_4
    invoke-static {v0, v7, v1}, Ljava/util/concurrent/Helpers;->toString([Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_5
    move v6, v7

    goto :goto_2
.end method

.method unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    iget-object v7, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    iget-object v5, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v7, :cond_1

    invoke-direct {p0, p1, v5}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlinkFirst(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v5, :cond_2

    invoke-direct {p0, p1, v7}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlinkLast(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    move-object v6, v7

    :goto_1
    iget-object v9, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v9, :cond_3

    move-object v0, v6

    const/4 v3, 0x0

    :goto_2
    move-object v6, v5

    :goto_3
    iget-object v9, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v9, :cond_7

    move-object v1, v6

    const/4 v4, 0x0

    :goto_4
    const/4 v9, 0x2

    if-ge v2, v9, :cond_b

    or-int v9, v3, v4

    if-eqz v9, :cond_b

    return-void

    :cond_3
    iget-object v8, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v8, :cond_5

    iget-object v9, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v9, v6, :cond_4

    return-void

    :cond_4
    move-object v0, v6

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    if-ne v6, v8, :cond_6

    return-void

    :cond_6
    move-object v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iget-object v8, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v8, :cond_9

    iget-object v9, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v9, v6, :cond_8

    return-void

    :cond_8
    move-object v1, v6

    const/4 v4, 0x1

    goto :goto_4

    :cond_9
    if-ne v6, v8, :cond_a

    return-void

    :cond_a
    move-object v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->skipDeletedSuccessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->skipDeletedPredecessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    or-int v9, v3, v4

    if-eqz v9, :cond_0

    iget-object v9, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v9, v1, :cond_0

    iget-object v9, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v9, v0, :cond_0

    if-eqz v3, :cond_c

    iget-object v9, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v9, :cond_0

    :goto_5
    if-eqz v4, :cond_d

    iget-object v9, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v9, :cond_0

    :goto_6
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateHead()V

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateTail()V

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->prevTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v9

    :goto_7
    invoke-virtual {p1, v9}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    if-eqz v4, :cond_f

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->nextTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v9

    :goto_8
    invoke-virtual {p1, v9}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    goto :goto_0

    :cond_c
    iget-object v9, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v9, :cond_0

    goto :goto_5

    :cond_d
    iget-object v9, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v9, :cond_0

    goto :goto_6

    :cond_e
    move-object v9, p1

    goto :goto_7

    :cond_f
    move-object v9, p1

    goto :goto_8
.end method
