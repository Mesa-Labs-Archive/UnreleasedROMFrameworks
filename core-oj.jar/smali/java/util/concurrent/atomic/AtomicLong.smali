.class public Ljava/util/concurrent/atomic/AtomicLong;
.super Ljava/lang/Number;
.source "AtomicLong.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final U:Lsun/misc/Unsafe;

.field private static final VALUE:J

.field static final VM_SUPPORTS_LONG_CAS:Z

.field private static final serialVersionUID:J = 0x1ac0fab477001718L


# instance fields
.field private volatile value:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    invoke-static {}, Ljava/util/concurrent/atomic/AtomicLong;->VMSupportsCS8()Z

    move-result v1

    sput-boolean v1, Ljava/util/concurrent/atomic/AtomicLong;->VM_SUPPORTS_LONG_CAS:Z

    :try_start_0
    sget-object v1, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-wide p1, p0, Ljava/util/concurrent/atomic/AtomicLong;->value:J

    return-void
.end method

.method private static native VMSupportsCS8()Z
.end method


# virtual methods
.method public final accumulateAndGet(JLjava/util/function/LongBinaryOperator;)J
    .locals 5

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-interface {p3, v2, v3, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    return-wide v0
.end method

.method public final addAndGet(J)J
    .locals 7

    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public final compareAndSet(JJ)Z
    .locals 9

    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method public final decrementAndGet()J
    .locals 6

    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    const-wide/16 v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public doubleValue()D
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public final get()J
    .locals 2

    iget-wide v0, p0, Ljava/util/concurrent/atomic/AtomicLong;->value:J

    return-wide v0
.end method

.method public final getAndAccumulate(JLjava/util/function/LongBinaryOperator;)J
    .locals 5

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-interface {p3, v2, v3, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    return-wide v2
.end method

.method public final getAndAdd(J)J
    .locals 7

    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndDecrement()J
    .locals 6

    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    const-wide/16 v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndIncrement()J
    .locals 6

    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    const-wide/16 v4, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndSet(J)J
    .locals 7

    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndSetLong(Ljava/lang/Object;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndUpdate(Ljava/util/function/LongUnaryOperator;)J
    .locals 5

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    invoke-virtual {p0, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    return-wide v2
.end method

.method public final incrementAndGet()J
    .locals 6

    const-wide/16 v4, 0x1

    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    move-result-wide v0

    add-long/2addr v0, v4

    return-wide v0
.end method

.method public intValue()I
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final lazySet(J)V
    .locals 7

    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public longValue()J
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final set(J)V
    .locals 7

    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateAndGet(Ljava/util/function/LongUnaryOperator;)J
    .locals 5

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    invoke-virtual {p0, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    return-wide v0
.end method

.method public final weakCompareAndSet(JJ)Z
    .locals 9

    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->VALUE:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method
