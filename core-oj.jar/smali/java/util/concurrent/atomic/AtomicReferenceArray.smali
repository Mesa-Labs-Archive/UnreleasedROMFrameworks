.class public Ljava/util/concurrent/atomic/AtomicReferenceArray;
.super Ljava/lang/Object;
.source "AtomicReferenceArray.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ABASE:I

.field private static final ARRAY:J

.field private static final ASHIFT:I

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = -0x562d215e419a9ff4L


# instance fields
.field private final array:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;->U:Lsun/misc/Unsafe;

    :try_start_0
    sget-object v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;->U:Lsun/misc/Unsafe;

    const-class v3, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const-string/jumbo v4, "array"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;->ARRAY:J

    sget-object v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;->U:Lsun/misc/Unsafe;

    const-class v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    sput v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;->ABASE:I

    sget-object v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;->U:Lsun/misc/Unsafe;

    const-class v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/Error;

    const-string/jumbo v3, "array index scale not a power of two"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1f

    sput v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;->ASHIFT:I
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const-class v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    return-void
.end method

.method private static byteOffset(I)J
    .locals 4

    int-to-long v0, p0

    sget v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;->ASHIFT:I

    shl-long/2addr v0, v2

    sget v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;->ABASE:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private checkedByteOffset(I)J
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

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
    invoke-static {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->byteOffset(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private compareAndSetRaw(JLjava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;TE;)Z"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getRaw(J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    const-string/jumbo v2, "array"

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string/jumbo v2, "Not array type"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, [Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const-class v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    :cond_2
    sget-object v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;->ARRAY:J

    invoke-virtual {v1, p0, v2, v3, v0}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final accumulateAndGet(ILjava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;",
            "Ljava/util/function/BinaryOperator",
            "<TE;>;)TE;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->checkedByteOffset(I)J

    move-result-wide v2

    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getRaw(J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1, p2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v2, v3, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSetRaw(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v0
.end method

.method public final compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;TE;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->checkedByteOffset(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSetRaw(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->checkedByteOffset(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getRaw(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getAndAccumulate(ILjava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;",
            "Ljava/util/function/BinaryOperator",
            "<TE;>;)TE;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->checkedByteOffset(I)J

    move-result-wide v2

    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getRaw(J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1, p2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v2, v3, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSetRaw(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v1
.end method

.method public final getAndSet(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->checkedByteOffset(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->getAndSetObject(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getAndUpdate(ILjava/util/function/UnaryOperator;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/UnaryOperator",
            "<TE;>;)TE;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->checkedByteOffset(I)J

    move-result-wide v2

    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getRaw(J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v2, v3, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSetRaw(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v1
.end method

.method public final lazySet(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->checkedByteOffset(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final length()I
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public final set(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->U:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->checkedByteOffset(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

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
    invoke-static {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->byteOffset(I)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getRaw(J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

.method public final updateAndGet(ILjava/util/function/UnaryOperator;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/UnaryOperator",
            "<TE;>;)TE;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->checkedByteOffset(I)J

    move-result-wide v2

    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getRaw(J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v2, v3, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSetRaw(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v0
.end method

.method public final weakCompareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
