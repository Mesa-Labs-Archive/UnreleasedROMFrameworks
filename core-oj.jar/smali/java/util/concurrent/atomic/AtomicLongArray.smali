.class public Ljava/util/concurrent/atomic/AtomicLongArray;
.super Ljava/lang/Object;
.source "AtomicLongArray.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ABASE:I

.field private static final ASHIFT:I

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = -0x200931f59d1d4008L


# instance fields
.field private final array:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    sget-object v1, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    const-class v2, [J

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    sput v1, Ljava/util/concurrent/atomic/AtomicLongArray;->ABASE:I

    sget-object v1, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    const-class v2, [J

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Error;

    const-string/jumbo v2, "array index scale not a power of two"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    sput v1, Ljava/util/concurrent/atomic/AtomicLongArray;->ASHIFT:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [J

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    return-void
.end method

.method public constructor <init>([J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    return-void
.end method

.method private static byteOffset(I)J
    .locals 4

    int-to-long v0, p0

    sget v2, Ljava/util/concurrent/atomic/AtomicLongArray;->ASHIFT:I

    shl-long/2addr v0, v2

    sget v2, Ljava/util/concurrent/atomic/AtomicLongArray;->ABASE:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private checkedByteOffset(I)J
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->byteOffset(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private compareAndSetRaw(JJJ)Z
    .locals 9

    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method private getRaw(J)J
    .locals 3

    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-virtual {v0, v1, p1, p2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final accumulateAndGet(IJLjava/util/function/LongBinaryOperator;)J
    .locals 8

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v2

    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v4

    invoke-interface {p4, v4, v5, p2, p3}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v6
.end method

.method public addAndGet(IJ)J
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndAdd(IJ)J

    move-result-wide v0

    add-long/2addr v0, p2

    return-wide v0
.end method

.method public final compareAndSet(IJJ)Z
    .locals 8

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v2

    move-object v1, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    move-result v0

    return v0
.end method

.method public final decrementAndGet(I)J
    .locals 4

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndAdd(IJ)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final get(I)J
    .locals 2

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndAccumulate(IJLjava/util/function/LongBinaryOperator;)J
    .locals 8

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v2

    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v4

    invoke-interface {p4, v4, v5, p2, p3}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v4
.end method

.method public final getAndAdd(IJ)J
    .locals 6

    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndDecrement(I)J
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndAdd(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndIncrement(I)J
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndAdd(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndSet(IJ)J
    .locals 6

    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndSetLong(Ljava/lang/Object;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndUpdate(ILjava/util/function/LongUnaryOperator;)J
    .locals 8

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v2

    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v4

    invoke-interface {p2, v4, v5}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v4
.end method

.method public final incrementAndGet(I)J
    .locals 4

    const-wide/16 v2, 0x1

    invoke-virtual {p0, p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndAdd(IJ)J

    move-result-wide v0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final lazySet(IJ)V
    .locals 6

    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final length()I
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    array-length v0, v0

    return v0
.end method

.method public final set(IJ)V
    .locals 6

    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    array-length v3, v3

    add-int/lit8 v2, v3, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string/jumbo v3, "[]"

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->byteOffset(I)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-ne v1, v2, :cond_1

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final updateAndGet(ILjava/util/function/LongUnaryOperator;)J
    .locals 8

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v2

    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v4

    invoke-interface {p2, v4, v5}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v6
.end method

.method public final weakCompareAndSet(IJJ)Z
    .locals 2

    invoke-virtual/range {p0 .. p5}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    return v0
.end method
