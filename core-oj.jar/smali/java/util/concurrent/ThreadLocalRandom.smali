.class public Ljava/util/concurrent/ThreadLocalRandom;
.super Ljava/util/Random;
.source "ThreadLocalRandom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ThreadLocalRandom$1;,
        Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;,
        Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;,
        Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;
    }
.end annotation


# static fields
.field static final BAD_BOUND:Ljava/lang/String; = "bound must be positive"

.field static final BAD_RANGE:Ljava/lang/String; = "bound must be greater than origin"

.field static final BAD_SIZE:Ljava/lang/String; = "size must be non-negative"

.field private static final DOUBLE_UNIT:D = 1.1102230246251565E-16

.field private static final FLOAT_UNIT:F = 5.9604645E-8f

.field private static final GAMMA:J = -0x61c8864680b583ebL

.field private static final PROBE:J

.field private static final PROBE_INCREMENT:I = -0x61c88647

.field private static final SECONDARY:J

.field private static final SEED:J

.field private static final SEEDER_INCREMENT:J = -0x4498517a7b3558c5L

.field private static final U:Lsun/misc/Unsafe;

.field static final instance:Ljava/util/concurrent/ThreadLocalRandom;

.field private static final nextLocalGaussian:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final probeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final seeder:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = -0x5135b0e98579898dL


