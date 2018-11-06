.class public Ljava/util/concurrent/locks/StampedLock;
.super Ljava/lang/Object;
.source "StampedLock.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/StampedLock$ReadLockView;,
        Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;,
        Ljava/util/concurrent/locks/StampedLock$WNode;,
        Ljava/util/concurrent/locks/StampedLock$WriteLockView;
    }
.end annotation


# static fields
.field private static final ABITS:J = 0xffL

.field private static final CANCELLED:I = 0x1

.field private static final HEAD_SPINS:I

.field private static final INTERRUPTED:J = 0x1L

.field private static final LG_READERS:I = 0x7

.field private static final MAX_HEAD_SPINS:I

.field private static final NCPU:I

.field private static final ORIGIN:J = 0x100L

.field private static final OVERFLOW_YIELD_RATE:I = 0x7

.field private static final PARKBLOCKER:J

.field private static final RBITS:J = 0x7fL

.field private static final RFULL:J = 0x7eL

.field private static final RMODE:I = 0x0

.field private static final RUNIT:J = 0x1L

.field private static final SBITS:J = -0x80L

.field private static final SPINS:I

.field private static final STATE:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final WAITING:I = -0x1

.field private static final WBIT:J = 0x80L

.field private static final WCOWAIT:J

.field private static final WHEAD:J

.field private static final WMODE:I = 0x1

.field private static final WNEXT:J

.field private static final WSTATUS:J

.field private static final WTAIL:J

.field private static final serialVersionUID:J = -0x5349f9cce5385003L


# instance fields
.field transient readLockView:Ljava/util/concurrent/locks/StampedLock$ReadLockView;

.field transient readWriteLockView:Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;

.field private transient readerOverflow:I

.field private volatile transient state:J

.field private volatile transient whead:Ljava/util/concurrent/locks/StampedLock$WNode;

.field transient writeLockView:Ljava/util/concurrent/locks/StampedLock$WriteLockView;

.field private volatile transient wtail:Ljava/util/concurrent/locks/StampedLock$WNode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    sput v1, Ljava/util/concurrent/locks/StampedLock;->NCPU:I

    sget v1, Ljava/util/concurrent/locks/StampedLock;->NCPU:I

    if-le v1, v3, :cond_1

    const/16 v1, 0x40

    :goto_0
    sput v1, Ljava/util/concurrent/locks/StampedLock;->SPINS:I

    sget v1, Ljava/util/concurrent/locks/StampedLock;->NCPU:I

    if-le v1, v3, :cond_2

    const/16 v1, 0x400

    :goto_1
    sput v1, Ljava/util/concurrent/locks/StampedLock;->HEAD_SPINS:I

    sget v1, Ljava/util/concurrent/locks/StampedLock;->NCPU:I

    if-le v1, v3, :cond_0

    const/high16 v2, 0x10000

    :cond_0
    sput v2, Ljava/util/concurrent/locks/StampedLock;->MAX_HEAD_SPINS:I

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    :try_start_0
    sget-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/StampedLock;

    const-string/jumbo v3, "state"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    sget-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/StampedLock;

    const-string/jumbo v3, "whead"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->WHEAD:J

    sget-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/StampedLock;

    const-string/jumbo v3, "wtail"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->WTAIL:J

    sget-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/StampedLock$WNode;

    const-string/jumbo v3, "status"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->WSTATUS:J

    sget-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/StampedLock$WNode;

    const-string/jumbo v3, "next"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->WNEXT:J

    sget-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/StampedLock$WNode;

    const-string/jumbo v3, "cowait"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    sget-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/lang/Thread;

    const-string/jumbo v3, "parkBlocker"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->PARKBLOCKER:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    move v1, v2

    goto/16 :goto_0

    :cond_2
    move v1, v2

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x100

    iput-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    return-void
.end method

