.class final Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
.super Ljava/lang/ref/WeakReference;
.source "ForkJoinTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExceptionNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Ljava/util/concurrent/ForkJoinTask",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final ex:Ljava/lang/Throwable;

.field final hashCode:I

.field next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

.field final thrower:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ForkJoinTask;Ljava/lang/Throwable;Ljava/util/concurrent/ForkJoinTask$ExceptionNode;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/util/concurrent/ForkJoinTask$ExceptionNode;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p2, p0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->ex:Ljava/lang/Throwable;

    iput-object p3, p0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->thrower:J

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->hashCode:I

    return-void
.end method
