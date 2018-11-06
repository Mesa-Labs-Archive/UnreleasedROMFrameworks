.class abstract Ljava/util/concurrent/atomic/Striped64;
.super Ljava/lang/Number;
.source "Striped64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/Striped64$Cell;
    }
.end annotation


# static fields
.field private static final BASE:J

.field private static final CELLSBUSY:J

.field static final NCPU:I

.field private static final PROBE:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field volatile transient base:J

.field volatile transient cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

.field volatile transient cellsBusy:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    sput v1, Ljava/util/concurrent/atomic/Striped64;->NCPU:I

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/atomic/Striped64;->U:Lsun/misc/Unsafe;

    :try_start_0
    sget-object v1, Ljava/util/concurrent/atomic/Striped64;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/atomic/Striped64;

    const-string/jumbo v3, "base"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/atomic/Striped64;->BASE:J

    sget-object v1, Ljava/util/concurrent/atomic/Striped64;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/atomic/Striped64;

    const-string/jumbo v3, "cellsBusy"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/atomic/Striped64;->CELLSBUSY:J

    sget-object v1, Ljava/util/concurrent/atomic/Striped64;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/lang/Thread;

    const-string/jumbo v3, "threadLocalRandomProbe"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/atomic/Striped64;->PROBE:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method static final advanceProbe(I)I
    .locals 4

    shl-int/lit8 v0, p0, 0xd

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x11

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x5

    xor-int/2addr p0, v0

    sget-object v0, Ljava/util/concurrent/atomic/Striped64;->U:Lsun/misc/Unsafe;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-wide v2, Ljava/util/concurrent/atomic/Striped64;->PROBE:J

    invoke-virtual {v0, v1, v2, v3, p0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return p0
.end method

.method private static apply(Ljava/util/function/DoubleBinaryOperator;JD)J
    .locals 5

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    if-nez p0, :cond_0

    add-double/2addr v0, p3

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    return-wide v2

    :cond_0
    invoke-interface {p0, v0, v1, p3, p4}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v0

    goto :goto_0
.end method

.method static final getProbe()I
    .locals 4

    sget-object v0, Ljava/util/concurrent/atomic/Striped64;->U:Lsun/misc/Unsafe;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-wide v2, Ljava/util/concurrent/atomic/Striped64;->PROBE:J

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method


# virtual methods
.method final casBase(JJ)Z
    .locals 9

    sget-object v0, Ljava/util/concurrent/atomic/Striped64;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/Striped64;->BASE:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method final casCellsBusy()Z
    .locals 6

    sget-object v0, Ljava/util/concurrent/atomic/Striped64;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/Striped64;->CELLSBUSY:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method final doubleAccumulate(DLjava/util/function/DoubleBinaryOperator;Z)V
    .locals 21

    invoke-static {}, Ljava/util/concurrent/atomic/Striped64;->getProbe()I

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    invoke-static {}, Ljava/util/concurrent/atomic/Striped64;->getProbe()I

    move-result v7

    const/16 p4, 0x1

    :cond_0
    const/4 v6, 0x0

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-eqz v5, :cond_c

    array-length v10, v5

    if-lez v10, :cond_c

    add-int/lit8 v13, v10, -0x1

    and-int/2addr v13, v7

    aget-object v4, v5, v13

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    if-nez v13, :cond_4

    new-instance v11, Ljava/util/concurrent/atomic/Striped64$Cell;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v11, v0, v1}, Ljava/util/concurrent/atomic/Striped64$Cell;-><init>(J)V

    move-object/from16 v0, p0

    iget v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    if-nez v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/Striped64;->casCellsBusy()Z

    move-result v13

    if-eqz v13, :cond_4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-eqz v12, :cond_3

    array-length v9, v12

    if-lez v9, :cond_3

    add-int/lit8 v13, v9, -0x1

    and-int v8, v13, v7

    aget-object v13, v12, v8

    if-nez v13, :cond_3

    aput-object v11, v12, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    goto :goto_0

    :catchall_0
    move-exception v13

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    throw v13

    :cond_4
    const/4 v6, 0x0

    :cond_5
    :goto_2
    invoke-static {v7}, Ljava/util/concurrent/atomic/Striped64;->advanceProbe(I)I

    move-result v7

    goto :goto_0

    :cond_6
    if-nez p4, :cond_7

    const/16 p4, 0x1

    goto :goto_2

    :cond_7
    iget-wide v14, v4, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-static {v0, v14, v15, v1, v2}, Ljava/util/concurrent/atomic/Striped64;->apply(Ljava/util/function/DoubleBinaryOperator;JD)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v4, v14, v15, v0, v1}, Ljava/util/concurrent/atomic/Striped64$Cell;->cas(JJ)Z

    move-result v13

    if-nez v13, :cond_2

    sget v13, Ljava/util/concurrent/atomic/Striped64;->NCPU:I

    if-ge v10, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-eq v13, v5, :cond_9

    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    :cond_9
    if-nez v6, :cond_a

    const/4 v6, 0x1

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    if-nez v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/Striped64;->casCellsBusy()Z

    move-result v13

    if-eqz v13, :cond_5

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-ne v13, v5, :cond_b

    shl-int/lit8 v13, v10, 0x1

    invoke-static {v5, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/util/concurrent/atomic/Striped64$Cell;

    move-object/from16 v0, p0

    iput-object v13, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    const/4 v6, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v13

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    throw v13

    :cond_c
    move-object/from16 v0, p0

    iget v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    if-nez v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-ne v13, v5, :cond_e

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/Striped64;->casCellsBusy()Z

    move-result v13

    if-eqz v13, :cond_e

    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-ne v13, v5, :cond_d

    const/4 v13, 0x2

    new-array v12, v13, [Ljava/util/concurrent/atomic/Striped64$Cell;

    and-int/lit8 v13, v7, 0x1

    new-instance v16, Ljava/util/concurrent/atomic/Striped64$Cell;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v18

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/Striped64$Cell;-><init>(J)V

    aput-object v16, v12, v13

    move-object/from16 v0, p0

    iput-object v12, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    goto/16 :goto_1

    :cond_d
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    goto/16 :goto_0

    :catchall_2
    move-exception v13

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    throw v13

    :cond_e
    move-object/from16 v0, p0

    iget-wide v14, v0, Ljava/util/concurrent/atomic/Striped64;->base:J

    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-static {v0, v14, v15, v1, v2}, Ljava/util/concurrent/atomic/Striped64;->apply(Ljava/util/function/DoubleBinaryOperator;JD)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1, v2}, Ljava/util/concurrent/atomic/Striped64;->casBase(JJ)Z

    move-result v13

    if-eqz v13, :cond_1

    goto/16 :goto_1
.end method

.method final longAccumulate(JLjava/util/function/LongBinaryOperator;Z)V
    .locals 19

    invoke-static {}, Ljava/util/concurrent/atomic/Striped64;->getProbe()I

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    invoke-static {}, Ljava/util/concurrent/atomic/Striped64;->getProbe()I

    move-result v7

    const/16 p4, 0x1

    :cond_0
    const/4 v6, 0x0

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-eqz v5, :cond_d

    array-length v10, v5

    if-lez v10, :cond_d

    add-int/lit8 v13, v10, -0x1

    and-int/2addr v13, v7

    aget-object v4, v5, v13

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    if-nez v13, :cond_4

    new-instance v11, Ljava/util/concurrent/atomic/Striped64$Cell;

    move-wide/from16 v0, p1

    invoke-direct {v11, v0, v1}, Ljava/util/concurrent/atomic/Striped64$Cell;-><init>(J)V

    move-object/from16 v0, p0

    iget v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    if-nez v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/Striped64;->casCellsBusy()Z

    move-result v13

    if-eqz v13, :cond_4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-eqz v12, :cond_3

    array-length v9, v12

    if-lez v9, :cond_3

    add-int/lit8 v13, v9, -0x1

    and-int v8, v13, v7

    aget-object v13, v12, v8

    if-nez v13, :cond_3

    aput-object v11, v12, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    goto :goto_0

    :catchall_0
    move-exception v13

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    throw v13

    :cond_4
    const/4 v6, 0x0

    :cond_5
    :goto_2
    invoke-static {v7}, Ljava/util/concurrent/atomic/Striped64;->advanceProbe(I)I

    move-result v7

    goto :goto_0

    :cond_6
    if-nez p4, :cond_7

    const/16 p4, 0x1

    goto :goto_2

    :cond_7
    iget-wide v14, v4, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    if-nez p3, :cond_9

    add-long v16, v14, p1

    :goto_3
    move-wide/from16 v0, v16

    invoke-virtual {v4, v14, v15, v0, v1}, Ljava/util/concurrent/atomic/Striped64$Cell;->cas(JJ)Z

    move-result v13

    if-nez v13, :cond_2

    sget v13, Ljava/util/concurrent/atomic/Striped64;->NCPU:I

    if-ge v10, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-eq v13, v5, :cond_a

    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    :cond_9
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-interface {v0, v14, v15, v1, v2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v16

    goto :goto_3

    :cond_a
    if-nez v6, :cond_b

    const/4 v6, 0x1

    goto :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    if-nez v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/Striped64;->casCellsBusy()Z

    move-result v13

    if-eqz v13, :cond_5

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-ne v13, v5, :cond_c

    shl-int/lit8 v13, v10, 0x1

    invoke-static {v5, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/util/concurrent/atomic/Striped64$Cell;

    move-object/from16 v0, p0

    iput-object v13, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_c
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    const/4 v6, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v13

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    throw v13

    :cond_d
    move-object/from16 v0, p0

    iget v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    if-nez v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-ne v13, v5, :cond_f

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/Striped64;->casCellsBusy()Z

    move-result v13

    if-eqz v13, :cond_f

    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    if-ne v13, v5, :cond_e

    const/4 v13, 0x2

    new-array v12, v13, [Ljava/util/concurrent/atomic/Striped64$Cell;

    and-int/lit8 v13, v7, 0x1

    new-instance v16, Ljava/util/concurrent/atomic/Striped64$Cell;

    move-object/from16 v0, v16

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/Striped64$Cell;-><init>(J)V

    aput-object v16, v12, v13

    move-object/from16 v0, p0

    iput-object v12, v0, Ljava/util/concurrent/atomic/Striped64;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    goto/16 :goto_1

    :cond_e
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    goto/16 :goto_0

    :catchall_2
    move-exception v13

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/concurrent/atomic/Striped64;->cellsBusy:I

    throw v13

    :cond_f
    move-object/from16 v0, p0

    iget-wide v14, v0, Ljava/util/concurrent/atomic/Striped64;->base:J

    if-nez p3, :cond_10

    add-long v16, v14, p1

    :goto_4
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1, v2}, Ljava/util/concurrent/atomic/Striped64;->casBase(JJ)Z

    move-result v13

    if-eqz v13, :cond_1

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-interface {v0, v14, v15, v1, v2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v16

    goto :goto_4
.end method