.method private acquireRead(ZJ)J
    .locals 50

    const/16 v48, 0x0

    const/16 v23, 0x0

    const/16 v44, -0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v22, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_37

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v4, 0xff

    and-long v38, v8, v4

    const-wide/16 v4, 0x7e

    cmp-long v4, v38, v4

    if-gez v4, :cond_3

    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v12, 0x1

    add-long v10, v8, v12

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    if-eqz v48, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    return-wide v10

    :cond_3
    const-wide/16 v4, 0x80

    cmp-long v4, v38, v4

    if-gez v4, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Ljava/util/concurrent/locks/StampedLock;->tryIncReaderOverflow(J)J

    move-result-wide v10

    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-nez v4, :cond_1

    :cond_4
    const-wide/16 v4, 0x80

    cmp-long v4, v38, v4

    if-ltz v4, :cond_0

    if-lez v44, :cond_5

    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->nextSecondarySeed()I

    move-result v4

    if-ltz v4, :cond_0

    add-int/lit8 v44, v44, -0x1

    goto :goto_1

    :cond_5
    if-nez v44, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_7

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_7

    :cond_6
    move-object/from16 v36, v25

    :goto_2
    if-nez v22, :cond_9

    new-instance v17, Ljava/util/concurrent/locks/StampedLock$WNode;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/locks/StampedLock$WNode;-><init>(ILjava/util/concurrent/locks/StampedLock$WNode;)V

    sget-object v12, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v14, Ljava/util/concurrent/locks/StampedLock;->WHEAD:J

    const/16 v16, 0x0

    move-object/from16 v13, p0

    invoke-virtual/range {v12 .. v17}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v25, v36

    goto/16 :goto_0

    :cond_7
    move-object/from16 v25, v40

    move-object/from16 v22, v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_6

    :cond_8
    sget v44, Ljava/util/concurrent/locks/StampedLock;->SPINS:I

    goto/16 :goto_1

    :cond_9
    if-nez v23, :cond_a

    new-instance v23, Ljava/util/concurrent/locks/StampedLock$WNode;

    const/4 v4, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v4, v1}, Ljava/util/concurrent/locks/StampedLock$WNode;-><init>(ILjava/util/concurrent/locks/StampedLock$WNode;)V

    move-object/from16 v25, v36

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, v36

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_b

    move-object/from16 v0, v22

    iget v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->mode:I

    if-eqz v4, :cond_13

    :cond_b
    move-object/from16 v0, v23

    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v22

    if-eq v4, v0, :cond_d

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    :cond_c
    move-object/from16 v25, v36

    goto/16 :goto_0

    :cond_d
    sget-object v18, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v20, Ljava/util/concurrent/locks/StampedLock;->WTAIL:J

    move-object/from16 v19, p0

    invoke-virtual/range {v18 .. v23}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    const/16 v44, -0x1

    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2b

    if-gez v44, :cond_25

    sget v44, Ljava/util/concurrent/locks/StampedLock;->HEAD_SPINS:I

    :cond_f
    :goto_4
    move/from16 v37, v44

    :cond_10
    move-object/from16 v0, p0

    iget-wide v8, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v4, 0xff

    and-long v38, v8, v4

    const-wide/16 v4, 0x7e

    cmp-long v4, v38, v4

    if-gez v4, :cond_26

    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v12, 0x1

    add-long v10, v8, v12

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-eqz v4, :cond_27

    :cond_11
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    :cond_12
    :goto_5
    move-object/from16 v0, v23

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v28, v0

    if-eqz v28, :cond_29

    sget-object v30, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v32, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    move-object/from16 v0, v28

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v35, v0

    move-object/from16 v31, v23

    move-object/from16 v34, v28

    invoke-virtual/range {v30 .. v35}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, v28

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    move-object/from16 v45, v0

    if-eqz v45, :cond_12

    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_5

    :cond_13
    sget-object v24, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v26, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v25, v22

    move-object/from16 v29, v23

    invoke-virtual/range {v24 .. v29}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v25, v36

    goto/16 :goto_0

    :cond_14
    const/16 v48, 0x1

    :cond_15
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v25, v0

    if-eqz v25, :cond_16

    move-object/from16 v0, v25

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v28, v0

    if-eqz v28, :cond_16

    sget-object v24, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v26, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    move-object/from16 v0, v28

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v29, v0

    invoke-virtual/range {v24 .. v29}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    move-object/from16 v0, v28

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    move-object/from16 v45, v0

    if-eqz v45, :cond_16

    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    :cond_16
    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v42, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v42

    if-eq v0, v1, :cond_17

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1a

    :cond_17
    :goto_7
    move-object/from16 v0, p0

    iget-wide v8, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v4, 0xff

    and-long v38, v8, v4

    const-wide/16 v4, 0x7e

    cmp-long v4, v38, v4

    if-gez v4, :cond_1d

    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v12, 0x1

    add-long v10, v8, v12

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-eqz v4, :cond_1e

    :cond_18
    if-eqz v48, :cond_19

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_19
    return-wide v10

    :cond_1a
    if-eqz v42, :cond_17

    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v25

    if-ne v4, v0, :cond_15

    move-object/from16 v0, v22

    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v42

    if-ne v4, v0, :cond_15

    if-eqz v42, :cond_1c

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1f

    :cond_1c
    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_1d
    const-wide/16 v4, 0x80

    cmp-long v4, v38, v4

    if-gez v4, :cond_1e

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Ljava/util/concurrent/locks/StampedLock;->tryIncReaderOverflow(J)J

    move-result-wide v10

    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-nez v4, :cond_18

    :cond_1e
    const-wide/16 v4, 0x80

    cmp-long v4, v38, v4

    if-gez v4, :cond_1b

    goto :goto_7

    :cond_1f
    move-object/from16 v0, v22

    iget v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-gtz v4, :cond_1c

    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-nez v4, :cond_23

    const-wide/16 v46, 0x0

    :cond_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v49

    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->PARKBLOCKER:J

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v6, v7, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object/from16 v0, v49

    move-object/from16 v1, v23

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    move-object/from16 v0, v25

    move-object/from16 v1, v42

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-wide v4, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    const-wide/16 v6, 0x80

    cmp-long v4, v4, v6

    if-nez v4, :cond_22

    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v25

    if-ne v4, v0, :cond_22

    move-object/from16 v0, v22

    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v42

    if-ne v4, v0, :cond_22

    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    move-wide/from16 v0, v46

    invoke-virtual {v4, v5, v0, v1}, Lsun/misc/Unsafe;->park(ZJ)V

    :cond_22
    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->PARKBLOCKER:J

    const/4 v5, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_15

    if-eqz p1, :cond_14

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/locks/StampedLock;->cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J

    move-result-wide v4

    return-wide v4

    :cond_23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v46, p2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v46, v4

    if-gtz v4, :cond_20

    if-eqz v48, :cond_24

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_24
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/locks/StampedLock;->cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J

    move-result-wide v4

    return-wide v4

    :cond_25
    sget v4, Ljava/util/concurrent/locks/StampedLock;->MAX_HEAD_SPINS:I

    move/from16 v0, v44

    if-ge v0, v4, :cond_f

    shl-int/lit8 v44, v44, 0x1

    goto/16 :goto_4

    :cond_26
    const-wide/16 v4, 0x80

    cmp-long v4, v38, v4

    if-gez v4, :cond_27

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Ljava/util/concurrent/locks/StampedLock;->tryIncReaderOverflow(J)J

    move-result-wide v10

    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-nez v4, :cond_11

    :cond_27
    const-wide/16 v4, 0x80

    cmp-long v4, v38, v4

    if-ltz v4, :cond_10

    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->nextSecondarySeed()I

    move-result v4

    if-ltz v4, :cond_10

    add-int/lit8 v37, v37, -0x1

    if-gtz v37, :cond_10

    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v25

    if-ne v4, v0, :cond_e

    move-object/from16 v0, v23

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_2d

    if-eqz v41, :cond_e

    move-object/from16 v22, v41

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    goto/16 :goto_3

    :cond_29
    if-eqz v48, :cond_2a

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_2a
    return-wide v10

    :cond_2b
    if-eqz v25, :cond_28

    :cond_2c
    :goto_8
    move-object/from16 v0, v25

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v28, v0

    if-eqz v28, :cond_28

    sget-object v24, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v26, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    move-object/from16 v0, v28

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v29, v0

    invoke-virtual/range {v24 .. v29}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    move-object/from16 v0, v28

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    move-object/from16 v45, v0

    if-eqz v45, :cond_2c

    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_8

    :cond_2d
    move-object/from16 v0, v22

    iget v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    move/from16 v43, v0

    if-nez v43, :cond_2e

    sget-object v30, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v32, Ljava/util/concurrent/locks/StampedLock;->WSTATUS:J

    const/16 v34, 0x0

    const/16 v35, -0x1

    move-object/from16 v31, v22

    invoke-virtual/range {v30 .. v35}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    goto/16 :goto_3

    :cond_2e
    const/4 v4, 0x1

    move/from16 v0, v43

    if-ne v0, v4, :cond_2f

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v42, v0

    if-eqz v42, :cond_e

    move-object/from16 v0, v42

    move-object/from16 v1, v23

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v23

    move-object/from16 v1, v42

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    goto/16 :goto_3

    :cond_2f
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-nez v4, :cond_33

    const-wide/16 v46, 0x0

    :cond_30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v49

    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->PARKBLOCKER:J

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v6, v7, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object/from16 v0, v49

    move-object/from16 v1, v23

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    move-object/from16 v0, v22

    iget v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-gez v4, :cond_32

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_31

    move-object/from16 v0, p0

    iget-wide v4, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    const-wide/16 v6, 0x80

    cmp-long v4, v4, v6

    if-nez v4, :cond_32

    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v25

    if-ne v4, v0, :cond_32

    move-object/from16 v0, v23

    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v22

    if-ne v4, v0, :cond_32

    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    move-wide/from16 v0, v46

    invoke-virtual {v4, v5, v0, v1}, Lsun/misc/Unsafe;->park(ZJ)V

    :cond_32
    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->PARKBLOCKER:J

    const/4 v5, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_e

    if-eqz p1, :cond_34

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/locks/StampedLock;->cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J

    move-result-wide v4

    return-wide v4

    :cond_33
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v46, p2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v46, v4

    if-gtz v4, :cond_30

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/locks/StampedLock;->cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J

    move-result-wide v4

    return-wide v4

    :cond_34
    const/16 v48, 0x1

    goto/16 :goto_3

    :cond_35
    move-object/from16 v25, v36

    goto/16 :goto_6

    :cond_36
    move-object/from16 v25, v36

    goto/16 :goto_0

    :cond_37
    move-object/from16 v36, v25

    goto/16 :goto_2
