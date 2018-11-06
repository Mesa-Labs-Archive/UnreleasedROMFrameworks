.class final Ljava/util/concurrent/ForkJoinPool$WorkQueue;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WorkQueue"
.end annotation


# static fields
.field private static final ABASE:I

.field private static final ASHIFT:I

.field static final INITIAL_QUEUE_CAPACITY:I = 0x2000

.field static final MAXIMUM_QUEUE_CAPACITY:I = 0x4000000

.field private static final QLOCK:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field array:[Ljava/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field volatile base:I

.field config:I

.field volatile currentJoin:Ljava/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field volatile currentSteal:Ljava/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field hint:I

.field nsteals:I

.field final owner:Ljava/util/concurrent/ForkJoinWorkerThread;

.field volatile parker:Ljava/lang/Thread;

.field final pool:Ljava/util/concurrent/ForkJoinPool;

.field volatile qlock:I

.field volatile scanState:I

.field stackPred:I

.field top:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    :try_start_0
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const-class v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    const-string/jumbo v4, "qlock"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const-class v3, [Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    sput v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const-class v3, [Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/Error;

    const-string/jumbo v3, "array index scale not a power of two"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1f

    sput v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ForkJoinPool;Ljava/util/concurrent/ForkJoinWorkerThread;)V
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pool:Ljava/util/concurrent/ForkJoinPool;

    iput-object p2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    return-void
.end method

.method private growAndSharedPush(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava/util/concurrent/ForkJoinTask;

    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    add-int/lit8 v3, v1, -0x1

    and-int/2addr v3, v2

    aput-object p1, v0, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    return-void

    :catchall_0
    move-exception v3

    iput v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    throw v3
.end method


# virtual methods
.method final cancelAll()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    if-eqz v0, :cond_0

    iput-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    if-eqz v0, :cond_1

    iput-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method final getPoolIndex()I
    .locals 2

    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const v1, 0xffff

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method final growArray()[Ljava/util/concurrent/ForkJoinTask;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-eqz v3, :cond_1

    array-length v2, v3

    shl-int/lit8 v13, v2, 0x1

    :goto_0
    const/16 v2, 0x2000

    if-lt v13, v2, :cond_0

    const/high16 v2, 0x4000000

    if-le v13, v2, :cond_2

    :cond_0
    new-instance v2, Ljava/util/concurrent/RejectedExecutionException;

    const-string/jumbo v7, "Queue capacity exceeded"

    invoke-direct {v2, v7}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/16 v13, 0x2000

    goto :goto_0

    :cond_2
    new-array v8, v13, [Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, p0

    iput-object v8, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-eqz v3, :cond_5

    array-length v2, v3

    add-int/lit8 v12, v2, -0x1

    if-lez v12, :cond_5

    move-object/from16 v0, p0

    iget v14, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int v2, v14, v9

    if-lez v2, :cond_5

    add-int/lit8 v11, v13, -0x1

    :cond_3
    and-int v10, v9, v12

    int-to-long v0, v10

    move-wide/from16 v16, v0

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long v16, v16, v2

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v0, v2

    move-wide/from16 v18, v0

    add-long v4, v16, v18

    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ForkJoinTask;

    if-eqz v6, :cond_4

    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    and-int v2, v9, v11

    aput-object v6, v8, v2

    :cond_4
    add-int/lit8 v9, v9, 0x1

    if-ne v9, v14, :cond_3

    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2}, Lsun/misc/Unsafe;->storeFence()V

    :cond_5
    return-object v8
.end method

.method final isApparentlyUnblocked()Z
    .locals 4

    const/4 v2, 0x0

    iget v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-ltz v3, :cond_0

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v3, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    if-eq v0, v3, :cond_0

    sget-object v3, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-eq v0, v3, :cond_0

    sget-object v3, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    if-eq v0, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method final isEmpty()Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v2, v6, v3

    if-gez v2, :cond_0

    const/4 v6, -0x1

    if-ne v2, v6, :cond_2

    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    add-int/lit8 v6, v1, -0x1

    add-int/lit8 v7, v3, -0x1

    and-int/2addr v6, v7

    aget-object v6, v0, v6

    if-eqz v6, :cond_0

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_0
.end method

.method final localPollAndExec()V
    .locals 15

    const/4 v14, 0x0

    const/4 v5, 0x0

    :cond_0
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v8, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-eqz v0, :cond_1

    if-eq v2, v8, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    add-int/lit8 v10, v1, -0x1

    add-int/lit8 v3, v2, 0x1

    and-int v4, v10, v2

    int-to-long v10, v4

    sget v12, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v10, v12

    sget v12, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v12, v12

    add-long v6, v10, v12

    sget-object v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v10, v0, v6, v7, v14}, Lsun/misc/Unsafe;->getAndSetObject(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/ForkJoinTask;

    if-eqz v9, :cond_0

    iput v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    invoke-virtual {v9}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    add-int/lit8 v5, v5, 0x1

    const/16 v10, 0x3ff

    if-le v5, v10, :cond_0

    move v2, v3

    :cond_1
    return-void
.end method

.method final localPopAndExec()V
    .locals 15

    const/4 v14, 0x0

    const/4 v4, 0x0

    :cond_0
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v5, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-eqz v0, :cond_1

    if-eq v2, v5, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    add-int/lit8 v9, v1, -0x1

    add-int/lit8 v5, v5, -0x1

    and-int v3, v9, v5

    int-to-long v10, v3

    sget v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v10, v9

    sget v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v12, v9

    add-long v6, v10, v12

    sget-object v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v9, v0, v6, v7, v14}, Lsun/misc/Unsafe;->getAndSetObject(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/ForkJoinTask;

    if-eqz v8, :cond_1

    iput v5, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iput-object v8, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {v8}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    add-int/lit8 v4, v4, 0x1

    const/16 v9, 0x3ff

    if-le v4, v9, :cond_0

    :cond_1
    return-void
.end method

.method final nextLocalTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pop()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    goto :goto_0
.end method

.method final peek()Ljava/util/concurrent/ForkJoinTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    add-int/lit8 v3, v1, -0x1

    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    if-gez v2, :cond_1

    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    :goto_0
    and-int/2addr v2, v3

    aget-object v2, v0, v2

    :cond_0
    return-object v2

    :cond_1
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method final poll()Ljava/util/concurrent/ForkJoinTask;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    :cond_0
    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move-object/from16 v0, p0

    iget v13, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-eqz v3, :cond_2

    sub-int v11, v9, v13

    if-gez v11, :cond_2

    array-length v8, v3

    if-lez v8, :cond_2

    add-int/lit8 v2, v8, -0x1

    and-int v12, v2, v9

    int-to-long v14, v12

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v14, v2

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v0, v2

    move-wide/from16 v16, v0

    add-long v4, v14, v16

    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ForkJoinTask;

    add-int/lit8 v10, v9, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v9, v2, :cond_0

    if-eqz v6, :cond_1

    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iput v10, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    return-object v6

    :cond_1
    const/4 v2, -0x1

    if-ne v11, v2, :cond_0

    move v9, v10

    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method final pollAndExecCC(Ljava/util/concurrent/CountedCompleter;)I
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move-object/from16 v0, p0

    iget v15, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-eqz v3, :cond_5

    if-eq v9, v15, :cond_5

    array-length v8, v3

    if-lez v8, :cond_5

    add-int/lit8 v2, v8, -0x1

    and-int v12, v2, v9

    int-to-long v0, v12

    move-wide/from16 v16, v0

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long v16, v16, v2

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v0, v2

    move-wide/from16 v18, v0

    add-long v4, v16, v18

    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/concurrent/ForkJoinTask;

    if-nez v13, :cond_0

    const/4 v11, 0x2

    :goto_0
    return v11

    :cond_0
    instance-of v2, v13, Ljava/util/concurrent/CountedCompleter;

    if-nez v2, :cond_1

    const/4 v11, -0x1

    goto :goto_0

    :cond_1
    move-object v6, v13

    check-cast v6, Ljava/util/concurrent/CountedCompleter;

    move-object v14, v6

    :cond_2
    move-object/from16 v0, p1

    if-ne v14, v0, :cond_4

    add-int/lit8 v10, v9, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v9, v2, :cond_3

    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iput v10, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    invoke-virtual {v6}, Ljava/util/concurrent/CountedCompleter;->doExec()I

    const/4 v11, 0x1

    :goto_1
    move v9, v10

    goto :goto_0

    :cond_3
    const/4 v11, 0x2

    goto :goto_1

    :cond_4
    iget-object v14, v14, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    if-nez v14, :cond_2

    const/4 v11, -0x1

    goto :goto_0

    :cond_5
    const/high16 v2, -0x80000000

    or-int v11, v9, v2

    goto :goto_0
.end method

.method final pollAt(I)Ljava/util/concurrent/ForkJoinTask;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-eqz v1, :cond_1

    array-length v6, v1

    if-lez v6, :cond_1

    add-int/lit8 v0, v6, -0x1

    and-int v8, v0, p1

    int-to-long v10, v8

    sget v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v10, v0

    sget v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v12, v0

    add-long v2, v10, v12

    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    if-eqz v4, :cond_1

    add-int/lit8 v7, p1, 0x1

    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne p1, v0, :cond_0

    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    return-object v4

    :cond_0
    move p1, v7

    :cond_1
    :goto_0
    return-object v5

    :cond_2
    move p1, v7

    goto :goto_0
.end method

.method final pop()Ljava/util/concurrent/ForkJoinTask;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    const/4 v5, 0x0

    iget v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v9, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-eqz v1, :cond_0

    if-eq v7, v9, :cond_0

    array-length v6, v1

    if-lez v6, :cond_0

    add-int/lit8 v0, v6, -0x1

    add-int/lit8 v9, v9, -0x1

    and-int v8, v0, v9

    int-to-long v10, v8

    sget v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v10, v0

    sget v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v12, v0

    add-long v2, v10, v12

    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    if-eqz v4, :cond_0

    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v9, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    return-object v4

    :cond_0
    return-object v5
.end method

.method final popCC(Ljava/util/concurrent/CountedCompleter;I)Ljava/util/concurrent/CountedCompleter;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;I)",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget v10, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-eqz v8, :cond_4

    move/from16 v0, v17

    if-eq v10, v0, :cond_4

    array-length v9, v8

    if-lez v9, :cond_4

    add-int/lit8 v2, v9, -0x1

    add-int/lit8 v3, v17, -0x1

    and-int v11, v2, v3

    int-to-long v2, v11

    sget v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v2, v4

    sget v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v4, v4

    add-long v14, v2, v4

    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v8, v14, v15}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/concurrent/ForkJoinTask;

    instance-of v2, v12, Ljava/util/concurrent/CountedCompleter;

    if-eqz v2, :cond_4

    move-object/from16 v18, v12

    check-cast v18, Ljava/util/concurrent/CountedCompleter;

    move-object/from16 v16, v18

    :cond_0
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_3

    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_2

    const/4 v13, 0x0

    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move/from16 v0, v17

    if-ne v2, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-ne v2, v8, :cond_1

    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    move-object v3, v8

    move-wide v4, v14

    move-object/from16 v6, v18

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v13, 0x1

    add-int/lit8 v2, v17, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    :cond_1
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4, v5, v3}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    if-eqz v13, :cond_4

    return-object v18

    :cond_2
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    move-object v3, v8

    move-wide v4, v14

    move-object/from16 v6, v18

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v2, v17, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    return-object v18

    :cond_3
    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method final push(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    sget-object v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v5}, Lsun/misc/Unsafe;->storeFence()V

    iget v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    add-int/lit8 v5, v1, -0x1

    and-int/2addr v5, v4

    aput-object p1, v0, v5

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget v5, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int v2, v5, v4

    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    sget-object v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v5}, Lsun/misc/Unsafe;->fullFence()V

    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinPool;->signalWork()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    add-int v5, v1, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0
