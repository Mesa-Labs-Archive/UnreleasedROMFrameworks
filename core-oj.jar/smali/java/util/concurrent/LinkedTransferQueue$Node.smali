.class final Ljava/util/concurrent/LinkedTransferQueue$Node;
.super Ljava/lang/Object;
.source "LinkedTransferQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedTransferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# static fields
.field private static final ITEM:J

.field private static final NEXT:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final WAITER:J

.field private static final serialVersionUID:J = -0x2ed9e3cc4e71ccaaL


# instance fields
.field final isData:Z

.field volatile item:Ljava/lang/Object;

.field volatile next:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field volatile waiter:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->U:Lsun/misc/Unsafe;

    :try_start_0
    sget-object v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/LinkedTransferQueue$Node;

    const-string/jumbo v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->ITEM:J

    sget-object v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/LinkedTransferQueue$Node;

    const-string/jumbo v3, "next"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->NEXT:J

    sget-object v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/LinkedTransferQueue$Node;

    const-string/jumbo v3, "waiter"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->WAITER:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Ljava/lang/Object;Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->ITEM:J

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    iput-boolean p2, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    return-void
.end method


# virtual methods
.method final cannotPrecede(Z)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eq v0, p1, :cond_1

    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    if-eq v1, p0, :cond_1

    if-eqz v1, :cond_0

    move v4, v2

    :goto_0
    if-ne v4, v0, :cond_1

    :goto_1
    return v2

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method final casItem(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->ITEM:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z
    .locals 6

    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->NEXT:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final forgetContents()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->ITEM:J

    invoke-virtual {v0, p0, v2, v3, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->WAITER:J

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final forgetNext()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->NEXT:J

    invoke-virtual {v0, p0, v2, v3, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final isMatched()Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    iget-boolean v4, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-ne v1, v4, :cond_2

    :cond_0
    :goto_1
    return v2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method final isUnmatchedRequest()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final tryMatchData()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