.end method

.method private acquireWrite(ZJ)J
    .locals 48

    const/16 v23, 0x0

    const/16 v42, -0x1

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-wide v8, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v4, 0xff

    and-long v38, v8, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v38, v4

    if-nez v4, :cond_1

    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v12, 0x80

    add-long v10, v8, v12

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-eqz v4, :cond_0

    return-wide v10

    :cond_1
    if-gez v42, :cond_3

    const-wide/16 v4, 0x80

    cmp-long v4, v38, v4

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-ne v4, v5, :cond_2

    sget v42, Ljava/util/concurrent/locks/StampedLock;->SPINS:I

    goto :goto_0

    :cond_2
    const/16 v42, 0x0

    goto :goto_0

    :cond_3
    if-lez v42, :cond_4

    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->nextSecondarySeed()I

    move-result v4

    if-ltz v4, :cond_0

    add-int/lit8 v42, v42, -0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v22, v0

    if-nez v22, :cond_5

    new-instance v17, Ljava/util/concurrent/locks/StampedLock$WNode;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/locks/StampedLock$WNode;-><init>(ILjava/util/concurrent/locks/StampedLock$WNode;)V

    sget-object v12, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v14, Ljava/util/concurrent/locks/StampedLock;->WHEAD:J

    const/16 v16, 0x0

    move-object/from16 v13, p0

    invoke-virtual/range {v12 .. v17}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    goto :goto_0

    :cond_5
    if-nez v23, :cond_6

    new-instance v23, Ljava/util/concurrent/locks/StampedLock$WNode;

    const/4 v4, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v4, v1}, Ljava/util/concurrent/locks/StampedLock$WNode;-><init>(ILjava/util/concurrent/locks/StampedLock$WNode;)V

    goto :goto_0

    :cond_6
    move-object/from16 v0, v23

    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v22

    if-eq v4, v0, :cond_7

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    goto/16 :goto_0

    :cond_7
    sget-object v18, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v20, Ljava/util/concurrent/locks/StampedLock;->WTAIL:J

    move-object/from16 v19, p0

    invoke-virtual/range {v18 .. v23}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    const/16 v46, 0x0

    const/16 v42, -0x1

    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_f

    if-gez v42, :cond_c

    sget v42, Ljava/util/concurrent/locks/StampedLock;->HEAD_SPINS:I

    :cond_9
    :goto_2
    move/from16 v36, v42

    :cond_a
    move-object/from16 v0, p0

    iget-wide v8, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v4, 0xff

    and-long/2addr v4, v8

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_d

    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v12, 0x80

    add-long v10, v8, v12

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-eqz v46, :cond_b

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_b
    return-wide v10

    :cond_c
    sget v4, Ljava/util/concurrent/locks/StampedLock;->MAX_HEAD_SPINS:I

    move/from16 v0, v42

    if-ge v0, v4, :cond_9

    shl-int/lit8 v42, v42, 0x1

    goto :goto_2

    :cond_d
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->nextSecondarySeed()I

    move-result v4

    if-ltz v4, :cond_a

    add-int/lit8 v36, v36, -0x1

    if-gtz v36, :cond_a

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v25

    if-ne v4, v0, :cond_8

    move-object/from16 v0, v23

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_11

    if-eqz v37, :cond_8

    move-object/from16 v22, v37

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    goto :goto_1

    :cond_f
    if-eqz v25, :cond_e

    :cond_10
    :goto_3
    move-object/from16 v0, v25

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v28, v0

    if-eqz v28, :cond_e

    sget-object v24, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v26, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    move-object/from16 v0, v28

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v29, v0

    invoke-virtual/range {v24 .. v29}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, v28

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    move-object/from16 v43, v0

    if-eqz v43, :cond_10

    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_3

    :cond_11
    move-object/from16 v0, v22

    iget v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    move/from16 v41, v0

    if-nez v41, :cond_12

    sget-object v30, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v32, Ljava/util/concurrent/locks/StampedLock;->WSTATUS:J

    const/16 v34, 0x0

    const/16 v35, -0x1

    move-object/from16 v31, v22

    invoke-virtual/range {v30 .. v35}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    goto/16 :goto_1

    :cond_12
    const/4 v4, 0x1

    move/from16 v0, v41

    if-ne v0, v4, :cond_13

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v40, v0

    if-eqz v40, :cond_8

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    goto/16 :goto_1

    :cond_13
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-nez v4, :cond_17

    const-wide/16 v44, 0x0

    :cond_14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v47

    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->PARKBLOCKER:J

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v6, v7, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object/from16 v0, v47

    move-object/from16 v1, v23

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    move-object/from16 v0, v22

    iget v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-gez v4, :cond_16

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-wide v4, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v25

    if-ne v4, v0, :cond_16

    move-object/from16 v0, v23

    iget-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v22

    if-ne v4, v0, :cond_16

    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    move-wide/from16 v0, v44

    invoke-virtual {v4, v5, v0, v1}, Lsun/misc/Unsafe;->park(ZJ)V

    :cond_16
    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput-object v4, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->PARKBLOCKER:J

    const/4 v5, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz p1, :cond_18

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/locks/StampedLock;->cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J

    move-result-wide v4

    return-wide v4

    :cond_17
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v44, p2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v44, v4

    if-gtz v4, :cond_14

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/locks/StampedLock;->cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J

    move-result-wide v4

    return-wide v4

    :cond_18
    const/16 v46, 0x1

    goto/16 :goto_1
