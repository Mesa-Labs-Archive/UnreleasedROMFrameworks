.class public Ljava/util/concurrent/Exchanger;
.super Ljava/lang/Object;
.source "Exchanger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/Exchanger$Node;,
        Ljava/util/concurrent/Exchanger$Participant;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ABASE:I

.field private static final ASHIFT:I = 0x7

.field private static final BLOCKER:J

.field private static final BOUND:J

.field static final FULL:I

.field private static final MATCH:J

.field private static final MMASK:I = 0xff

.field private static final NCPU:I

.field private static final NULL_ITEM:Ljava/lang/Object;

.field private static final SEQ:I = 0x100

.field private static final SLOT:J

.field private static final SPINS:I = 0x400

.field private static final TIMED_OUT:Ljava/lang/Object;

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field private volatile arena:[Ljava/util/concurrent/Exchanger$Node;

.field private volatile bound:I

.field private final participant:Ljava/util/concurrent/Exchanger$Participant;

.field private volatile slot:Ljava/util/concurrent/Exchanger$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    sput v2, Ljava/util/concurrent/Exchanger;->NCPU:I

    sget v2, Ljava/util/concurrent/Exchanger;->NCPU:I

    const/16 v3, 0x1fe

    if-lt v2, v3, :cond_1

    const/16 v2, 0xff

    :goto_0
    sput v2, Ljava/util/concurrent/Exchanger;->FULL:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Ljava/util/concurrent/Exchanger;->TIMED_OUT:Ljava/lang/Object;

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    :try_start_0
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const-class v3, Ljava/util/concurrent/Exchanger;

    const-string/jumbo v4, "bound"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/Exchanger;->BOUND:J

    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const-class v3, Ljava/util/concurrent/Exchanger;

    const-string/jumbo v4, "slot"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/Exchanger;->SLOT:J

    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const-class v3, Ljava/util/concurrent/Exchanger$Node;

    const-string/jumbo v4, "match"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/Exchanger;->MATCH:J

    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const-class v3, Ljava/lang/Thread;

    const-string/jumbo v4, "parkBlocker"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const-class v3, [Ljava/util/concurrent/Exchanger$Node;

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    and-int/2addr v2, v1

    if-nez v2, :cond_0

    const/16 v2, 0x80

    if-le v1, v2, :cond_2

    :cond_0
    new-instance v2, Ljava/lang/Error;

    const-string/jumbo v3, "Unsupported array scale"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    sget v2, Ljava/util/concurrent/Exchanger;->NCPU:I

    ushr-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const-class v3, [Ljava/util/concurrent/Exchanger$Node;

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    add-int/lit16 v2, v2, 0x80

    sput v2, Ljava/util/concurrent/Exchanger;->ABASE:I
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/Exchanger$Participant;

    invoke-direct {v0}, Ljava/util/concurrent/Exchanger$Participant;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/Exchanger;->participant:Ljava/util/concurrent/Exchanger$Participant;

    return-void
.end method

.method private final arenaExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/Exchanger;->participant:Ljava/util/concurrent/Exchanger$Participant;

    invoke-virtual {v2}, Ljava/util/concurrent/Exchanger$Participant;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/concurrent/Exchanger$Node;

    iget v0, v13, Ljava/util/concurrent/Exchanger$Node;->index:I

    move/from16 v24, v0

    :cond_0
    :goto_0
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    shl-int/lit8 v7, v24, 0x7

    sget v8, Ljava/util/concurrent/Exchanger;->ABASE:I

    add-int/2addr v7, v8

    int-to-long v4, v7

    int-to-long v8, v7

    invoke-virtual {v2, v3, v8, v9}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Exchanger$Node;

    if-eqz v6, :cond_2

    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v6, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iput-object v0, v6, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    iget-object v0, v6, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1

    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    :cond_1
    return-object v28

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/concurrent/Exchanger;->bound:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_f

    if-nez v6, :cond_f

    move-object/from16 v0, p1

    iput-object v0, v13, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    sget-object v8, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const/4 v12, 0x0

    move-object v9, v3

    move-wide v10, v4

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz p2, :cond_4

    if-nez v25, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    add-long v22, v8, p3

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v27

    iget v0, v13, Ljava/util/concurrent/Exchanger$Node;->hash:I

    move/from16 v21, v0

    const/16 v26, 0x400

    :cond_3
    :goto_2
    iget-object v0, v13, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    move-object/from16 v28, v0

    if-eqz v28, :cond_5

    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v8, Ljava/util/concurrent/Exchanger;->MATCH:J

    const/4 v7, 0x0

    invoke-virtual {v2, v13, v8, v9, v7}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    const/4 v2, 0x0

    iput-object v2, v13, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    move/from16 v0, v21

    iput v0, v13, Ljava/util/concurrent/Exchanger$Node;->hash:I

    return-object v28

    :cond_4
    const-wide/16 v22, 0x0

    goto :goto_1

    :cond_5
    if-lez v26, :cond_7

    shl-int/lit8 v2, v21, 0x1

    xor-int v21, v21, v2

    ushr-int/lit8 v2, v21, 0x3

    xor-int v21, v21, v2

    shl-int/lit8 v2, v21, 0xa

    xor-int v21, v21, v2

    if-nez v21, :cond_6

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    long-to-int v2, v8

    or-int/lit16 v0, v2, 0x400

    move/from16 v21, v0

    goto :goto_2

    :cond_6
    if-gez v21, :cond_3

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    and-int/lit16 v2, v0, 0x1ff

    if-nez v2, :cond_3

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_2

    :cond_7
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v13, :cond_8

    const/16 v26, 0x400

    goto :goto_2

    :cond_8
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_b

    if-nez v25, :cond_b

    if-eqz p2, :cond_9

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long p3, v22, v8

    const-wide/16 v8, 0x0

    cmp-long v2, p3, v8

    if-lez v2, :cond_b

    :cond_9
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v8, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object/from16 v0, v27

    iput-object v0, v13, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v13, :cond_a

    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    move-wide/from16 v0, p3

    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->park(ZJ)V

    :cond_a
    const/4 v2, 0x0

    iput-object v2, v13, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v8, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    const/4 v7, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v8, v9, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    :cond_b
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v13, :cond_3

    sget-object v9, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const/4 v14, 0x0

    move-object v10, v3

    move-wide v11, v4

    invoke-virtual/range {v9 .. v14}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v25, :cond_c

    sget-object v14, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v16, Ljava/util/concurrent/Exchanger;->BOUND:J

    move/from16 v0, v18

    add-int/lit16 v2, v0, 0x100

    add-int/lit8 v19, v2, -0x1

    move-object/from16 v15, p0

    invoke-virtual/range {v14 .. v19}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    :cond_c
    const/4 v2, 0x0

    iput-object v2, v13, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    move/from16 v0, v21

    iput v0, v13, Ljava/util/concurrent/Exchanger$Node;->hash:I

    iget v2, v13, Ljava/util/concurrent/Exchanger$Node;->index:I

    ushr-int/lit8 v24, v2, 0x1

    move/from16 v0, v24

    iput v0, v13, Ljava/util/concurrent/Exchanger$Node;->index:I

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    return-object v2

    :cond_d
    if-eqz p2, :cond_0

    if-nez v25, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v2, p3, v8

    if-gtz v2, :cond_0

    sget-object v2, Ljava/util/concurrent/Exchanger;->TIMED_OUT:Ljava/lang/Object;

    return-object v2

    :cond_e
    const/4 v2, 0x0

    iput-object v2, v13, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_f
    iget v2, v13, Ljava/util/concurrent/Exchanger$Node;->bound:I

    move/from16 v0, v18

    if-eq v2, v0, :cond_12

    move/from16 v0, v18

    iput v0, v13, Ljava/util/concurrent/Exchanger$Node;->bound:I

    const/4 v2, 0x0

    iput v2, v13, Ljava/util/concurrent/Exchanger$Node;->collides:I

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    if-nez v25, :cond_11

    :cond_10
    move/from16 v24, v25

    :goto_3
    move/from16 v0, v24

    iput v0, v13, Ljava/util/concurrent/Exchanger$Node;->index:I

    goto/16 :goto_0

    :cond_11
    add-int/lit8 v24, v25, -0x1

    goto :goto_3

    :cond_12
    iget v0, v13, Ljava/util/concurrent/Exchanger$Node;->collides:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v25

    if-lt v0, v1, :cond_13

    sget v2, Ljava/util/concurrent/Exchanger;->FULL:I

    move/from16 v0, v25

    if-ne v0, v2, :cond_14

    :cond_13
    add-int/lit8 v2, v20, 0x1

    iput v2, v13, Ljava/util/concurrent/Exchanger$Node;->collides:I

    if-nez v24, :cond_15

    move/from16 v24, v25

    goto :goto_3

    :cond_14
    sget-object v14, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v16, Ljava/util/concurrent/Exchanger;->BOUND:J

    move/from16 v0, v18

    add-int/lit16 v2, v0, 0x100

    add-int/lit8 v19, v2, 0x1

    move-object/from16 v15, p0

    invoke-virtual/range {v14 .. v19}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_13

    add-int/lit8 v24, v25, 0x1

    goto :goto_3

    :cond_15
    add-int/lit8 v24, v24, -0x1

    goto :goto_3
.end method

.method private final slotExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/Exchanger;->participant:Ljava/util/concurrent/Exchanger$Participant;

    invoke-virtual {v2}, Ljava/util/concurrent/Exchanger$Participant;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/concurrent/Exchanger$Node;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    return-object v2

    :cond_0
    sget v2, Ljava/util/concurrent/Exchanger;->NCPU:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/Exchanger;->bound:I

    if-nez v2, :cond_1

    sget-object v8, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v10, Ljava/util/concurrent/Exchanger;->BOUND:J

    const/4 v12, 0x0

    const/16 v13, 0x100

    move-object/from16 v9, p0

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Ljava/util/concurrent/Exchanger;->FULL:I

    add-int/lit8 v2, v2, 0x2

    shl-int/lit8 v2, v2, 0x7

    new-array v2, v2, [Ljava/util/concurrent/Exchanger$Node;

    move-object/from16 v0, p0

    iput-object v2, v0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/concurrent/Exchanger;->slot:Ljava/util/concurrent/Exchanger$Node;

    if-eqz v6, :cond_3

    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/Exchanger;->SLOT:J

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v6, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iput-object v0, v6, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    iget-object v0, v6, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    :cond_2
    return-object v20

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    return-object v2

    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    sget-object v8, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v10, Ljava/util/concurrent/Exchanger;->SLOT:J

    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-object/from16 v13, v17

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, v17

    iget v0, v0, Ljava/util/concurrent/Exchanger$Node;->hash:I

    move/from16 v16, v0

    if-eqz p2, :cond_7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    add-long v14, v2, p3

    :goto_1
    sget v2, Ljava/util/concurrent/Exchanger;->NCPU:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_8

    const/16 v18, 0x400

    :cond_5
    :goto_2
    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    move-object/from16 v20, v0

    if-nez v20, :cond_f

    if-lez v18, :cond_a

    shl-int/lit8 v2, v16, 0x1

    xor-int v16, v16, v2

    ushr-int/lit8 v2, v16, 0x3

    xor-int v16, v16, v2

    shl-int/lit8 v2, v16, 0xa

    xor-int v16, v16, v2

    if-nez v16, :cond_9

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    long-to-int v2, v2

    or-int/lit16 v0, v2, 0x400

    move/from16 v16, v0

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-object v2, v0, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    const-wide/16 v14, 0x0

    goto :goto_1

    :cond_8
    const/16 v18, 0x1

    goto :goto_2

    :cond_9
    if-gez v16, :cond_5

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    and-int/lit16 v2, v0, 0x1ff

    if-nez v2, :cond_5

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/Exchanger;->slot:Ljava/util/concurrent/Exchanger$Node;

    move-object/from16 v0, v17

    if-eq v2, v0, :cond_b

    const/16 v18, 0x400

    goto :goto_2

    :cond_b
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    if-nez v2, :cond_e

    if-eqz p2, :cond_c

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long p3, v14, v2

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_e

    :cond_c
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/Exchanger;->slot:Ljava/util/concurrent/Exchanger$Node;

    move-object/from16 v0, v17

    if-ne v2, v0, :cond_d

    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    move-wide/from16 v0, p3

    invoke-virtual {v2, v3, v0, v1}, Lsun/misc/Unsafe;->park(ZJ)V

    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-object v2, v0, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    :cond_e
    sget-object v8, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v10, Ljava/util/concurrent/Exchanger;->SLOT:J

    const/4 v13, 0x0

    move-object/from16 v9, p0

    move-object/from16 v12, v17

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p2, :cond_10

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-gtz v2, :cond_10

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_10

    sget-object v20, Ljava/util/concurrent/Exchanger;->TIMED_OUT:Ljava/lang/Object;

    :cond_f
    :goto_3
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/Exchanger;->MATCH:J

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v4, v5, v3}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-object v2, v0, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    move/from16 v0, v16

    move-object/from16 v1, v17

    iput v0, v1, Ljava/util/concurrent/Exchanger$Node;->hash:I

    return-object v20

    :cond_10
    const/16 v20, 0x0

    goto :goto_3
.end method


# virtual methods
.method public exchange(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_2

    sget-object v0, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    :goto_0
    iget-object v3, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    if-nez v3, :cond_0

    invoke-direct {p0, v0, v4, v6, v7}, Ljava/util/concurrent/Exchanger;->slotExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v0, v4, v6, v7}, Ljava/util/concurrent/Exchanger;->arenaExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_1
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    :cond_2
    move-object v0, p1

    goto :goto_0

    :cond_3
    sget-object v3, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    if-ne v1, v3, :cond_4

    move-object v1, v2

    :cond_4
    return-object v1
.end method

.method public exchange(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_2

    sget-object v0, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-object v5, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    if-nez v5, :cond_0

    invoke-direct {p0, v0, v6, v2, v3}, Ljava/util/concurrent/Exchanger;->slotExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v0, v6, v2, v3}, Ljava/util/concurrent/Exchanger;->arenaExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_1
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    :cond_2
    move-object v0, p1

    goto :goto_0

    :cond_3
    sget-object v5, Ljava/util/concurrent/Exchanger;->TIMED_OUT:Ljava/lang/Object;

    if-ne v1, v5, :cond_4

    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v4

    :cond_4
    sget-object v5, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    if-ne v1, v5, :cond_5

    move-object v1, v4

    :cond_5
    return-object v1
.end method