# instance fields
.field initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-wide/16 v12, 0xff

    const/4 v11, 0x0

    const/16 v10, 0x8

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/io/ObjectStreamField;

    new-instance v6, Ljava/io/ObjectStreamField;

    const-string/jumbo v7, "rnd"

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v6, v7, v8}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v6, v5, v11

    new-instance v6, Ljava/io/ObjectStreamField;

    const-string/jumbo v7, "initialized"

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v6, v7, v8}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v7, 0x1

    aput-object v6, v5, v7

    sput-object v5, Ljava/util/concurrent/ThreadLocalRandom;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v5

    sput-object v5, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    :try_start_0
    sget-object v5, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    const-class v6, Ljava/lang/Thread;

    const-string/jumbo v7, "threadLocalRandomSeed"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Ljava/util/concurrent/ThreadLocalRandom;->SEED:J

    sget-object v5, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    const-class v6, Ljava/lang/Thread;

    const-string/jumbo v7, "threadLocalRandomProbe"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Ljava/util/concurrent/ThreadLocalRandom;->PROBE:J

    sget-object v5, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    const-class v6, Ljava/lang/Thread;

    const-string/jumbo v7, "threadLocalRandomSecondarySeed"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Ljava/util/concurrent/ThreadLocalRandom;->SECONDARY:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v5, Ljava/lang/ThreadLocal;

    invoke-direct {v5}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v5, Ljava/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v5, Ljava/util/concurrent/ThreadLocalRandom;->probeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v5, Ljava/util/concurrent/ThreadLocalRandom;

    invoke-direct {v5}, Ljava/util/concurrent/ThreadLocalRandom;-><init>()V

    sput-object v5, Ljava/util/concurrent/ThreadLocalRandom;->instance:Ljava/util/concurrent/ThreadLocalRandom;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v8

    xor-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v5, Ljava/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v5, Ljava/util/concurrent/ThreadLocalRandom$1;

    invoke-direct {v5}, Ljava/util/concurrent/ThreadLocalRandom$1;-><init>()V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v10}, Ljava/security/SecureRandom;->getSeed(I)[B

    move-result-object v4

    aget-byte v5, v4, v11

    int-to-long v6, v5

    and-long v2, v6, v12

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v10, :cond_0

    shl-long v6, v2, v10

    aget-byte v5, v4, v1

    int-to-long v8, v5

    and-long/2addr v8, v12

    or-long v2, v6, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :cond_0
    sget-object v5, Ljava/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->initialized:Z

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

    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->PROBE:J

    invoke-virtual {v0, v1, v2, v3, p0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return p0
.end method

.method public static current()Ljava/util/concurrent/ThreadLocalRandom;
    .locals 4

    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->PROBE:J

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->localInit()V

    :cond_0
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->instance:Ljava/util/concurrent/ThreadLocalRandom;

    return-object v0
.end method

.method static final getProbe()I
    .locals 4

    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->PROBE:J

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static final localInit()V
    .locals 8

    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->probeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    const v2, -0x61c88647

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_0

    const/4 v7, 0x1

    :goto_0
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v2, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->SEED:J

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->PROBE:J

    invoke-virtual {v0, v1, v2, v3, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void

    :cond_0
    move v7, v6

    goto :goto_0
.end method

.method private static mix32(J)I
    .locals 6

    const/16 v4, 0x21

    ushr-long v0, p0, v4

    xor-long/2addr v0, p0

    const-wide v2, -0xae502812aa7333L

    mul-long p0, v0, v2

    ushr-long v0, p0, v4

    xor-long/2addr v0, p0

    const-wide v2, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr v0, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static mix64(J)J
    .locals 6

    const/16 v4, 0x21

    ushr-long v0, p0, v4

    xor-long/2addr v0, p0

    const-wide v2, -0xae502812aa7333L

    mul-long p0, v0, v2

    ushr-long v0, p0, v4

    xor-long/2addr v0, p0

    const-wide v2, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long p0, v0, v2

    ushr-long v0, p0, v4

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method static final nextSecondarySeed()I
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ThreadLocalRandom;->SECONDARY:J

    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    if-eqz v0, :cond_1

    shl-int/lit8 v2, v0, 0xd

    xor-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x11

    xor-int/2addr v0, v2

    shl-int/lit8 v2, v0, 0x5

    xor-int/2addr v0, v2

    :cond_0
    :goto_0
    sget-object v2, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ThreadLocalRandom;->SECONDARY:J

    invoke-virtual {v2, v1, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :cond_1
    sget-object v2, Ljava/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v4, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    const-string/jumbo v1, "rnd"

    sget-object v2, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget-wide v4, Ljava/util/concurrent/ThreadLocalRandom;->SEED:J

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;J)V

    const-string/jumbo v1, "initialized"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    return-void
.end method


# virtual methods
.method public doubles()Ljava/util/stream/DoubleStream;
    .locals 10

    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v8, 0x0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public doubles(DD)Ljava/util/stream/DoubleStream;
    .locals 11

    const/4 v10, 0x0

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v10

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    invoke-static {v1, v10}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public doubles(J)Ljava/util/stream/DoubleStream;
    .locals 11

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v8, 0x0

    move-wide v4, p1

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public doubles(JDD)Ljava/util/stream/DoubleStream;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmpg-double v0, p3, p5

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    const-wide/16 v2, 0x0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method final internalNextDouble(DD)D
    .locals 7

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong()J

    move-result-wide v2

    const/16 v4, 0xb

    ushr-long/2addr v2, v4

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ca0000000000000L

    mul-double v0, v2, v4

    cmpg-double v2, p1, p3

    if-gez v2, :cond_0

    sub-double v2, p3, p1

    mul-double/2addr v2, v0

    add-double v0, v2, p1

    cmpl-double v2, v0, p3

    if-ltz v2, :cond_0

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method final internalNextInt(II)I
    .locals 6

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v2

    if-ge p1, p2, :cond_0

    sub-int v1, p2, p1

    add-int/lit8 v0, v1, -0x1

    and-int v4, v1, v0

    if-nez v4, :cond_1

    and-int v4, v2, v0

    add-int v2, v4, p1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-lez v1, :cond_3

    ushr-int/lit8 v3, v2, 0x1

    :goto_1
    add-int v4, v3, v0

    rem-int v2, v3, v1

    sub-int/2addr v4, v2

    if-gez v4, :cond_2

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v4

    ushr-int/lit8 v3, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v2, p1

    goto :goto_0

    :cond_3
    :goto_2
    if-lt v2, p1, :cond_4

    if-lt v2, p2, :cond_0

    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v2

    goto :goto_2
.end method

.method final internalNextLong(JJ)J
    .locals 13

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v4

    cmp-long v8, p1, p3

    if-gez v8, :cond_0

    sub-long v2, p3, p1

    const-wide/16 v8, 0x1

    sub-long v0, v2, v8

    and-long v8, v2, v0

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    and-long v8, v4, v0

    add-long v4, v8, p1

    :cond_0
    :goto_0
    return-wide v4

    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_3

    const/4 v8, 0x1

    ushr-long v6, v4, v8

    :goto_1
    add-long v8, v6, v0

    rem-long v4, v6, v2

    sub-long/2addr v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v8

    const/4 v10, 0x1

    ushr-long v6, v8, v10

    goto :goto_1

    :cond_2
    add-long/2addr v4, p1

    goto :goto_0

    :cond_3
    :goto_2
    cmp-long v8, v4, p1

    if-ltz v8, :cond_4

    cmp-long v8, v4, p3

    if-ltz v8, :cond_0

    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v4

    goto :goto_2
.end method

.method public ints()Ljava/util/stream/IntStream;
    .locals 8

    const/4 v7, 0x0

    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const v6, 0x7fffffff

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    invoke-static {v1, v7}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public ints(II)Ljava/util/stream/IntStream;
    .locals 8

    if-lt p1, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public ints(J)Ljava/util/stream/IntStream;
    .locals 9

    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    const v6, 0x7fffffff

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    invoke-static {v1, v7}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public ints(JII)Ljava/util/stream/IntStream;
    .locals 9

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-lt p3, p4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public longs()Ljava/util/stream/LongStream;
    .locals 10

    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    move-wide v6, v4

    move-wide v8, v2

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public longs(J)Ljava/util/stream/LongStream;
    .locals 11

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    const-wide v6, 0x7fffffffffffffffL

    move-wide v4, p1

    move-wide v8, v2

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public longs(JJ)Ljava/util/stream/LongStream;
    .locals 11

    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public longs(JJJ)Ljava/util/stream/LongStream;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v0, p3, p5

    if-ltz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    const-wide/16 v2, 0x0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method protected next(I)I
    .locals 3

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v0

    rsub-int/lit8 v2, p1, 0x40

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public nextBoolean()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public nextDouble()D
    .locals 4

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public nextDouble(D)D
    .locals 7

    const-wide/16 v2, 0x0

    cmpl-double v2, p1, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "bound must be positive"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v2

    const/16 v4, 0xb

    ushr-long/2addr v2, v4

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ca0000000000000L

    mul-double/2addr v2, v4

    mul-double v0, v2, p1

    cmpg-double v2, v0, p1

    if-gez v2, :cond_2

    :goto_1
    return-wide v0

    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_1
.end method

.method public nextDouble(DD)D
    .locals 3

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextDouble(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public nextFloat()F
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v0

    ushr-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    const/high16 v1, 0x33800000

    mul-float/2addr v0, v1

    return v0
.end method

.method public nextGaussian()D
    .locals 14

    sget-object v1, Ljava/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    return-wide v10

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v6, v10, v12

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v8, v10, v12

    mul-double v10, v6, v6

    mul-double v12, v8, v8

    add-double v4, v10, v12

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v4, v10

    if-gez v1, :cond_0

    const-wide/16 v10, 0x0

    cmpl-double v1, v4, v10

    if-eqz v1, :cond_0

    invoke-static {v4, v5}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide v10

    const-wide/high16 v12, -0x4000000000000000L    # -2.0

    mul-double/2addr v10, v12

    div-double/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    new-instance v10, Ljava/lang/Double;

    mul-double v12, v8, v2

    invoke-direct {v10, v12, v13}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    mul-double v10, v6, v2

    return-wide v10
.end method

.method public nextInt()I
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 6

    if-gtz p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "bound must be positive"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v1

    add-int/lit8 v0, p1, -0x1

    and-int v3, p1, v0

    if-nez v3, :cond_2

    and-int/2addr v1, v0

    :cond_1
    return v1

    :cond_2
    ushr-int/lit8 v2, v1, 0x1

    :goto_0
    add-int v3, v2, v0

    rem-int v1, v2, p1

    sub-int/2addr v3, v1

    if-gez v3, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v3

    ushr-int/lit8 v2, v3, 0x1

    goto :goto_0
.end method

.method public nextInt(II)I
    .locals 2

    if-lt p1, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextInt(II)I

    move-result v0

    return v0
.end method

.method public nextLong()J
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextLong(J)J
    .locals 11

    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    cmp-long v6, p1, v8

    if-gtz v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "bound must be positive"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v2

    const-wide/16 v6, 0x1

    sub-long v0, p1, v6

    and-long v6, p1, v0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    and-long/2addr v2, v0

    :cond_1
    return-wide v2

    :cond_2
    ushr-long v4, v2, v10

    :goto_0
    add-long v6, v4, v0

    rem-long v2, v4, p1

    sub-long/2addr v6, v2

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v6

    ushr-long v4, v6, v10

    goto :goto_0
.end method

.method public nextLong(JJ)J
    .locals 3

    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method final nextSeed()J
    .locals 10

    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->SEED:J

    sget-object v6, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    sget-wide v8, Ljava/util/concurrent/ThreadLocalRandom;->SEED:J

    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    const-wide v8, -0x61c8864680b583ebL

    add-long v4, v6, v8

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-wide v4
.end method

.method public setSeed(J)V
    .locals 1

    iget-boolean v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->initialized:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method