.end method

.method private cancelWaiter(Ljava/util/concurrent/locks/StampedLock$WNode;Ljava/util/concurrent/locks/StampedLock$WNode;Z)J
    .locals 31

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    move-object/from16 v3, p2

    :goto_0
    iget-object v6, v3, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-eqz v6, :cond_1

    iget v2, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/locks/StampedLock;->WCOWAIT:J

    iget-object v7, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-object/from16 v3, p2

    goto :goto_0

    :cond_0
    move-object v3, v6

    goto :goto_0

    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p2

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v25, v0

    :goto_1
    if-eqz v25, :cond_3

    move-object/from16 v0, v25

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2

    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    :cond_2
    move-object/from16 v0, v25

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v25, v0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v19, v0

    :goto_2
    if-eqz v19, :cond_c

    :cond_4
    move-object/from16 v0, p1

    iget-object v12, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-eqz v12, :cond_5

    iget v2, v12, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_9

    :cond_5
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v29, v0

    :goto_3
    if-eqz v29, :cond_7

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_7

    move-object/from16 v0, v29

    iget v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6

    move-object/from16 v6, v29

    :cond_6
    move-object/from16 v0, v29

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v29, v0

    goto :goto_3

    :cond_7
    if-eq v12, v6, :cond_8

    sget-object v8, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v10, Ljava/util/concurrent/locks/StampedLock;->WNEXT:J

    move-object/from16 v28, v6

    move-object/from16 v9, p1

    move-object v13, v6

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v12, v28

    :cond_8
    if-nez v12, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_9

    sget-object v14, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v16, Ljava/util/concurrent/locks/StampedLock;->WTAIL:J

    move-object/from16 v15, p0

    move-object/from16 v18, p1

    invoke-virtual/range {v14 .. v19}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    :cond_9
    move-object/from16 v0, v19

    iget-object v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_a

    sget-object v18, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v20, Ljava/util/concurrent/locks/StampedLock;->WNEXT:J

    move-object/from16 v22, p1

    move-object/from16 v23, v12

    invoke-virtual/range {v18 .. v23}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    :cond_a
    if-eqz v12, :cond_b

    iget-object v0, v12, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    move-object/from16 v30, v0

    if-eqz v30, :cond_b

    const/4 v2, 0x0

    iput-object v2, v12, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    :cond_b
    move-object/from16 v0, v19

    iget v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_c

    move-object/from16 v0, v19

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v16, v0

    if-nez v16, :cond_f

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v24, v0

    if-eqz v24, :cond_12

    move-object/from16 v0, v24

    iget-object v6, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-eqz v6, :cond_d

    iget v2, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_10

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v29, v0

    :goto_4
    if-eqz v29, :cond_10

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_10

    move-object/from16 v0, v29

    iget v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-gtz v2, :cond_e

    move-object/from16 v6, v29

    :cond_e
    move-object/from16 v0, v29

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v29, v0

    goto :goto_4

    :cond_f
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    sget-object v15, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v17, Ljava/util/concurrent/locks/StampedLock;->WNEXT:J

    move-object/from16 v20, v12

    invoke-virtual/range {v15 .. v20}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-object/from16 v19, v16

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_c

    if-eqz v6, :cond_12

    move-object/from16 v0, v24

    iget v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide/from16 v26, v0

    const-wide/16 v4, 0xff

    and-long v4, v4, v26

    const-wide/16 v8, 0x80

    cmp-long v2, v4, v8

    if-eqz v2, :cond_12

    const-wide/16 v4, 0x0

    cmp-long v2, v26, v4

    if-eqz v2, :cond_11

    iget v2, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->mode:I

    if-nez v2, :cond_12

    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    :cond_12
    if-nez p3, :cond_13

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    const-wide/16 v4, 0x1

    :goto_5
    return-wide v4

    :cond_14
    const-wide/16 v4, 0x0

    goto :goto_5
