.class public Lsun/nio/ch/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/Util$1;,
        Lsun/nio/ch/Util$BufferCache;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final TEMP_BUF_POOL_SIZE:I

.field private static bufferCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lsun/nio/ch/Util$BufferCache;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile bugLevel:Ljava/lang/String;

.field private static pageSize:I

.field private static unsafe:Lsun/misc/Unsafe;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lsun/nio/ch/Util;->TEMP_BUF_POOL_SIZE:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/nio/ch/Util;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/ch/Util;->-assertionsDisabled:Z

    sget v0, Lsun/nio/ch/IOUtil;->IOV_MAX:I

    sput v0, Lsun/nio/ch/Util;->TEMP_BUF_POOL_SIZE:I

    new-instance v0, Lsun/nio/ch/Util$1;

    invoke-direct {v0}, Lsun/nio/ch/Util$1;-><init>()V

    sput-object v0, Lsun/nio/ch/Util;->bufferCache:Ljava/lang/ThreadLocal;

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/nio/ch/Util;->unsafe:Lsun/misc/Unsafe;

    const/4 v0, -0x1

    sput v0, Lsun/nio/ch/Util;->pageSize:I

    const/4 v0, 0x0

    sput-object v0, Lsun/nio/ch/Util;->bugLevel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _get(J)B
    .locals 2

    sget-object v0, Lsun/nio/ch/Util;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    return v0
.end method

.method private static _put(JB)V
    .locals 2

    sget-object v0, Lsun/nio/ch/Util;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putByte(JB)V

    return-void
.end method

.method static atBugLevel(Ljava/lang/String;)Z
    .locals 3

    sget-object v1, Lsun/nio/ch/Util;->bugLevel:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-static {}, Lsun/misc/VM;->isBooted()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v2, "sun.nio.ch.bugLevel"

    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    :goto_0
    sput-object v0, Lsun/nio/ch/Util;->bugLevel:Ljava/lang/String;

    :cond_1
    sget-object v1, Lsun/nio/ch/Util;->bugLevel:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static erase(Ljava/nio/ByteBuffer;)V
    .locals 7

    sget-object v1, Lsun/nio/ch/Util;->unsafe:Lsun/misc/Unsafe;

    move-object v0, p0

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    int-to-long v4, v0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->setMemory(JJB)V

    return-void
.end method

.method private static free(Ljava/nio/ByteBuffer;)V
    .locals 1

    check-cast p0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {p0}, Lsun/nio/ch/DirectBuffer;->cleaner()Lsun/misc/Cleaner;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    :cond_0
    return-void
.end method

.method public static getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;
    .locals 3

    sget-object v2, Lsun/nio/ch/Util;->bufferCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/nio/ch/Util$BufferCache;

    invoke-virtual {v1, p0}, Lsun/nio/ch/Util$BufferCache;->get(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lsun/nio/ch/Util$BufferCache;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lsun/nio/ch/Util$BufferCache;->removeFirst()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lsun/nio/ch/Util;->free(Ljava/nio/ByteBuffer;)V

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2
.end method

.method static offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2

    sget-boolean v1, Lsun/nio/ch/Util;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    sget-object v1, Lsun/nio/ch/Util;->bufferCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/nio/ch/Util$BufferCache;

    invoke-virtual {v0, p0}, Lsun/nio/ch/Util$BufferCache;->offerFirst(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lsun/nio/ch/Util;->free(Ljava/nio/ByteBuffer;)V

    :cond_1
    return-void
.end method

.method static offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2

    sget-boolean v1, Lsun/nio/ch/Util;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    sget-object v1, Lsun/nio/ch/Util;->bufferCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/nio/ch/Util$BufferCache;

    invoke-virtual {v0, p0}, Lsun/nio/ch/Util$BufferCache;->offerLast(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lsun/nio/ch/Util;->free(Ljava/nio/ByteBuffer;)V

    :cond_1
    return-void
.end method

.method static pageSize()I
    .locals 2

    sget v0, Lsun/nio/ch/Util;->pageSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lsun/nio/ch/Util;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    invoke-virtual {v0}, Lsun/misc/Unsafe;->pageSize()I

    move-result v0

    sput v0, Lsun/nio/ch/Util;->pageSize:I

    :cond_0
    sget v0, Lsun/nio/ch/Util;->pageSize:I

    return v0
.end method

.method public static releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-static {p0}, Lsun/nio/ch/Util;->offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static subsequence([Ljava/nio/ByteBuffer;II)[Ljava/nio/ByteBuffer;
    .locals 4

    if-nez p1, :cond_0

    array-length v3, p0

    if-ne p2, v3, :cond_0

    return-object p0

    :cond_0
    move v2, p2

    new-array v0, p2, [Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    add-int v3, p1, v1

    aget-object v3, p0, v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static ungrowableSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Lsun/nio/ch/Util$2;

    invoke-direct {v0, p0}, Lsun/nio/ch/Util$2;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method static unsafe()Lsun/misc/Unsafe;
    .locals 1

    sget-object v0, Lsun/nio/ch/Util;->unsafe:Lsun/misc/Unsafe;

    return-object v0
.end method
