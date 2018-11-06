.class public Ljava/util/concurrent/LinkedTransferQueue;
.super Ljava/util/AbstractQueue;
.source "LinkedTransferQueue.java"

# interfaces
.implements Ljava/util/concurrent/TransferQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/LinkedTransferQueue$Itr;,
        Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;,
        Ljava/util/concurrent/LinkedTransferQueue$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/concurrent/TransferQueue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ASYNC:I = 0x1

.field private static final CHAINED_SPINS:I = 0x40

.field private static final FRONT_SPINS:I = 0x80

.field private static final HEAD:J

.field private static final MP:Z

.field private static final NOW:I = 0x0

.field private static final SWEEPVOTES:J

.field static final SWEEP_THRESHOLD:I = 0x20

.field private static final SYNC:I = 0x2

.field private static final TAIL:J

.field private static final TIMED:I = 0x3

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = -0x2cbacc91e0a3c166L


# instance fields
.field volatile transient head:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field private volatile transient sweepVotes:I

.field private volatile transient tail:Ljava/util/concurrent/LinkedTransferQueue$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    if-le v3, v2, :cond_0

    :goto_0
    sput-boolean v2, Ljava/util/concurrent/LinkedTransferQueue;->MP:Z

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    :try_start_0
    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    const-class v3, Ljava/util/concurrent/LinkedTransferQueue;

    const-string/jumbo v4, "head"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->HEAD:J

    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    const-class v3, Ljava/util/concurrent/LinkedTransferQueue;

    const-string/jumbo v4, "tail"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->TAIL:J

    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    const-class v3, Ljava/util/concurrent/LinkedTransferQueue;

    const-string/jumbo v4, "sweepVotes"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->SWEEPVOTES:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/LinkedTransferQueue;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedTransferQueue;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private awaitMatch(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedTransferQueue$Node;",
            "Ljava/util/concurrent/LinkedTransferQueue$Node;",
            "TE;ZJ)TE;"
        }
    .end annotation

    if-eqz p4, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    add-long v2, v10, p5

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    const/4 v7, -0x1

    const/4 v6, 0x0

    :cond_0
    :goto_1
    iget-object v4, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    move-object/from16 v0, p3

    if-eq v4, v0, :cond_2

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetContents()V

    move-object v5, v4

    return-object v4

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz p4, :cond_4

    const-wide/16 v10, 0x0

    cmp-long v9, p5, v10

    if-gtz v9, :cond_4

    :cond_3
    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/LinkedTransferQueue;->unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    move-object/from16 v0, p3

    invoke-virtual {p1, v0, p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    return-object p3

    :cond_4
    if-gez v7, :cond_5

    iget-boolean v9, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    invoke-static {p2, v9}, Ljava/util/concurrent/LinkedTransferQueue;->spinsFor(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)I

    move-result v7

    if-lez v7, :cond_0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v6

    goto :goto_1

    :cond_5
    if-lez v7, :cond_6

    add-int/lit8 v7, v7, -0x1

    const/16 v9, 0x40

    invoke-virtual {v6, v9}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    :cond_6
    iget-object v9, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    if-nez v9, :cond_7

    iput-object v8, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    goto :goto_1

    :cond_7
    if-eqz p4, :cond_8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long p5, v2, v10

    const-wide/16 v10, 0x0

    cmp-long v9, p5, v10

    if-lez v9, :cond_0

    move-wide/from16 v0, p5

    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_1

    :cond_8
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z
    .locals 6

    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->HEAD:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private casSweepVotes(II)Z
    .locals 6

    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->SWEEPVOTES:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method private casTail(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z
    .locals 6

    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->TAIL:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private countOfMode(Z)I
    .locals 4

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eq v3, p1, :cond_1

    const/4 v3, 0x0

    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    const v3, 0x7fffffff

    if-ne v0, v3, :cond_3

    :cond_2
    return v0

    :cond_3
    iget-object v1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eq v2, v1, :cond_0

    move-object v2, v1

    goto :goto_0
.end method

.method private findAndRemove(Ljava/lang/Object;)Z
    .locals 4

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    iget-boolean v3, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->tryMatchData()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/LinkedTransferQueue;->unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    const/4 v3, 0x1

    return v3

    :cond_1
    if-nez v0, :cond_3

    :cond_2
    const/4 v3, 0x0

    return v3

    :cond_3
    move-object v2, v1

    iget-object v1, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static spinsFor(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)I
    .locals 1

    sget-boolean v0, Ljava/util/concurrent/LinkedTransferQueue;->MP:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    iget-boolean v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eq v0, p1, :cond_0

    const/16 v0, 0xc0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x80

    return v0

    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    if-nez v0, :cond_2

    const/16 v0, 0x40

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private sweep()V
    .locals 4

    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v0, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    if-ne v2, v0, :cond_3

    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    goto :goto_0
.end method

.method private toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    :cond_0
    const/4 v3, 0x0

    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v2, v1

    move v4, v3

    :goto_0
    if-eqz v2, :cond_5

    iget-object v0, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    iget-boolean v6, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v6, :cond_4

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_2

    if-nez v5, :cond_3

    const/4 v6, 0x4

    new-array v5, v6, [Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v3, v4, 0x1

    aput-object v0, v5, v4

    :goto_2
    iget-object v1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eq v2, v1, :cond_0

    move-object v2, v1

    move v4, v3

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    array-length v6, v5

    if-ne v4, v6, :cond_1

    add-int/lit8 v6, v4, 0x4

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_4
    if-nez v0, :cond_b

    :cond_5
    if-nez v5, :cond_6

    new-array v6, v8, [Ljava/lang/Object;

    return-object v6

    :cond_6
    if-eqz p1, :cond_9

    array-length v6, p1

    if-gt v4, v6, :cond_9

    if-eq p1, v5, :cond_7

    invoke-static {v5, v8, p1, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    array-length v6, p1

    if-ge v4, v6, :cond_8

    aput-object v7, p1, v4

    :cond_8
    return-object p1

    :cond_9
    array-length v6, v5

    if-ne v4, v6, :cond_a

    :goto_3
    return-object v5

    :cond_a
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    goto :goto_3

    :cond_b
    move v3, v4

    goto :goto_2
.end method

.method private tryAppend(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)Ljava/util/concurrent/LinkedTransferQueue$Node;
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v1, v2

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-nez v1, :cond_1

    invoke-direct {p0, v5, p1}, Ljava/util/concurrent/LinkedTransferQueue;->casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object p1

    :cond_1
    invoke-virtual {v1, p2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->cannotPrecede(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v5

    :cond_2
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v0, :cond_5

    if-eq v1, v2, :cond_3

    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eq v2, v3, :cond_3

    move-object v2, v3

    move-object v1, v3

    goto :goto_0

    :cond_3
    if-eq v1, v0, :cond_4

    move-object v1, v0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v5, p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v1, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    goto :goto_0

    :cond_6
    if-eq v1, v2, :cond_9

    :cond_7
    iget-object v4, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne v4, v2, :cond_8

    invoke-direct {p0, v2, p1}, Ljava/util/concurrent/LinkedTransferQueue;->casTail(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9

    :cond_8
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v2, :cond_9

    iget-object p1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz p1, :cond_9

    iget-object p1, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz p1, :cond_9

    if-ne p1, v2, :cond_7

    :cond_9
    return-object v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method private xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZIJ)TE;"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    const/4 v4, 0x0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v14, v2

    :goto_0
    if-eqz v14, :cond_2

    iget-boolean v10, v14, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    iget-object v11, v14, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    if-eq v11, v14, :cond_a

    if-eqz v11, :cond_4

    const/4 v3, 0x1

    :goto_1
    if-ne v3, v10, :cond_a

    move/from16 v0, p2

    if-ne v10, v0, :cond_5

    :cond_2
    if-eqz p3, :cond_d

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v4, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue$Node;-><init>(Ljava/lang/Object;Z)V

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1}, Ljava/util/concurrent/LinkedTransferQueue;->tryAppend(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    move/from16 v0, p3

    if-eq v0, v3, :cond_d

    const/4 v3, 0x3

    move/from16 v0, p3

    if-ne v0, v3, :cond_c

    const/4 v7, 0x1

    :goto_2
    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p4

    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/LinkedTransferQueue;->awaitMatch(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v14, v11, v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object v15, v14

    :cond_6
    if-eq v15, v2, :cond_8

    iget-object v13, v15, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne v3, v2, :cond_9

    if-nez v13, :cond_7

    move-object v13, v15

    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Ljava/util/concurrent/LinkedTransferQueue;->casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetNext()V

    :cond_8
    :goto_3
    iget-object v3, v14, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    move-object v12, v11

    return-object v11

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v2, :cond_8

    iget-object v15, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v15, :cond_8

    invoke-virtual {v15}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_a
    iget-object v13, v14, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eq v14, v13, :cond_b

    move-object v14, v13

    goto :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v14, v2

    goto/16 :goto_0

    :cond_c
    const/4 v7, 0x0

    goto :goto_2

    :cond_d
    return-object p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    return v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    if-eqz p1, :cond_1

    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    iget-boolean v2, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    return v2

    :cond_0
    if-nez v0, :cond_2

    :cond_1
    const/4 v2, 0x0

    return v2

    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->succ(Ljava/util/concurrent/LinkedTransferQueue$Node;)Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v1

    goto :goto_0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    if-ne p1, p0, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    if-ne p1, p0, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method final firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;
    .locals 5

    const/4 v4, 0x0

    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    iget-object v0, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    iget-boolean v3, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_3

    return-object v2

    :cond_1
    if-nez v0, :cond_3

    :cond_2
    return-object v4

    :cond_3
    iget-object v1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eq v2, v1, :cond_0

    move-object v2, v1

    goto :goto_0
.end method

.method public getWaitingConsumerCount()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->countOfMode(Z)I

    move-result v0

    return v0
.end method

.method public hasWaitingConsumer()Z
    .locals 4

    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-object v0, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    iget-boolean v3, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_3

    :cond_1
    const/4 v3, 0x0

    return v3

    :cond_2
    if-nez v0, :cond_3

    const/4 v3, 0x1

    return v3

    :cond_3
    iget-object v1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eq v2, v1, :cond_0

    move-object v2, v1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/LinkedTransferQueue$Itr;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedTransferQueue$Itr;-><init>(Ljava/util/concurrent/LinkedTransferQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    return v2
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    return v2
.end method

.method public peek()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v5, 0x0

    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_2

    iget-object v1, v3, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    iget-boolean v4, v3, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v4, :cond_1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_3

    move-object v0, v1

    return-object v1

    :cond_1
    if-nez v1, :cond_3

    :cond_2
    return-object v5

    :cond_3
    iget-object v2, v3, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eq v3, v2, :cond_0

    move-object v3, v2

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    const/4 v2, 0x0

    const/4 v3, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-object v6

    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/concurrent/LinkedTransferQueue;->findAndRemove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->countOfMode(Z)I

    move-result v0

    return v0
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

    new-instance v0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;-><init>(Ljava/util/concurrent/LinkedTransferQueue;)V

    return-object v0
.end method

.method final succ(Ljava/util/concurrent/LinkedTransferQueue$Node;)Ljava/util/concurrent/LinkedTransferQueue$Node;
    .locals 1

    iget-object v0, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    :cond_0
    return-object v0
.end method

.method public take()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    return-object v6

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;

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
    invoke-direct {p0, p1}, Ljava/util/concurrent/LinkedTransferQueue;->toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v4, v3

    move v7, v6

    :goto_0
    if-eqz v4, :cond_5

    iget-object v2, v4, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    iget-boolean v8, v4, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v8, :cond_4

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_2

    if-nez v0, :cond_3

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
    iget-object v3, v4, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eq v4, v3, :cond_0

    move-object v4, v3

    move v7, v6

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_2

    :cond_3
    array-length v8, v0

    if-ne v7, v8, :cond_1

    mul-int/lit8 v8, v7, 0x2

    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_1

    :cond_4
    if-nez v2, :cond_7

    :cond_5
    if-nez v7, :cond_6

    const-string/jumbo v8, "[]"

    return-object v8

    :cond_6
    invoke-static {v0, v7, v1}, Ljava/util/concurrent/Helpers;->toString([Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_7
    move v6, v7

    goto :goto_2
.end method

.method public transfer(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public tryTransfer(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public tryTransfer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method final unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V
    .locals 5

    const/4 v4, 0x0

    iput-object v4, p2, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    if-eqz p1, :cond_4

    if-eq p1, p2, :cond_4

    iget-object v4, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne v4, p2, :cond_4

    iget-object v2, p2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v2, :cond_0

    if-eq v2, p2, :cond_4

    invoke-virtual {p1, p2, v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eq v0, p1, :cond_1

    if-ne v0, p2, :cond_2

    :cond_1
    return-void

    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eq v4, p1, :cond_4

    iget-object v4, p2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eq v4, p2, :cond_4

    :cond_3
    iget v3, p0, Ljava/util/concurrent/LinkedTransferQueue;->sweepVotes:I

    const/16 v4, 0x20

    if-ge v3, v4, :cond_7

    add-int/lit8 v4, v3, 0x1

    invoke-direct {p0, v3, v4}, Ljava/util/concurrent/LinkedTransferQueue;->casSweepVotes(II)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v1, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-nez v1, :cond_6

    return-void

    :cond_6
    if-eq v1, v0, :cond_0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetNext()V

    goto :goto_0

    :cond_7
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Ljava/util/concurrent/LinkedTransferQueue;->casSweepVotes(II)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Ljava/util/concurrent/LinkedTransferQueue;->sweep()V

    goto :goto_1
.end method