.end method

.method private getReadLockCount(J)I
    .locals 7

    const-wide/16 v4, 0x7e

    const-wide/16 v2, 0x7f

    and-long v0, p1, v2

    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    iget v2, p0, Ljava/util/concurrent/locks/StampedLock;->readerOverflow:I

    int-to-long v2, v2

    add-long v0, v4, v2

    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v4, 0x100

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    return-void
.end method

.method private release(Ljava/util/concurrent/locks/StampedLock$WNode;)V
    .locals 9

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->WSTATUS:J

    const/4 v4, -0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    iget-object v6, p1, Ljava/util/concurrent/locks/StampedLock$WNode;->next:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-eqz v6, :cond_0

    iget v0, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v7, p0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    :goto_0
    if-eqz v7, :cond_2

    if-eq v7, p1, :cond_2

    iget v0, v7, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-gtz v0, :cond_1

    move-object v6, v7

    :cond_1
    iget-object v7, v7, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    iget-object v8, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->thread:Ljava/lang/Thread;

    if-eqz v8, :cond_3

    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v8}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private tryDecReaderOverflow(J)J
    .locals 9

    const-wide/16 v0, 0xff

    and-long/2addr v0, p1

    const-wide/16 v2, 0x7e

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v6, 0x7f

    or-long/2addr v6, p1

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v8, p0, Ljava/util/concurrent/locks/StampedLock;->readerOverflow:I

    if-lez v8, :cond_0

    add-int/lit8 v0, v8, -0x1

    iput v0, p0, Ljava/util/concurrent/locks/StampedLock;->readerOverflow:I

    move-wide v4, p1

    :goto_0
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    return-wide v4

    :cond_0
    const-wide/16 v0, 0x1

    sub-long v4, p1, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->nextSecondarySeed()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->yield()V

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private tryIncReaderOverflow(J)J
    .locals 9

    const-wide/16 v0, 0xff

    and-long/2addr v0, p1

    const-wide/16 v2, 0x7e

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v4, 0x7f

    or-long v6, p1, v4

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Ljava/util/concurrent/locks/StampedLock;->readerOverflow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/concurrent/locks/StampedLock;->readerOverflow:I

    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    return-wide p1

    :cond_0
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->nextSecondarySeed()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->yield()V

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public asReadLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->readLockView:Ljava/util/concurrent/locks/StampedLock$ReadLockView;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/StampedLock$ReadLockView;

    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/StampedLock$ReadLockView;-><init>(Ljava/util/concurrent/locks/StampedLock;)V

    iput-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->readLockView:Ljava/util/concurrent/locks/StampedLock$ReadLockView;

    goto :goto_0
.end method