.end method

.method final queueSize()I
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v0, v2, v3

    if-ltz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    neg-int v1, v0

    goto :goto_0
.end method

.method final runTask(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    if-gez v2, :cond_2

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->localPollAndExec()V

    :goto_0
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    iput-object v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    if-gez v0, :cond_0

    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->transferStealCount(Ljava/util/concurrent/ForkJoinPool;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinWorkerThread;->afterTopLevelExec()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->localPopAndExec()V

    goto :goto_0
.end method

.method final sharedPush(Ljava/util/concurrent/ForkJoinTask;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)I"
        }
    .end annotation

    const/4 v4, 0x0

    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v8, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v10, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iget-object v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-eqz v6, :cond_1

    array-length v7, v6

    if-lez v7, :cond_1

    add-int/lit8 v0, v7, -0x1

    sub-int v9, v8, v10

    add-int/2addr v0, v9

    if-lez v0, :cond_1

    add-int/lit8 v0, v7, -0x1

    and-int/2addr v0, v10

    aput-object p1, v6, v0

    add-int/lit8 v0, v10, 0x1

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iput v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    if-gez v9, :cond_0

    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v8, v0, :cond_0

    move v11, v9

    :goto_0
    return v11

    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growAndSharedPush(Ljava/util/concurrent/ForkJoinTask;)V

    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    const/4 v11, 0x1

    goto :goto_0
.end method

.method final transferStealCount(Ljava/util/concurrent/ForkJoinPool;)V
    .locals 6

    if-eqz p1, :cond_1

    iget-object v0, p1, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    if-eqz v0, :cond_1

    iget v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v2, v1

    const/4 v1, 0x0

    iput v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const-wide/32 v2, 0x7fffffff

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$AuxState;->lock()V

    :try_start_0
    iget-wide v4, v0, Ljava/util/concurrent/ForkJoinPool$AuxState;->stealCount:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Ljava/util/concurrent/ForkJoinPool$AuxState;->stealCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    throw v1
.end method

.method final tryRemoveAndExec(Ljava/util/concurrent/ForkJoinTask;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_8

    iget v0, p1, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v0, :cond_8

    :cond_0
    iget v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v12, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v8, v7, v12

    if-gez v8, :cond_8

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-eqz v1, :cond_8

    array-length v6, v1

    if-lez v6, :cond_8

    :cond_1
    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v0, v6, -0x1

    and-int v9, v12, v0

    sget v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int v0, v9, v0

    sget v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v5

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    if-nez v4, :cond_3

    :cond_2
    :goto_0
    iget v0, p1, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_3
    if-ne v4, p1, :cond_6

    const/4 v11, 0x0

    add-int/lit8 v0, v12, 0x1

    iget v5, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v0, v5, :cond_5

    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput v12, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    const/4 v11, 0x1

    :cond_4
    :goto_1
    if-eqz v11, :cond_2

    iget-object v10, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    iput-object p1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    iput-object v10, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    :cond_5
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v7, :cond_4

    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    new-instance v5, Ljava/util/concurrent/ForkJoinPool$EmptyTask;

    invoke-direct {v5}, Ljava/util/concurrent/ForkJoinPool$EmptyTask;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    goto :goto_1

    :cond_6
    iget v0, v4, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v0, :cond_7

    add-int/lit8 v0, v12, 0x1

    iget v5, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v0, v5, :cond_7

    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v12, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    goto :goto_0

    :cond_7
    add-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_1

    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v7, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method final trySharedUnpush(Ljava/util/concurrent/ForkJoinTask;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    const/4 v9, 0x0

    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v12, v0, -0x1

    iget-object v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-eqz v6, :cond_1

    array-length v7, v6

    if-lez v7, :cond_1

    add-int/lit8 v0, v7, -0x1

    and-int v8, v0, v12

    int-to-long v0, v8

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v0, v2

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v2, v2

    add-long v10, v0, v2

    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v6, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/concurrent/ForkJoinTask;

    if-ne v13, p1, :cond_1

    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v1, v12, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-ne v0, v6, :cond_0

    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    move-object v1, v6

    move-wide v2, v10

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v9, 0x1

    iput v12, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    :cond_0
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    :cond_1
    return v9
.end method

.method final tryUnpush(Ljava/util/concurrent/ForkJoinTask;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    iget v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v9, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-eqz v1, :cond_0

    if-eq v7, v9, :cond_0

    array-length v6, v1

    if-lez v6, :cond_0

    add-int/lit8 v0, v6, -0x1

    add-int/lit8 v9, v9, -0x1

    and-int v8, v0, v9

    int-to-long v4, v8

    sget v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v4, v0

    sget v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v10, v0

    add-long v2, v4, v10

    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v9, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
