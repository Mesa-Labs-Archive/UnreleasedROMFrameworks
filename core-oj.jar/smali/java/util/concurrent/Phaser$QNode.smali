.class final Ljava/util/concurrent/Phaser$QNode;
.super Ljava/lang/Object;
.source "Phaser.java"

# interfaces
.implements Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Phaser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "QNode"
.end annotation


# instance fields
.field final deadline:J

.field final interruptible:Z

.field nanos:J

.field next:Ljava/util/concurrent/Phaser$QNode;

.field final phase:I

.field final phaser:Ljava/util/concurrent/Phaser;

.field volatile thread:Ljava/lang/Thread;

.field final timed:Z

.field wasInterrupted:Z


# direct methods
.method constructor <init>(Ljava/util/concurrent/Phaser;IZZJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/Phaser$QNode;->phaser:Ljava/util/concurrent/Phaser;

    iput p2, p0, Ljava/util/concurrent/Phaser$QNode;->phase:I

    iput-boolean p3, p0, Ljava/util/concurrent/Phaser$QNode;->interruptible:Z

    iput-wide p5, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    iput-boolean p4, p0, Ljava/util/concurrent/Phaser$QNode;->timed:Z

    if-eqz p4, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    add-long/2addr v0, p5

    :goto_0
    iput-wide v0, p0, Ljava/util/concurrent/Phaser$QNode;->deadline:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public block()Z
    .locals 2

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/Phaser$QNode;->isReleasable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ljava/util/concurrent/Phaser$QNode;->timed:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isReleasable()Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    return v4

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/Phaser$QNode;->phaser:Ljava/util/concurrent/Phaser;

    invoke-virtual {v0}, Ljava/util/concurrent/Phaser;->getPhase()I

    move-result v0

    iget v1, p0, Ljava/util/concurrent/Phaser$QNode;->phase:I

    if-eq v0, v1, :cond_1

    iput-object v5, p0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    return v4

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v4, p0, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    :cond_2
    iget-boolean v0, p0, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Ljava/util/concurrent/Phaser$QNode;->interruptible:Z

    if-eqz v0, :cond_3

    iput-object v5, p0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    return v4

    :cond_3
    iget-boolean v0, p0, Ljava/util/concurrent/Phaser$QNode;->timed:Z

    if-eqz v0, :cond_5

    iget-wide v0, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_4

    iget-wide v0, p0, Ljava/util/concurrent/Phaser$QNode;->deadline:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_5

    :cond_4
    iput-object v5, p0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    return v4

    :cond_5
    const/4 v0, 0x0

    return v0
.end method