.method public asReadWriteLock()Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->readWriteLockView:Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;

    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;-><init>(Ljava/util/concurrent/locks/StampedLock;)V

    iput-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->readWriteLockView:Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;

    goto :goto_0
.end method

.method public asWriteLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->writeLockView:Ljava/util/concurrent/locks/StampedLock$WriteLockView;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/StampedLock$WriteLockView;

    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/StampedLock$WriteLockView;-><init>(Ljava/util/concurrent/locks/StampedLock;)V

    iput-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->writeLockView:Ljava/util/concurrent/locks/StampedLock$WriteLockView;

    goto :goto_0
.end method

.method public getReadLockCount()I
    .locals 2

    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->getReadLockCount(J)I

    move-result v0

    return v0
.end method

.method public isReadLocked()Z
    .locals 4

    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v2, 0x7f

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWriteLocked()Z
    .locals 4

    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readLock()J
    .locals 10

    iget-wide v4, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    iget-object v1, p0, Ljava/util/concurrent/locks/StampedLock;->wtail:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0xff

    and-long/2addr v0, v4

    const-wide/16 v2, 0x7e

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v8, 0x1

    add-long v6, v4, v8

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-wide v6

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ljava/util/concurrent/locks/StampedLock;->acquireRead(ZJ)J

    move-result-wide v6

    goto :goto_0
.end method

.method public readLockInterruptibly()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    invoke-direct {p0, v2, v4, v5}, Ljava/util/concurrent/locks/StampedLock;->acquireRead(ZJ)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const-wide/16 v6, 0x0

    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0xff

    and-long/2addr v4, v0

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    const-string/jumbo v2, "[Unlocked]"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const-wide/16 v4, 0x80

    and-long/2addr v4, v0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    const-string/jumbo v2, "[Write-locked]"

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[Read-locks:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->getReadLockCount(J)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public tryConvertToOptimisticRead(J)J
    .locals 23

    const-wide/16 v2, 0xff

    and-long v16, p1, v2

    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2}, Lsun/misc/Unsafe;->loadFence()V

    :cond_0
    move-object/from16 v0, p0

    iget-wide v12, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v2, -0x80

    and-long/2addr v2, v12

    const-wide/16 v4, -0x80

    and-long v4, v4, p1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    :cond_1
    const-wide/16 v2, 0x0

    return-wide v2

    :cond_2
    const-wide/16 v2, 0xff

    and-long v20, v12, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-nez v2, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-nez v2, :cond_1

    return-wide v12

    :cond_3
    const-wide/16 v2, 0x80

    cmp-long v2, v20, v2

    if-nez v2, :cond_6

    cmp-long v2, v16, v20

    if-nez v2, :cond_1

    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v8, 0x80

    add-long/2addr v12, v8

    const-wide/16 v8, 0x0

    cmp-long v3, v12, v8

    if-nez v3, :cond_5

    const-wide/16 v6, 0x100

    :goto_0
    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, v18

    iget v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    :cond_4
    return-wide v6

    :cond_5
    move-wide v6, v12

    goto :goto_0

    :cond_6
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x80

    cmp-long v2, v16, v2

    if-gez v2, :cond_1

    const-wide/16 v2, 0x7e

    cmp-long v2, v20, v2

    if-gez v2, :cond_8

    sget-object v8, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v10, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v2, 0x1

    sub-long v6, v12, v2

    move-object/from16 v9, p0

    move-wide v14, v6

    invoke-virtual/range {v8 .. v15}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    cmp-long v2, v20, v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, v18

    iget v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    :cond_7
    const-wide/16 v2, -0x80

    and-long/2addr v2, v6

    return-wide v2

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Ljava/util/concurrent/locks/StampedLock;->tryDecReaderOverflow(J)J

    move-result-wide v6

    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x80

    and-long/2addr v2, v6

    return-wide v2
.end method

.method public tryConvertToReadLock(J)J
    .locals 23

    const-wide/16 v2, 0xff

    and-long v16, p1, v2

    :cond_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v2, -0x80

    and-long/2addr v2, v6

    const-wide/16 v4, -0x80

    and-long v4, v4, p1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const-wide/16 v2, 0xff

    and-long v20, v6, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-nez v2, :cond_4

    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-eqz v2, :cond_2

    :cond_1
    const-wide/16 v2, 0x0

    return-wide v2

    :cond_2
    const-wide/16 v2, 0x7e

    cmp-long v2, v20, v2

    if-gez v2, :cond_3

    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v10, 0x1

    add-long v8, v6, v10

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    return-wide v8

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Ljava/util/concurrent/locks/StampedLock;->tryIncReaderOverflow(J)J

    move-result-wide v8

    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-eqz v2, :cond_0

    return-wide v8

    :cond_4
    const-wide/16 v2, 0x80

    cmp-long v2, v20, v2

    if-nez v2, :cond_6

    cmp-long v2, v16, v20

    if-nez v2, :cond_1

    sget-object v10, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v12, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v2, 0x81

    add-long v8, v6, v2

    move-object/from16 v11, p0

    move-wide v14, v8

    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, v18

    iget v2, v0, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    :cond_5
    return-wide v8

    :cond_6
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x80

    cmp-long v2, v16, v2

    if-gez v2, :cond_1

    return-wide p1
.end method

