.class final Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;
.super Ljava/lang/Object;
.source "CopyOnWriteArrayList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CopyOnWriteArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "COWIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private cursor:I

.field private final snapshot:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    iput-object p1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->snapshot:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->snapshot:[Ljava/lang/Object;

    array-length v1, v2

    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->snapshot:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    return-void
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->snapshot:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->snapshot:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->snapshot:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
