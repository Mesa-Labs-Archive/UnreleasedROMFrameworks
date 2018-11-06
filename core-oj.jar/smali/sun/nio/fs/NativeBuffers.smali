.class Lsun/nio/fs/NativeBuffers;
.super Ljava/lang/Object;
.source "NativeBuffers.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final TEMP_BUF_POOL_SIZE:I = 0x3

.field private static threadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Lsun/nio/fs/NativeBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final unsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/nio/fs/NativeBuffers;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/fs/NativeBuffers;->-assertionsDisabled:Z

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/NativeBuffers;->unsafe:Lsun/misc/Unsafe;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lsun/nio/fs/NativeBuffers;->threadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static allocNativeBuffer(I)Lsun/nio/fs/NativeBuffer;
    .locals 1

    const/16 v0, 0x800

    if-ge p0, v0, :cond_0

    const/16 p0, 0x800

    :cond_0
    new-instance v0, Lsun/nio/fs/NativeBuffer;

    invoke-direct {v0, p0}, Lsun/nio/fs/NativeBuffer;-><init>(I)V

    return-object v0
.end method

.method static asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;
    .locals 2

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    invoke-static {p0, v0}, Lsun/nio/fs/NativeBuffers;->copyCStringToNativeBuffer([BLsun/nio/fs/NativeBuffer;)V

    return-object v0
.end method

.method static copyCStringToNativeBuffer([BLsun/nio/fs/NativeBuffer;)V
    .locals 8

    array-length v1, p0

    int-to-long v2, v1

    sget-boolean v1, Lsun/nio/fs/NativeBuffers;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lsun/nio/fs/NativeBuffer;->size()I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, 0x1

    add-long/2addr v6, v2

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-long v4, v0

    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    sget-object v1, Lsun/nio/fs/NativeBuffers;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {p1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    aget-byte v6, p0, v0

    invoke-virtual {v1, v4, v5, v6}, Lsun/misc/Unsafe;->putByte(JB)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lsun/nio/fs/NativeBuffers;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {p1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v4

    add-long/2addr v4, v2

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lsun/misc/Unsafe;->putByte(JB)V

    return-void
.end method

.method static getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Lsun/nio/fs/NativeBuffers;->getNativeBufferFromCache(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lsun/nio/fs/NativeBuffer;->setOwner(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-static {p0}, Lsun/nio/fs/NativeBuffers;->allocNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v1

    return-object v1
.end method

.method static getNativeBufferFromCache(I)Lsun/nio/fs/NativeBuffer;
    .locals 5

    const/4 v4, 0x0

    sget-object v3, Lsun/nio/fs/NativeBuffers;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lsun/nio/fs/NativeBuffer;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->size()I

    move-result v3

    if-lt v3, p0, :cond_0

    aput-object v4, v1, v2

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method static releaseNativeBuffer(Lsun/nio/fs/NativeBuffer;)V
    .locals 6

    const/4 v5, 0x3

    sget-object v3, Lsun/nio/fs/NativeBuffers;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/nio/fs/NativeBuffer;

    if-nez v0, :cond_0

    new-array v0, v5, [Lsun/nio/fs/NativeBuffer;

    const/4 v3, 0x0

    aput-object p0, v0, v3

    sget-object v3, Lsun/nio/fs/NativeBuffers;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    aput-object p0, v0, v2

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_4

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->size()I

    move-result v3

    invoke-virtual {p0}, Lsun/nio/fs/NativeBuffer;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->cleaner()Lsun/misc/Cleaner;

    move-result-object v3

    invoke-virtual {v3}, Lsun/misc/Cleaner;->clean()V

    aput-object p0, v0, v2

    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lsun/nio/fs/NativeBuffer;->cleaner()Lsun/misc/Cleaner;

    move-result-object v3

    invoke-virtual {v3}, Lsun/misc/Cleaner;->clean()V

    return-void
.end method