.method public tryConvertToWriteLock(J)J
    .locals 19

    const-wide/16 v2, 0xff

    and-long v10, p1, v2

    :cond_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v2, -0x80

    and-long/2addr v2, v6

    const-wide/16 v4, -0x80

    and-long v4, v4, p1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const-wide/16 v2, 0xff

    and-long v12, v6, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-nez v2, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-eqz v2, :cond_2

    :cond_1
    const-wide/16 v2, 0x0

    return-wide v2

    :cond_2
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v14, 0x80

    add-long v8, v6, v14

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    return-wide v8

    :cond_3
    const-wide/16 v2, 0x80

    cmp-long v2, v12, v2

    if-nez v2, :cond_4

    cmp-long v2, v10, v12

    if-nez v2, :cond_1

    return-wide p1

    :cond_4
    const-wide/16 v2, 0x1

    cmp-long v2, v12, v2

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-eqz v2, :cond_1

    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v14, 0x1

    sub-long v14, v6, v14

    const-wide/16 v16, 0x80

    add-long v8, v14, v16

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    return-wide v8
.end method

.method public tryOptimisticRead()J
    .locals 6

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v4, 0x80

    and-long/2addr v4, v0

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    const-wide/16 v2, -0x80

    and-long/2addr v2, v0

    :cond_0
    return-wide v2
.end method

.method public tryReadLock()J
    .locals 14

    const-wide/16 v12, 0x0

    :cond_0
    iget-wide v4, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v0, 0xff

    and-long v8, v4, v0

    const-wide/16 v0, 0x80

    cmp-long v0, v8, v0

    if-nez v0, :cond_1

    return-wide v12

    :cond_1
    const-wide/16 v0, 0x7e

    cmp-long v0, v8, v0

    if-gez v0, :cond_2

    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v10, 0x1

    add-long v6, v4, v10

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v6

    :cond_2
    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/locks/StampedLock;->tryIncReaderOverflow(J)J

    move-result-wide v6

    cmp-long v0, v6, v12

    if-eqz v0, :cond_0

    return-wide v6
.end method

.method public tryReadLock(JLjava/util/concurrent/TimeUnit;)J
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v16

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-wide v8, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v4, 0xff

    and-long v14, v8, v4

    const-wide/16 v4, 0x80

    cmp-long v4, v14, v4

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x7e

    cmp-long v4, v14, v4

    if-gez v4, :cond_0

    sget-object v4, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v18, 0x1

    add-long v10, v8, v18

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-eqz v4, :cond_1

    return-wide v10

    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Ljava/util/concurrent/locks/StampedLock;->tryIncReaderOverflow(J)J

    move-result-wide v10

    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-eqz v4, :cond_1

    return-wide v10

    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-gtz v4, :cond_2

    const-wide/16 v4, 0x0

    return-wide v4

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    add-long v12, v4, v16

    const-wide/16 v4, 0x0

    cmp-long v4, v12, v4

    if-nez v4, :cond_3

    const-wide/16 v12, 0x1

    :cond_3
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12, v13}, Ljava/util/concurrent/locks/StampedLock;->acquireRead(ZJ)J

    move-result-wide v10

    const-wide/16 v4, 0x1

    cmp-long v4, v10, v4

    if-eqz v4, :cond_4

    return-wide v10

    :cond_4
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4
.end method

