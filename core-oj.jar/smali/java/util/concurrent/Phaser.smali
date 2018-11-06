.class public Ljava/util/concurrent/Phaser;
.super Ljava/lang/Object;
.source "Phaser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/Phaser$QNode;
    }
.end annotation


# static fields
.field private static final COUNTS_MASK:J = 0xffffffffL

.field private static final EMPTY:I = 0x1

.field private static final MAX_PARTIES:I = 0xffff

.field private static final MAX_PHASE:I = 0x7fffffff

.field private static final NCPU:I

.field private static final ONE_ARRIVAL:I = 0x1

.field private static final ONE_DEREGISTER:I = 0x10001

.field private static final ONE_PARTY:I = 0x10000

.field private static final PARTIES_MASK:J = 0xffff0000L

.field private static final PARTIES_SHIFT:I = 0x10

.field private static final PHASE_SHIFT:I = 0x20

.field static final SPINS_PER_ARRIVAL:I

.field private static final STATE:J

.field private static final TERMINATION_BIT:J = -0x8000000000000000L

.field private static final U:Lsun/misc/Unsafe;

.field private static final UNARRIVED_MASK:I = 0xffff


# instance fields
.field private final evenQ:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/Phaser$QNode;",
            ">;"
        }
    .end annotation
.end field

.field private final oddQ:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/Phaser$QNode;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Ljava/util/concurrent/Phaser;

.field private final root:Ljava/util/concurrent/Phaser;

