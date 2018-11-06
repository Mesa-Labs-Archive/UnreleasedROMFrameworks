.class public abstract Ljava/util/concurrent/CountedCompleter;
.super Ljava/util/concurrent/ForkJoinTask;
.source "CountedCompleter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ForkJoinTask",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final PENDING:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = 0x489d68f7081983ceL


# instance fields
.field final completer:Ljava/util/concurrent/CountedCompleter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;"
        }
    .end annotation
.end field

.field volatile pending:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    :try_start_0
    sget-object v1, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/CountedCompleter;

    const-string/jumbo v3, "pending"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/CountedCompleter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/CountedCompleter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    iput p2, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    return-void
.end method


# virtual methods
.method public final addToPendingCount(I)V
    .locals 4

    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    return-void
.end method

.method public final compareAndSetPendingCount(II)Z
    .locals 6

    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method public complete(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CountedCompleter;->setRawResult(Ljava/lang/Object;)V

    invoke-virtual {p0, p0}, Ljava/util/concurrent/CountedCompleter;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->quietlyComplete()V

    iget-object v0, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    :cond_0
    return-void
.end method

.method public abstract compute()V
.end method

.method public final decrementPendingCountUnlessZero()I
    .locals 6

    :cond_0
    iget v4, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    if-eqz v4, :cond_1

    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    :cond_1
    return v4
.end method

.method protected final exec()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->compute()V

    const/4 v0, 0x0

    return v0
.end method

.method public final firstComplete()Ljava/util/concurrent/CountedCompleter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;"
        }
    .end annotation

    :cond_0
    iget v4, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    if-nez v4, :cond_1

    return-object p0

    :cond_1
    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCompleter()Ljava/util/concurrent/CountedCompleter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    return-object v0
.end method

.method public final getPendingCount()I
    .locals 1

    iget v0, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    return v0
.end method

.method public getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRoot()Ljava/util/concurrent/CountedCompleter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;"
        }
    .end annotation

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final helpComplete(I)V
    .locals 4

    if-lez p1, :cond_0

    iget v2, p0, Ljava/util/concurrent/CountedCompleter;->status:I

    if-ltz v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v2, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget-object v3, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v2, v3, p0, p1}, Ljava/util/concurrent/ForkJoinPool;->helpComplete(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/CountedCompleter;I)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v2, p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava/util/concurrent/CountedCompleter;I)I

    goto :goto_0
.end method

.method internalPropagateException(Ljava/lang/Throwable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p0

    :cond_0
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/CountedCompleter;->onExceptionalCompletion(Ljava/lang/Throwable;Ljava/util/concurrent/CountedCompleter;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    iget-object v0, v0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    if-eqz v0, :cond_1

    iget v2, v0, Ljava/util/concurrent/CountedCompleter;->status:I

    if-ltz v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CountedCompleter;->recordExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v2

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    :cond_1
    return-void
.end method

.method public final nextComplete()Ljava/util/concurrent/CountedCompleter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->quietlyComplete()V

    return-object v1
.end method

.method public onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onExceptionalCompletion(Ljava/lang/Throwable;Ljava/util/concurrent/CountedCompleter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public final propagateCompletion()V
    .locals 7

    move-object v1, p0

    move-object v6, p0

    :cond_0
    iget v4, v1, Ljava/util/concurrent/CountedCompleter;->pending:I

    if-nez v4, :cond_1

    move-object v6, v1

    iget-object v1, v1, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    if-nez v1, :cond_0

    invoke-virtual {v6}, Ljava/util/concurrent/CountedCompleter;->quietlyComplete()V

    return-void

    :cond_1
    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final quietlyCompleteRoot()V
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->quietlyComplete()V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final setPendingCount(I)V
    .locals 0

    iput p1, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    return-void
.end method

.method protected setRawResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final tryComplete()V
    .locals 7

    move-object v1, p0

    move-object v6, p0

    :cond_0
    iget v4, v1, Ljava/util/concurrent/CountedCompleter;->pending:I

    if-nez v4, :cond_1

    invoke-virtual {v1, v6}, Ljava/util/concurrent/CountedCompleter;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    move-object v6, v1

    iget-object v1, v1, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    if-nez v1, :cond_0

    invoke-virtual {v6}, Ljava/util/concurrent/CountedCompleter;->quietlyComplete()V

    return-void

    :cond_1
    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
