.class final Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
.super Ljava/lang/Object;
.source "SynchronousQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue$TransferStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SNode"
.end annotation


# static fields
.field private static final MATCH:J

.field private static final NEXT:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field item:Ljava/lang/Object;

.field volatile match:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

.field mode:I

.field volatile next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

.field volatile waiter:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->U:Lsun/misc/Unsafe;

    :try_start_0
    sget-object v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    const-string/jumbo v3, "match"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->MATCH:J

    sget-object v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    const-string/jumbo v3, "next"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->NEXT:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method casNext(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z
    .locals 6

    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-ne p1, v0, :cond_0

    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->NEXT:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCancelled()Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->match:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method tryCancel()V
    .locals 6

    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->MATCH:J

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method tryMatch(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->match:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->MATCH:J

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v6, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->waiter:Ljava/lang/Thread;

    if-eqz v6, :cond_0

    iput-object v4, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->waiter:Ljava/lang/Thread;

    invoke-static {v6}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return v7

    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->match:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-ne v0, p1, :cond_2

    move v0, v7

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