.field private volatile state:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    sput v2, Ljava/util/concurrent/Phaser;->NCPU:I

    sget v2, Ljava/util/concurrent/Phaser;->NCPU:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    sput v2, Ljava/util/concurrent/Phaser;->SPINS_PER_ARRIVAL:I

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    :try_start_0
    sget-object v2, Ljava/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    const-class v3, Ljava/util/concurrent/Phaser;

    const-string/jumbo v4, "state"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/Phaser;->STATE:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    return-void

    :cond_0
    const/16 v2, 0x100

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/Phaser;-><init>(Ljava/util/concurrent/Phaser;I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/Phaser;-><init>(Ljava/util/concurrent/Phaser;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Phaser;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/Phaser;-><init>(Ljava/util/concurrent/Phaser;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Phaser;I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    ushr-int/lit8 v2, p2, 0x10

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Illegal number of parties"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v0, 0x0

    iput-object p1, p0, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    if-eqz p1, :cond_2

    iget-object v1, p1, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    iput-object v1, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    iget-object v2, v1, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object v2, p0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, v1, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object v2, p0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    invoke-direct {p1, v2}, Ljava/util/concurrent/Phaser;->doRegister(I)I

    move-result v0

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    const-wide/16 v2, 0x1

    :goto_1
    iput-wide v2, p0, Ljava/util/concurrent/Phaser;->state:J

    return-void

    :cond_2
    iput-object p0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_0

    :cond_3
    int-to-long v2, v0

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    int-to-long v4, p2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    int-to-long v4, p2

    or-long/2addr v2, v4

    goto :goto_1
.end method

.method private abortWait(I)I
    .locals 8

    const/4 v7, 0x0

    and-int/lit8 v4, p1, 0x1

    if-nez v4, :cond_2

    iget-object v0, p0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Phaser$QNode;

    iget-object v4, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    iget-wide v4, v4, Ljava/util/concurrent/Phaser;->state:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    long-to-int v1, v4

    if-eqz v2, :cond_1

    iget-object v3, v2, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_3

    iget v4, v2, Ljava/util/concurrent/Phaser$QNode;->phase:I

    if-ne v4, v1, :cond_3

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_0

    :cond_3
    iget-object v4, v2, Ljava/util/concurrent/Phaser$QNode;->next:Ljava/util/concurrent/Phaser$QNode;

    invoke-virtual {v0, v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    iput-object v7, v2, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_0
.end method

.method private static arrivedOf(J)I
    .locals 4

    long-to-int v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    ushr-int/lit8 v1, v0, 0x10

    const v2, 0xffff

    and-int/2addr v2, v0

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private badArrive(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Attempted arrival of unregistered party for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/Phaser;->stateToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private badRegister(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Attempt to register more than 65535 parties for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/Phaser;->stateToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doArrive(I)I
    .locals 34

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    move-object/from16 v32, v0

    :cond_0
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-wide v8, v0, Ljava/util/concurrent/Phaser;->state:J

    :goto_0
    const/16 v4, 0x20

    ushr-long v4, v8, v4

    long-to-int v0, v4

    move/from16 v31, v0

    if-gez v31, :cond_2

    return v31

    :cond_1
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v8

    goto :goto_0

    :cond_2
    long-to-int v0, v8

    move/from16 v28, v0

    const/4 v4, 0x1

    move/from16 v0, v28

    if-ne v0, v4, :cond_3

    const/16 v33, 0x0

    :goto_1
    if-gtz v33, :cond_4

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Ljava/util/concurrent/Phaser;->badArrive(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    const v4, 0xffff

    and-int v33, v28, v4

    goto :goto_1

    :cond_4
    sget-object v4, Ljava/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/Phaser;->STATE:J

    move/from16 v0, p1

    int-to-long v12, v0

    sub-long v10, v8, v12

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move/from16 v0, v33

    if-ne v0, v4, :cond_5

    const-wide v4, 0xffff0000L

    and-long v18, v10, v4

    move-wide/from16 v0, v18

    long-to-int v4, v0

    ushr-int/lit8 v30, v4, 0x10

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/Phaser;->onAdvance(II)Z

    move-result v4

    if-eqz v4, :cond_6

    const-wide/high16 v4, -0x8000000000000000L

    or-long v18, v18, v4

    :goto_2
    add-int/lit8 v4, v31, 0x1

    const v5, 0x7fffffff

    and-int v29, v4, v5

    move/from16 v0, v29

    int-to-long v4, v0

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long v18, v18, v4

    sget-object v12, Ljava/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v14, Ljava/util/concurrent/Phaser;->STATE:J

    move-object/from16 v13, p0

    move-wide/from16 v16, v10

    invoke-virtual/range {v12 .. v19}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    :cond_5
    :goto_3
    return v31

    :cond_6
    if-nez v30, :cond_7

    const-wide/16 v4, 0x1

    or-long v18, v18, v4

    goto :goto_2

    :cond_7
    move/from16 v0, v30

    int-to-long v4, v0

    or-long v18, v18, v4

    goto :goto_2

    :cond_8
    if-nez v30, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    const v5, 0x10001

    invoke-direct {v4, v5}, Ljava/util/concurrent/Phaser;->doArrive(I)I

    move-result v31

    sget-object v20, Ljava/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v22, Ljava/util/concurrent/Phaser;->STATE:J

    const-wide/16 v4, 0x1

    or-long v26, v10, v4

    move-object/from16 v21, p0

    move-wide/from16 v24, v10

    invoke-virtual/range {v20 .. v27}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/Phaser;->doArrive(I)I

    move-result v31

    goto :goto_3
.end method

.method private doRegister(I)I
    .locals 25

    move/from16 v0, p1

    int-to-long v2, v0

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    move/from16 v0, p1

    int-to-long v4, v0

    or-long v18, v2, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    move-object/from16 v21, v0

    :cond_0
    :goto_0
    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/Phaser;->state:J

    :goto_1
    long-to-int v0, v6

    move/from16 v20, v0

    ushr-int/lit8 v22, v20, 0x10

    const v2, 0xffff

    and-int v24, v20, v2

    const v2, 0xffff

    sub-int v2, v2, v22

    move/from16 v0, p1

    if-le v0, v2, :cond_2

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Ljava/util/concurrent/Phaser;->badRegister(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v6

    goto :goto_1

    :cond_2
    const/16 v2, 0x20

    ushr-long v2, v6, v2

    long-to-int v0, v2

    move/from16 v23, v0

    if-gez v23, :cond_3

    :goto_2
    return v23

    :cond_3
    const/4 v2, 0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_6

    if-eqz v21, :cond_4

    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    :cond_4
    if-nez v24, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    const/4 v3, 0x0

    move/from16 v0, v23

    invoke-direct {v2, v0, v3}, Ljava/util/concurrent/Phaser;->internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I

    goto :goto_0

    :cond_5
    sget-object v2, Ljava/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/Phaser;->STATE:J

    add-long v8, v6, v18

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_6
    if-nez v21, :cond_7

    move/from16 v0, v23

    int-to-long v2, v0

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long v8, v2, v18

    sget-object v2, Ljava/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/Phaser;->STATE:J

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_7
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/concurrent/Phaser;->state:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_a

    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/util/concurrent/Phaser;->doRegister(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v23

    if-gez v23, :cond_9

    :cond_8
    monitor-exit p0

    goto :goto_2

    :cond_9
    :goto_3
    :try_start_1
    sget-object v10, Ljava/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v12, Ljava/util/concurrent/Phaser;->STATE:J

    move/from16 v0, v23

    int-to-long v2, v0

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long v16, v2, v18

    move-object/from16 v11, p0

    move-wide v14, v6

    invoke-virtual/range {v10 .. v17}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/Phaser;->state:J

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    iget-wide v2, v2, Ljava/util/concurrent/Phaser;->state:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v0, v2

    move/from16 v23, v0

    goto :goto_3

    :cond_a
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I
    .locals 20

    add-int/lit8 v3, p1, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    const/4 v15, 0x0

    const/4 v12, 0x0

    sget v18, Ljava/util/concurrent/Phaser;->SPINS_PER_ARRIVAL:I

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/concurrent/Phaser;->state:J

    move-wide/from16 v16, v0

    const/16 v3, 0x20

    ushr-long v4, v16, v3

    long-to-int v13, v4

    move/from16 v0, p1

    if-ne v13, v0, :cond_4

    if-nez p2, :cond_3

    move-wide/from16 v0, v16

    long-to-int v3, v0

    const v4, 0xffff

    and-int v19, v3, v4

    move/from16 v0, v19

    if-eq v0, v12, :cond_1

    move/from16 v12, v19

    sget v3, Ljava/util/concurrent/Phaser;->NCPU:I

    move/from16 v0, v19

    if-ge v0, v3, :cond_1

    sget v3, Ljava/util/concurrent/Phaser;->SPINS_PER_ARRIVAL:I

    add-int v18, v18, v3

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v11

    if-nez v11, :cond_2

    add-int/lit8 v18, v18, -0x1

    if-gez v18, :cond_0

    :cond_2
    new-instance p2, Ljava/util/concurrent/Phaser$QNode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p0

    move/from16 v5, p1

    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/Phaser$QNode;-><init>(Ljava/util/concurrent/Phaser;IZZJ)V

    move-object/from16 v0, p2

    iput-boolean v11, v0, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    goto :goto_0

    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/Phaser$QNode;->isReleasable()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_4
    if-eqz p2, :cond_b

    move-object/from16 v0, p2

    iget-object v3, v0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    move-object/from16 v0, p2

    iput-object v3, v0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    :cond_5
    move-object/from16 v0, p2

    iget-boolean v3, v0, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p2

    iget-boolean v3, v0, Ljava/util/concurrent/Phaser$QNode;->interruptible:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_6
    move/from16 v0, p1

    if-ne v13, v0, :cond_b

    move-object/from16 v0, p0

    iget-wide v4, v0, Ljava/util/concurrent/Phaser;->state:J

    const/16 v3, 0x20

    ushr-long/2addr v4, v3

    long-to-int v13, v4

    move/from16 v0, p1

    if-ne v13, v0, :cond_b

    invoke-direct/range {p0 .. p1}, Ljava/util/concurrent/Phaser;->abortWait(I)I

    move-result v3

    return v3

    :cond_7
    if-nez v15, :cond_a

    and-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_1
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/concurrent/Phaser$QNode;

    move-object/from16 v0, p2

    iput-object v14, v0, Ljava/util/concurrent/Phaser$QNode;->next:Ljava/util/concurrent/Phaser$QNode;

    if-eqz v14, :cond_8

    iget v3, v14, Ljava/util/concurrent/Phaser$QNode;->phase:I

    move/from16 v0, p1

    if-ne v3, v0, :cond_0

    :cond_8
    move-object/from16 v0, p0

    iget-wide v4, v0, Ljava/util/concurrent/Phaser;->state:J

    const/16 v3, 0x20

    ushr-long/2addr v4, v3

    long-to-int v3, v4

    move/from16 v0, p1

    if-ne v3, v0, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v10, v14, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_1

    :cond_a
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/util/concurrent/ForkJoinPool;->managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    move-object/from16 v0, p2

    iput-boolean v3, v0, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    goto/16 :goto_0

    :cond_b
    invoke-direct/range {p0 .. p1}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    return v13
.end method

.method private static partiesOf(J)I
    .locals 2

    long-to-int v0, p0

    ushr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method private static phaseOf(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private queueFor(I)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/Phaser$QNode;",
            ">;"
        }
    .end annotation

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_0
.end method

.method private reconcileState()J
    .locals 20

    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/Phaser;->state:J

    move-object/from16 v0, p0

    if-eq v12, v0, :cond_3

    :goto_0
    iget-wide v2, v12, Ljava/util/concurrent/Phaser;->state:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v11, v2

    const/16 v2, 0x20

    ushr-long v2, v6, v2

    long-to-int v2, v2

    if-eq v11, v2, :cond_3

    sget-object v2, Ljava/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/Phaser;->STATE:J

    int-to-long v14, v11

    const/16 v3, 0x20

    shl-long v16, v14, v3

    if-gez v11, :cond_0

    const-wide v14, 0xffffffffL

    and-long/2addr v14, v6

    :goto_1
    or-long v8, v16, v14

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/Phaser;->state:J

    goto :goto_0

    :cond_0
    long-to-int v3, v6

    ushr-int/lit8 v10, v3, 0x10

    if-nez v10, :cond_1

    const-wide/16 v14, 0x1

    goto :goto_1

    :cond_1
    const-wide v14, 0xffff0000L

    and-long/2addr v14, v6

    int-to-long v0, v10

    move-wide/from16 v18, v0

    or-long v14, v14, v18

    goto :goto_1

    :cond_2
    move-wide v6, v8

    :cond_3
    return-wide v6
.end method

.method private releaseWaiters(I)V
    .locals 8

    const/4 v7, 0x0

    and-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_1

    iget-object v0, p0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Phaser$QNode;

    if-eqz v1, :cond_2

    iget v3, v1, Ljava/util/concurrent/Phaser$QNode;->phase:I

    iget-object v4, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    iget-wide v4, v4, Ljava/util/concurrent/Phaser;->state:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    if-eq v3, v4, :cond_2

    iget-object v3, v1, Ljava/util/concurrent/Phaser$QNode;->next:Ljava/util/concurrent/Phaser$QNode;

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v1, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    iput-object v7, v1, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private stateToString(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[phase = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/util/concurrent/Phaser;->phaseOf(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " parties = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/util/concurrent/Phaser;->partiesOf(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " arrived = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/util/concurrent/Phaser;->arrivedOf(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static unarrivedOf(J)I
    .locals 2

    long-to-int v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const v1, 0xffff

    and-int/2addr v1, v0

    goto :goto_0
.end method


# virtual methods
.method public arrive()I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/Phaser;->doArrive(I)I

    move-result v0

    return v0
.end method

.method public arriveAndAwaitAdvance()I
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    move-object/from16 v24, v0

    :cond_0
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-wide v8, v0, Ljava/util/concurrent/Phaser;->state:J

    :goto_0
    const/16 v4, 0x20

    ushr-long v4, v8, v4

    long-to-int v0, v4

    move/from16 v23, v0

    if-gez v23, :cond_2

    return v23

    :cond_1
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v8

    goto :goto_0

    :cond_2
    long-to-int v0, v8

    move/from16 v20, v0

    const/4 v4, 0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_3

    const/16 v25, 0x0

    :goto_1
    if-gtz v25, :cond_4

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Ljava/util/concurrent/Phaser;->badArrive(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    const v4, 0xffff

    and-int v25, v20, v4

    goto :goto_1

    :cond_4
    sget-object v4, Ljava/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/Phaser;->STATE:J

    const-wide/16 v12, 0x1

    sub-long v10, v8, v12

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move/from16 v0, v25

    if-le v0, v4, :cond_5

    const/4 v4, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-direct {v0, v1, v4}, Ljava/util/concurrent/Phaser;->internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I

    move-result v4

    return v4

    :cond_5
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    invoke-virtual {v4}, Ljava/util/concurrent/Phaser;->arriveAndAwaitAdvance()I

    move-result v4

    return v4

    :cond_6
    const-wide v4, 0xffff0000L

    and-long v18, v10, v4

    move-wide/from16 v0, v18

    long-to-int v4, v0

    ushr-int/lit8 v22, v4, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/Phaser;->onAdvance(II)Z

    move-result v4

    if-eqz v4, :cond_7

    const-wide/high16 v4, -0x8000000000000000L

    or-long v18, v18, v4

    :goto_2
    add-int/lit8 v4, v23, 0x1

    const v5, 0x7fffffff

    and-int v21, v4, v5

    move/from16 v0, v21

    int-to-long v4, v0

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long v18, v18, v4

    sget-object v12, Ljava/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v14, Ljava/util/concurrent/Phaser;->STATE:J

    move-object/from16 v13, p0

    move-wide/from16 v16, v10

    invoke-virtual/range {v12 .. v19}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-wide v4, v0, Ljava/util/concurrent/Phaser;->state:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    return v4

    :cond_7
    if-nez v22, :cond_8

    const-wide/16 v4, 0x1

    or-long v18, v18, v4

    goto :goto_2

    :cond_8
    move/from16 v0, v22

    int-to-long v4, v0

    or-long v18, v18, v4

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    return v21
.end method

.method public arriveAndDeregister()I
    .locals 1

    const v0, 0x10001

    invoke-direct {p0, v0}, Ljava/util/concurrent/Phaser;->doArrive(I)I

    move-result v0

    return v0
.end method

.method public awaitAdvance(I)I
    .locals 6

    iget-object v1, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    if-ne v1, p0, :cond_0

    iget-wide v2, p0, Ljava/util/concurrent/Phaser;->state:J

    :goto_0
    const/16 v4, 0x20

    ushr-long v4, v2, v4

    long-to-int v0, v4

    if-gez p1, :cond_1

    return p1

    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    if-ne v0, p1, :cond_2

    const/4 v4, 0x0

    invoke-direct {v1, p1, v4}, Ljava/util/concurrent/Phaser;->internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I

    move-result v4

    return v4

    :cond_2
    return v0
.end method

.method public awaitAdvanceInterruptibly(I)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v8, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    if-ne v8, p0, :cond_0

    iget-wide v10, p0, Ljava/util/concurrent/Phaser;->state:J

    :goto_0
    const/16 v2, 0x20

    ushr-long v2, v10, v2

    long-to-int v0, v2

    if-gez p1, :cond_1

    return p1

    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v10

    goto :goto_0

    :cond_1
    if-ne v0, p1, :cond_2

    new-instance v1, Ljava/util/concurrent/Phaser$QNode;

    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/Phaser$QNode;-><init>(Ljava/util/concurrent/Phaser;IZZJ)V

    invoke-direct {v8, p1, v1}, Ljava/util/concurrent/Phaser;->internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I

    move-result v0

    iget-boolean v2, v1, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    :cond_2
    return v0
.end method

.method public awaitAdvanceInterruptibly(IJLjava/util/concurrent/TimeUnit;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    move-object/from16 v0, p0

    if-ne v12, v0, :cond_0

    move-object/from16 v0, p0

    iget-wide v14, v0, Ljava/util/concurrent/Phaser;->state:J

    :goto_0
    const/16 v6, 0x20

    ushr-long v6, v14, v6

    long-to-int v4, v6

    if-gez p1, :cond_1

    return p1

    :cond_0
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v14

    goto :goto_0

    :cond_1
    move/from16 v0, p1

    if-ne v4, v0, :cond_3

    new-instance v5, Ljava/util/concurrent/Phaser$QNode;

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v6, p0

    move/from16 v7, p1

    invoke-direct/range {v5 .. v11}, Ljava/util/concurrent/Phaser$QNode;-><init>(Ljava/util/concurrent/Phaser;IZZJ)V

    move/from16 v0, p1

    invoke-direct {v12, v0, v5}, Ljava/util/concurrent/Phaser;->internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I

    move-result v4

    iget-boolean v6, v5, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6

    :cond_2
    move/from16 v0, p1

    if-ne v4, v0, :cond_3

    new-instance v6, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v6}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v6

    :cond_3
    return v4
.end method

.method public bulkRegister(I)I
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/Phaser;->getPhase()I

    move-result v0

    return v0

    :cond_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/Phaser;->doRegister(I)I

    move-result v0

    return v0
.end method

.method public forceTermination()V
    .locals 8

    iget-object v1, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    :cond_0
    iget-wide v4, v1, Ljava/util/concurrent/Phaser;->state:J

    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-ltz v0, :cond_1

    sget-object v0, Ljava/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/Phaser;->STATE:J

    const-wide/high16 v6, -0x8000000000000000L

    or-long/2addr v6, v4

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    return-void

    :cond_1
    return-void
.end method

.method public getArrivedParties()I
    .locals 2

    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/Phaser;->arrivedOf(J)I

    move-result v0

    return v0
.end method

.method public getParent()Ljava/util/concurrent/Phaser;
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    return-object v0
.end method

.method public final getPhase()I
    .locals 3

    iget-object v0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    iget-wide v0, v0, Ljava/util/concurrent/Phaser;->state:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getRegisteredParties()I
    .locals 2

    iget-wide v0, p0, Ljava/util/concurrent/Phaser;->state:J

    invoke-static {v0, v1}, Ljava/util/concurrent/Phaser;->partiesOf(J)I

    move-result v0

    return v0
.end method

.method public getRoot()Ljava/util/concurrent/Phaser;
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    return-object v0
.end method

.method public getUnarrivedParties()I
    .locals 2

    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/Phaser;->unarrivedOf(J)I

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .locals 4

    iget-object v0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    iget-wide v0, v0, Ljava/util/concurrent/Phaser;->state:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAdvance(II)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public register()I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/Phaser;->doRegister(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/Phaser;->stateToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
