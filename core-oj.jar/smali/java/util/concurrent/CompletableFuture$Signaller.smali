.class final Ljava/util/concurrent/CompletableFuture$Signaller;
.super Ljava/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Signaller"
.end annotation


# instance fields
.field final deadline:J

.field interrupted:Z

.field final interruptible:Z

.field nanos:J

.field volatile thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(ZJJ)V
    .locals 2

    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    iput-boolean p1, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->interruptible:Z

    iput-wide p2, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->nanos:J

    iput-wide p4, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->deadline:J

    return-void
.end method


# virtual methods
.method public block()Z
    .locals 4

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$Signaller;->isReleasable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->deadline:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->nanos:J

    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method final isLive()Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReleasable()Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    :cond_0
    iget-boolean v1, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->interruptible:Z

    if-nez v1, :cond_2

    :cond_1
    iget-wide v2, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->deadline:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_3

    iget-wide v2, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->nanos:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_2

    iget-wide v2, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->deadline:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->nanos:J

    cmp-long v1, v2, v6

    if-gtz v1, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0
.end method

.method final tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iput-object v1, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return-object v1
.end method
