.class Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;
.super Ljava/util/AbstractList;
.source "CopyOnWriteArrayList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CopyOnWriteArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "COWSubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private expectedArray:[Ljava/lang/Object;

.field private final l:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final offset:I

.field private size:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TE;>;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    iput p2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    sub-int v0, p3, p2

    iput v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    return-void
.end method

.method private checkForComodification()V
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private rangeCheck(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    invoke-static {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->outOfBounds(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    invoke-static {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->outOfBounds(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v0, v2, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method

.method public clear()V
    .locals 5

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeRange(II)V

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    :cond_0
    iget v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int v2, v5, v6

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v0, :cond_1

    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    :cond_1
    if-ltz v4, :cond_2

    array-length v5, v0

    if-le v2, v5, :cond_3

    :cond_2
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    :cond_3
    move v3, v4

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v1, v0, v3

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->rangeCheck(I)V

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    const/4 v5, 0x0

    invoke-direct {v0, v2, v5, v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;-><init>(Ljava/util/List;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    invoke-static {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->outOfBounds(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    invoke-direct {v0, v2, p1, v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;-><init>(Ljava/util/List;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, v1, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->rangeCheck(I)V

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v3, p1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v13, Ljava/lang/NullPointerException;

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v13

    :cond_0
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v14, v13, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    move-object/from16 v0, p0

    iget v7, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    if-lez v7, :cond_5

    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    move-object/from16 v0, p0

    iget v13, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int v3, v13, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v13

    if-eq v13, v2, :cond_1

    new-instance v13, Ljava/util/ConcurrentModificationException;

    invoke-direct {v13}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_1
    :try_start_1
    array-length v5, v2

    if-ltz v6, :cond_2

    if-le v3, v5, :cond_3

    :cond_2
    new-instance v13, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v13}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v13

    :cond_3
    const/4 v9, 0x0

    new-array v12, v7, [Ljava/lang/Object;

    move v4, v6

    move v10, v9

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v1, v2, v4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    add-int/lit8 v9, v10, 0x1

    aput-object v1, v12, v10

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v10, v9

    goto :goto_0

    :cond_4
    if-eq v10, v7, :cond_5

    sub-int v13, v5, v7

    add-int/2addr v13, v10

    new-array v8, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static {v2, v13, v8, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x0

    invoke-static {v12, v13, v8, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v13, v6, v10

    sub-int v15, v5, v3

    invoke-static {v2, v3, v8, v13, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iput v10, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, p0

    iput-object v8, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    invoke-virtual {v13, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit v14

    return v11

    :cond_6
    move v9, v10

    goto :goto_1
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TE;>;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v13, Ljava/lang/NullPointerException;

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v13

    :cond_0
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v14, v13, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    move-object/from16 v0, p0

    iget v7, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    if-lez v7, :cond_5

    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    move-object/from16 v0, p0

    iget v13, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int v3, v13, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v13

    if-eq v13, v2, :cond_1

    new-instance v13, Ljava/util/ConcurrentModificationException;

    invoke-direct {v13}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_1
    :try_start_1
    array-length v5, v2

    if-ltz v6, :cond_2

    if-le v3, v5, :cond_3

    :cond_2
    new-instance v13, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v13}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v13

    :cond_3
    const/4 v9, 0x0

    new-array v12, v7, [Ljava/lang/Object;

    move v4, v6

    move v10, v9

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v1, v2, v4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    add-int/lit8 v9, v10, 0x1

    aput-object v1, v12, v10

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v10, v9

    goto :goto_0

    :cond_4
    if-eq v10, v7, :cond_5

    sub-int v13, v5, v7

    add-int/2addr v13, v10

    new-array v8, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static {v2, v13, v8, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x0

    invoke-static {v12, v13, v8, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v13, v6, v10

    sub-int v15, v5, v3

    invoke-static {v2, v3, v8, v13, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iput v10, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, p0

    iput-object v8, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    invoke-virtual {v13, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit v14

    return v11

    :cond_6
    move v9, v10

    goto :goto_1
.end method

.method public replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator",
            "<TE;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    :cond_0
    iget-object v7, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v8, v7, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v7, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v9, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int v2, v7, v9

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    iget-object v7, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v1, :cond_1

    new-instance v7, Ljava/util/ConcurrentModificationException;

    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_1
    :try_start_1
    array-length v4, v1

    if-ltz v5, :cond_2

    if-le v2, v4, :cond_3

    :cond_2
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v7

    :cond_3
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    move v3, v5

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v0, v1, v3

    invoke-interface {p1, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v7, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v13, Ljava/lang/NullPointerException;

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v13

    :cond_0
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v14, v13, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    move-object/from16 v0, p0

    iget v7, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    if-lez v7, :cond_5

    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    move-object/from16 v0, p0

    iget v13, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int v3, v13, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v13

    if-eq v13, v2, :cond_1

    new-instance v13, Ljava/util/ConcurrentModificationException;

    invoke-direct {v13}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_1
    :try_start_1
    array-length v5, v2

    if-ltz v6, :cond_2

    if-le v3, v5, :cond_3

    :cond_2
    new-instance v13, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v13}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v13

    :cond_3
    const/4 v9, 0x0

    new-array v12, v7, [Ljava/lang/Object;

    move v4, v6

    move v10, v9

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v1, v2, v4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    add-int/lit8 v9, v10, 0x1

    aput-object v1, v12, v10

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v10, v9

    goto :goto_0

    :cond_4
    if-eq v10, v7, :cond_5

    sub-int v13, v5, v7

    add-int/2addr v13, v10

    new-array v8, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static {v2, v13, v8, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x0

    invoke-static {v12, v13, v8, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v13, v6, v10

    sub-int v15, v5, v3

    invoke-static {v2, v3, v8, v13, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iput v10, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, p0

    iput-object v8, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    invoke-virtual {v13, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit v14

    return v11

    :cond_6
    move v9, v10

    goto :goto_1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, v1, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->rangeCheck(I)V

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v3, p1

    invoke-virtual {v1, v3, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v7, v6, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v8, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int v2, v6, v8

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v0, :cond_0

    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_0
    :try_start_1
    array-length v3, v0

    if-ltz v4, :cond_1

    if-le v2, v3, :cond_2

    :cond_1
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v6}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v6

    :cond_2
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    invoke-static {v5, v4, v2, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int v1, v3, v4

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v0, :cond_0

    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    :cond_0
    if-ltz v2, :cond_1

    array-length v3, v0

    if-le v1, v3, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    :cond_2
    const/16 v3, 0x410

    invoke-static {v0, v2, v1, v3}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v3

    return-object v3
.end method

.method public subList(II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    if-gt p1, p2, :cond_0

    :try_start_1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v3, p1

    iget v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v4, p2

    invoke-direct {v0, v2, v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method
