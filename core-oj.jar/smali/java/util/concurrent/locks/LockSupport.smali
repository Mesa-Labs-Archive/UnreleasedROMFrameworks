.class public Ljava/util/concurrent/locks/LockSupport;
.super Ljava/lang/Object;
.source "LockSupport.java"


# static fields
.field private static final PARKBLOCKER:J

.field private static final SECONDARY:J

.field private static final U:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    :try_start_0
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/lang/Thread;

    const-string/jumbo v3, "parkBlocker"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/LockSupport;->PARKBLOCKER:J

    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/lang/Thread;

    const-string/jumbo v3, "threadLocalRandomSecondarySeed"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/LockSupport;->SECONDARY:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBlocker(Ljava/lang/Thread;)Ljava/lang/Object;
    .locals 4

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/LockSupport;->PARKBLOCKER:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static final nextSecondarySeed()I
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/locks/LockSupport;->SECONDARY:J

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
    sget-object v2, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/locks/LockSupport;->SECONDARY:J

    invoke-virtual {v2, v1, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :cond_1
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static park()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->park(ZJ)V

    return-void
.end method

.method public static park(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lsun/misc/Unsafe;->park(ZJ)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    return-void
.end method

.method public static parkNanos(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1}, Lsun/misc/Unsafe;->park(ZJ)V

    :cond_0
    return-void
.end method

.method public static parkNanos(Ljava/lang/Object;J)V
    .locals 5

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p2}, Lsun/misc/Unsafe;->park(ZJ)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static parkUntil(J)V
    .locals 2

    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1}, Lsun/misc/Unsafe;->park(ZJ)V

    return-void
.end method

.method public static parkUntil(Ljava/lang/Object;J)V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Lsun/misc/Unsafe;->park(ZJ)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    return-void
.end method

.method private static setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V
    .locals 4

    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/LockSupport;->PARKBLOCKER:J

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public static unpark(Ljava/lang/Thread;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