.method public tryUnlockRead()Z
    .locals 12

    :cond_0
    iget-wide v4, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v0, 0xff

    and-long v10, v4, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x80

    cmp-long v0, v10, v0

    if-gez v0, :cond_3

    const-wide/16 v0, 0x7e

    cmp-long v0, v10, v0

    if-gez v0, :cond_2

    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v6, 0x1

    sub-long v6, v4, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    cmp-long v0, v10, v0

    if-nez v0, :cond_1

    iget-object v8, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-eqz v8, :cond_1

    iget v0, v8, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v0, :cond_1

    invoke-direct {p0, v8}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/locks/StampedLock;->tryDecReaderOverflow(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public tryUnlockWrite()Z
    .locals 12

    const-wide/16 v10, 0x80

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    iget-wide v8, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    and-long v0, v8, v10

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    add-long/2addr v8, v10

    cmp-long v1, v8, v4

    if-nez v1, :cond_1

    const-wide/16 v4, 0x100

    :goto_0
    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    iget-object v6, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-eqz v6, :cond_0

    iget v0, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v0, :cond_0

    invoke-direct {p0, v6}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    move-wide v4, v8

    goto :goto_0

    :cond_2
    return v2
.end method

.method public tryWriteLock()J
    .locals 12

    const-wide/16 v8, 0x0

    iget-wide v4, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v0, 0xff

    and-long/2addr v0, v4

    cmp-long v0, v0, v8

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v10, 0x80

    add-long v6, v4, v10

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-wide v6

    :cond_0
    move-wide v6, v8

    goto :goto_0
.end method

.method public tryWriteLock(JLjava/util/concurrent/TimeUnit;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v8, 0x0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Ljava/util/concurrent/locks/StampedLock;->tryWriteLock()J

    move-result-wide v4

    cmp-long v6, v4, v8

    if-eqz v6, :cond_0

    return-wide v4

    :cond_0
    cmp-long v6, v2, v8

    if-gtz v6, :cond_1

    return-wide v8

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    add-long v0, v6, v2

    cmp-long v6, v0, v8

    if-nez v6, :cond_2

    const-wide/16 v0, 0x1

    :cond_2
    const/4 v6, 0x1

    invoke-direct {p0, v6, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->acquireWrite(ZJ)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3

    return-wide v4

    :cond_3
    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6
.end method

.method public unlock(J)V
    .locals 15

    const-wide/16 v0, 0xff

    and-long v8, p1, v0

    :cond_0
    iget-wide v4, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v0, -0x80

    and-long/2addr v0, v4

    const-wide/16 v2, -0x80

    and-long v2, v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0xff

    and-long v12, v4, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    :cond_2
    const-wide/16 v0, 0x80

    cmp-long v0, v12, v0

    if-nez v0, :cond_5

    cmp-long v0, v8, v12

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v6, 0x80

    add-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    const-wide/16 v4, 0x100

    :cond_3
    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    iget-object v10, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-eqz v10, :cond_4

    iget v0, v10, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v0, :cond_4

    invoke-direct {p0, v10}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    :cond_4
    return-void

    :cond_5
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x80

    cmp-long v0, v8, v0

    if-gez v0, :cond_1

    const-wide/16 v0, 0x7e

    cmp-long v0, v12, v0

    if-gez v0, :cond_7

    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v6, 0x1

    sub-long v6, v4, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    cmp-long v0, v12, v0

    if-nez v0, :cond_6

    iget-object v10, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-eqz v10, :cond_6

    iget v0, v10, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v0, :cond_6

    invoke-direct {p0, v10}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    :cond_6
    return-void

    :cond_7
    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/locks/StampedLock;->tryDecReaderOverflow(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void
.end method

.method public unlockRead(J)V
    .locals 13

    :cond_0
    iget-wide v4, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v0, -0x80

    and-long/2addr v0, v4

    const-wide/16 v2, -0x80

    and-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0xff

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    :cond_2
    const-wide/16 v0, 0xff

    and-long v10, v4, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x80

    cmp-long v0, v10, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x7e

    cmp-long v0, v10, v0

    if-gez v0, :cond_4

    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v6, 0x1

    sub-long v6, v4, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    cmp-long v0, v10, v0

    if-nez v0, :cond_3

    iget-object v8, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-eqz v8, :cond_3

    iget v0, v8, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v0, :cond_3

    invoke-direct {p0, v8}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/locks/StampedLock;->tryDecReaderOverflow(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public unlockWrite(J)V
    .locals 11

    const-wide/16 v8, 0x80

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    and-long v0, p1, v8

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    add-long/2addr p1, v8

    cmp-long v1, p1, v4

    if-nez v1, :cond_3

    const-wide/16 v4, 0x100

    :goto_0
    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    iget-object v6, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-eqz v6, :cond_2

    iget v0, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v0, :cond_2

    invoke-direct {p0, v6}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    :cond_2
    return-void

    :cond_3
    move-wide v4, p1

    goto :goto_0
.end method

.method final unstampedUnlockRead()V
    .locals 12

    :cond_0
    iget-wide v4, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v0, 0xff

    and-long v10, v4, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x80

    cmp-long v0, v10, v0

    if-ltz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    :cond_2
    const-wide/16 v0, 0x7e

    cmp-long v0, v10, v0

    if-gez v0, :cond_4

    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v6, 0x1

    sub-long v6, v4, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    cmp-long v0, v10, v0

    if-nez v0, :cond_3

    iget-object v8, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-eqz v8, :cond_3

    iget v0, v8, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v0, :cond_3

    invoke-direct {p0, v8}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/locks/StampedLock;->tryDecReaderOverflow(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method final unstampedUnlockWrite()V
    .locals 12

    const-wide/16 v10, 0x80

    const-wide/16 v4, 0x0

    iget-wide v8, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    and-long v0, v8, v10

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    add-long/2addr v8, v10

    cmp-long v1, v8, v4

    if-nez v1, :cond_2

    const-wide/16 v4, 0x100

    :goto_0
    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    iget-object v6, p0, Ljava/util/concurrent/locks/StampedLock;->whead:Ljava/util/concurrent/locks/StampedLock$WNode;

    if-eqz v6, :cond_1

    iget v0, v6, Ljava/util/concurrent/locks/StampedLock$WNode;->status:I

    if-eqz v0, :cond_1

    invoke-direct {p0, v6}, Ljava/util/concurrent/locks/StampedLock;->release(Ljava/util/concurrent/locks/StampedLock$WNode;)V

    :cond_1
    return-void

    :cond_2
    move-wide v4, v8

    goto :goto_0
.end method

.method public validate(J)Z
    .locals 7

    const-wide/16 v4, -0x80

    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->loadFence()V

    and-long v0, p1, v4

    iget-wide v2, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    and-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeLock()J
    .locals 12

    const-wide/16 v10, 0x0

    iget-wide v4, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v0, 0xff

    and-long/2addr v0, v4

    cmp-long v0, v0, v10

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    const-wide/16 v8, 0x80

    add-long v6, v4, v8

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-wide v6

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, v10, v11}, Ljava/util/concurrent/locks/StampedLock;->acquireWrite(ZJ)J

    move-result-wide v6

    goto :goto_0
.end method

.method public writeLockInterruptibly()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    invoke-direct {p0, v2, v4, v5}, Ljava/util/concurrent/locks/StampedLock;->acquireWrite(ZJ)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2
.end method
