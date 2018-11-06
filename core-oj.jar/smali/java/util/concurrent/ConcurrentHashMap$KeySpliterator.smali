.class final Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;
.super Ljava/util/concurrent/ConcurrentHashMap$Traverser;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeySpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$Traverser",
        "<TK;TV;>;",
        "Ljava/util/Spliterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field est:J


# direct methods
.method constructor <init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIIJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;IIIJ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    iput-wide p5, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;->est:J

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x1101

    return v0
.end method

.method public estimateSize()J
    .locals 2

    iget-wide v0, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;->est:J

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v1, 0x1

    return v1
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;->trySplit()Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;->baseIndex:I

    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;->baseLimit:I

    add-int v1, v0, v5

    ushr-int/lit8 v4, v1, 0x1

    if-gt v4, v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;->baseSize:I

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;->baseLimit:I

    iget-wide v6, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;->est:J

    const/4 v8, 0x1

    ushr-long/2addr v6, v8

    iput-wide v6, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;->est:J

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIIJ)V

    goto :goto_0
.end method
