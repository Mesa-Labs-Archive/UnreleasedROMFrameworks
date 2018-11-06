.class Lsun/nio/fs/UnixPath;
.super Lsun/nio/fs/AbstractPath;
.source "UnixPath.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static encoder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final fs:Lsun/nio/fs/UnixFileSystem;

.field private hash:I

.field private volatile offsets:[I

.field private final path:[B

.field private volatile stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/nio/fs/UnixPath;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/fs/UnixPath;->-assertionsDisabled:Z

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lsun/nio/fs/UnixPath;->encoder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Lsun/nio/fs/UnixFileSystem;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lsun/nio/fs/UnixPath;->normalizeAndCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lsun/nio/fs/UnixPath;->encode(Lsun/nio/fs/UnixFileSystem;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-void
.end method

.method constructor <init>(Lsun/nio/fs/UnixFileSystem;[B)V
    .locals 0

    invoke-direct {p0}, Lsun/nio/fs/AbstractPath;-><init>()V

    iput-object p1, p0, Lsun/nio/fs/UnixPath;->fs:Lsun/nio/fs/UnixFileSystem;

    iput-object p2, p0, Lsun/nio/fs/UnixPath;->path:[B

    return-void
.end method

.method private static checkNotNul(Ljava/lang/String;C)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/nio/file/InvalidPathException;

    const-string/jumbo v1, "Nul character not allowed"

    invoke-direct {v0, p0, v1}, Ljava/nio/file/InvalidPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private emptyPath()Lsun/nio/fs/UnixPath;
    .locals 3

    new-instance v0, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v0, v1, v2}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v0
.end method

.method private static encode(Lsun/nio/fs/UnixFileSystem;Ljava/lang/String;)[B
    .locals 14

    sget-object v9, Lsun/nio/fs/UnixPath;->encoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v9}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/SoftReference;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/charset/CharsetEncoder;

    :goto_0
    if-nez v4, :cond_0

    invoke-static {}, Lsun/nio/fs/Util;->jnuEncoding()Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v9

    sget-object v10, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v9, v10}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v9

    sget-object v10, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v9, v10}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v4

    sget-object v9, Lsun/nio/fs/UnixPath;->encoder:Ljava/lang/ThreadLocal;

    new-instance v10, Ljava/lang/ref/SoftReference;

    invoke-direct {v10, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-virtual {p0, v9}, Lsun/nio/fs/UnixFileSystem;->normalizeNativePath([C)[C

    move-result-object v2

    array-length v9, v2

    int-to-double v10, v9

    invoke-virtual {v4}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v9

    float-to-double v12, v9

    mul-double/2addr v10, v12

    double-to-int v9, v10

    new-array v0, v9, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v2}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v4}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    const/4 v9, 0x1

    invoke-virtual {v4, v3, v1, v9}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_3

    new-instance v9, Ljava/nio/file/InvalidPathException;

    const-string/jumbo v10, "Malformed input or input contains unmappable characters"

    invoke-direct {v9, p1, v10}, Ljava/nio/file/InvalidPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v9

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v9

    xor-int/lit8 v6, v9, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    array-length v9, v0

    if-eq v7, v9, :cond_4

    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method private initOffsets()V
    .locals 8

    const/16 v7, 0x2f

    iget-object v6, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    if-nez v6, :cond_7

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lsun/nio/fs/UnixPath;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    :cond_0
    new-array v5, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v6, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v6, v6

    if-ge v3, v6, :cond_5

    iget-object v6, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v0, v6, v3

    if-ne v0, v7, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    :cond_2
    iget-object v6, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v6, v6

    if-ge v3, v6, :cond_0

    iget-object v6, p0, Lsun/nio/fs/UnixPath;->path:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v0, v6, v3

    if-eq v0, v7, :cond_1

    add-int/lit8 v1, v1, 0x1

    move v3, v4

    :goto_1
    iget-object v6, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v6, v6

    if-ge v3, v6, :cond_2

    iget-object v6, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v6, v6, v3

    if-eq v6, v7, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v4, v3, 0x1

    aput v3, v5, v1

    move v3, v4

    :goto_2
    iget-object v6, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v6, v6

    if-ge v3, v6, :cond_4

    iget-object v6, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v6, v6, v3

    if-eq v6, v7, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    if-nez v6, :cond_6

    iput-object v5, p0, Lsun/nio/fs/UnixPath;->offsets:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit p0

    :cond_7
    return-void

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v1, v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static normalize(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x2f

    const/4 v6, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    move v2, p1

    :goto_0
    if-lez v2, :cond_1

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const-string/jumbo v5, "/"

    return-object v5

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    if-lez p2, :cond_3

    invoke-virtual {p0, v6, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/4 v3, 0x0

    move v1, p2

    :goto_1
    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_4

    if-ne v3, v7, :cond_4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-static {p0, v0}, Lsun/nio/fs/UnixPath;->checkNotNul(Ljava/lang/String;C)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v0

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method static normalizeAndCheck(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x2f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_0

    if-ne v3, v4, :cond_0

    add-int/lit8 v4, v1, -0x1

    invoke-static {p0, v2, v4}, Lsun/nio/fs/UnixPath;->normalize(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    invoke-static {p0, v0}, Lsun/nio/fs/UnixPath;->checkNotNul(Ljava/lang/String;C)V

    move v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v3, v4, :cond_2

    add-int/lit8 v4, v2, -0x1

    invoke-static {p0, v2, v4}, Lsun/nio/fs/UnixPath;->normalize(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_2
    return-object p0
.end method

.method private static resolve([B[B)[B
    .locals 7

    const/4 v6, 0x1

    const/16 v5, 0x2f

    const/4 v4, 0x0

    array-length v0, p0

    array-length v1, p1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    aget-byte v3, p1, v4

    if-ne v3, v5, :cond_2

    :cond_1
    return-object p1

    :cond_2
    if-ne v0, v6, :cond_3

    aget-byte v3, p0, v4

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, v1, 0x1

    new-array v2, v3, [B

    aput-byte v5, v2, v4

    invoke-static {p1, v4, v2, v6, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    :goto_0
    return-object v2

    :cond_3
    add-int/lit8 v3, v0, 0x1

    add-int/2addr v3, v1

    new-array v2, v3, [B

    invoke-static {p0, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v3, p0

    aput-byte v5, v2, v3

    add-int/lit8 v3, v0, 0x1

    invoke-static {p1, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method static toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    instance-of v0, p0, Lsun/nio/fs/UnixPath;

    if-nez v0, :cond_1

    new-instance v0, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {v0}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw v0

    :cond_1
    check-cast p0, Lsun/nio/fs/UnixPath;

    return-object p0
.end method


# virtual methods
.method asByteArray()[B
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/UnixPath;->path:[B

    return-object v0
.end method

.method checkDelete()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method checkRead()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method checkWrite()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1}, Lsun/nio/fs/UnixPath;->compareTo(Ljava/nio/file/Path;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/file/Path;)I
    .locals 9

    iget-object v8, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v3, v8

    move-object v8, p1

    check-cast v8, Lsun/nio/fs/UnixPath;

    iget-object v8, v8, Lsun/nio/fs/UnixPath;->path:[B

    array-length v4, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v6, p0, Lsun/nio/fs/UnixPath;->path:[B

    check-cast p1, Lsun/nio/fs/UnixPath;

    iget-object v7, p1, Lsun/nio/fs/UnixPath;->path:[B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_1

    aget-byte v8, v6, v2

    and-int/lit16 v0, v8, 0xff

    aget-byte v8, v7, v2

    and-int/lit16 v1, v8, 0xff

    if-eq v0, v1, :cond_0

    sub-int v8, v0, v1

    return v8

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sub-int v8, v3, v4

    return v8
.end method

.method public endsWith(Ljava/nio/file/Path;)Z
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lsun/nio/fs/UnixPath;

    if-nez v10, :cond_0

    return v12

    :cond_0
    move-object v1, p1

    check-cast v1, Lsun/nio/fs/UnixPath;

    iget-object v10, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v6, v10

    iget-object v10, v1, Lsun/nio/fs/UnixPath;->path:[B

    array-length v2, v10

    if-le v2, v6, :cond_1

    return v12

    :cond_1
    if-lez v6, :cond_2

    if-nez v2, :cond_2

    return v12

    :cond_2
    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_3

    return v12

    :cond_3
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getNameCount()I

    move-result v7

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->getNameCount()I

    move-result v3

    if-le v3, v7, :cond_4

    return v12

    :cond_4
    if-ne v3, v7, :cond_7

    if-nez v7, :cond_5

    return v13

    :cond_5
    move v0, v6

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_6

    add-int/lit8 v0, v6, -0x1

    :cond_6
    if-eq v2, v0, :cond_8

    return v12

    :cond_7
    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v10

    if-eqz v10, :cond_8

    return v12

    :cond_8
    iget-object v10, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    sub-int v11, v7, v3

    aget v8, v10, v11

    iget-object v10, v1, Lsun/nio/fs/UnixPath;->offsets:[I

    aget v4, v10, v12

    sub-int v10, v2, v4

    sub-int v11, v6, v8

    if-eq v10, v11, :cond_9

    return v12

    :cond_9
    move v5, v4

    move v9, v8

    if-ge v5, v2, :cond_a

    iget-object v10, p0, Lsun/nio/fs/UnixPath;->path:[B

    add-int/lit8 v8, v9, 0x1

    aget-byte v10, v10, v9

    iget-object v11, v1, Lsun/nio/fs/UnixPath;->path:[B

    add-int/lit8 v4, v5, 0x1

    aget-byte v11, v11, v5

    if-eq v10, v11, :cond_9

    return v12

    :cond_a
    return v13
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lsun/nio/fs/UnixPath;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1}, Lsun/nio/fs/UnixPath;->compareTo(Ljava/nio/file/Path;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method getByteArrayForSysCalls()[B
    .locals 3

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixFileSystem;->needToResolveAgainstDefaultDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixFileSystem;->defaultDirectory()[B

    move-result-object v1

    iget-object v2, p0, Lsun/nio/fs/UnixPath;->path:[B

    invoke-static {v1, v2}, Lsun/nio/fs/UnixPath;->resolve([B[B)[B

    move-result-object v1

    return-object v1

    :cond_0
    invoke-direct {p0}, Lsun/nio/fs/UnixPath;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lsun/nio/fs/UnixPath;->path:[B

    return-object v1

    :cond_1
    const/4 v1, 0x1

    new-array v0, v1, [B

    const/16 v1, 0x2e

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public bridge synthetic getFileName()Ljava/nio/file/Path;
    .locals 1

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileName()Lsun/nio/fs/UnixPath;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Lsun/nio/fs/UnixPath;
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lsun/nio/fs/UnixPath;->initOffsets()V

    iget-object v4, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    array-length v0, v4

    if-nez v0, :cond_0

    const/4 v4, 0x0

    return-object v4

    :cond_0
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    iget-object v4, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v4, v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v4, v4, v6

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_1

    return-object p0

    :cond_1
    iget-object v4, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    add-int/lit8 v5, v0, -0x1

    aget v1, v4, v5

    iget-object v4, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v4, v4

    sub-int v2, v4, v1

    new-array v3, v2, [B

    iget-object v4, p0, Lsun/nio/fs/UnixPath;->path:[B

    invoke-static {v4, v1, v3, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v4, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v4
.end method

.method public bridge synthetic getFileSystem()Ljava/nio/file/FileSystem;
    .locals 1

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v0

    return-object v0
.end method

.method public getFileSystem()Lsun/nio/fs/UnixFileSystem;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/UnixPath;->fs:Lsun/nio/fs/UnixFileSystem;

    return-object v0
.end method

.method public bridge synthetic getName(I)Ljava/nio/file/Path;
    .locals 1

    invoke-virtual {p0, p1}, Lsun/nio/fs/UnixPath;->getName(I)Lsun/nio/fs/UnixPath;

    move-result-object v0

    return-object v0
.end method

.method public getName(I)Lsun/nio/fs/UnixPath;
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lsun/nio/fs/UnixPath;->initOffsets()V

    if-gez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_0
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    array-length v3, v3

    if-lt p1, v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_1
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    aget v0, v3, p1

    iget-object v3, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v3, v3

    sub-int v1, v3, v0

    :goto_0
    new-array v2, v1, [B

    iget-object v3, p0, Lsun/nio/fs/UnixPath;->path:[B

    invoke-static {v3, v0, v2, v5, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v3, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v3

    :cond_2
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    add-int/lit8 v4, p1, 0x1

    aget v3, v3, v4

    sub-int/2addr v3, v0

    add-int/lit8 v1, v3, -0x1

    goto :goto_0
.end method

.method public getNameCount()I
    .locals 1

    invoke-direct {p0}, Lsun/nio/fs/UnixPath;->initOffsets()V

    iget-object v0, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getParent()Ljava/nio/file/Path;
    .locals 1

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getParent()Lsun/nio/fs/UnixPath;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lsun/nio/fs/UnixPath;
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lsun/nio/fs/UnixPath;->initOffsets()V

    iget-object v3, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    array-length v0, v3

    if-nez v0, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    add-int/lit8 v1, v3, -0x1

    if-gtz v1, :cond_1

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getRoot()Lsun/nio/fs/UnixPath;

    move-result-object v3

    return-object v3

    :cond_1
    new-array v2, v1, [B

    iget-object v3, p0, Lsun/nio/fs/UnixPath;->path:[B

    invoke-static {v3, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v3, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v3
.end method

.method getPathForExceptionMessage()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPathForPermissionCheck()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileSystem;->needToResolveAgainstDefaultDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getByteArrayForSysCalls()[B

    move-result-object v0

    invoke-static {v0}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRoot()Ljava/nio/file/Path;
    .locals 1

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getRoot()Lsun/nio/fs/UnixPath;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lsun/nio/fs/UnixPath;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v0, v0, v1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileSystem;->rootDirectory()Lsun/nio/fs/UnixPath;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lsun/nio/fs/UnixPath;->hash:I

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    add-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lsun/nio/fs/UnixPath;->hash:I

    :cond_1
    return v0
.end method

.method public isAbsolute()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public normalize()Ljava/nio/file/Path;
    .locals 23

    invoke-virtual/range {p0 .. p0}, Lsun/nio/fs/UnixPath;->getNameCount()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct/range {p0 .. p0}, Lsun/nio/fs/UnixPath;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_1

    :cond_0
    return-object p0

    :cond_1
    new-array v9, v5, [Z

    new-array v0, v5, [I

    move-object/from16 v19, v0

    move/from16 v17, v5

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v10

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/UnixPath;->offsets:[I

    move-object/from16 v20, v0

    aget v4, v20, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/UnixPath;->offsets:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/UnixPath;->path:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    sub-int v12, v20, v4

    :goto_1
    aput v12, v19, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/UnixPath;->path:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v4

    const/16 v21, 0x2e

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v12, v0, :cond_4

    const/16 v20, 0x1

    aput-boolean v20, v9, v8

    add-int/lit8 v17, v17, -0x1

    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/UnixPath;->offsets:[I

    move-object/from16 v20, v0

    add-int/lit8 v21, v8, 0x1

    aget v20, v20, v21

    sub-int v20, v20, v4

    add-int/lit8 v12, v20, -0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/UnixPath;->path:[B

    move-object/from16 v20, v0

    add-int/lit8 v21, v4, 0x1

    aget-byte v20, v20, v21

    const/16 v21, 0x2e

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_10

    :cond_6
    move/from16 v16, v17

    const/4 v15, -0x1

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_f

    aget-boolean v20, v9, v8

    if-eqz v20, :cond_8

    :cond_7
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    aget v20, v19, v8

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    move v15, v8

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/UnixPath;->offsets:[I

    move-object/from16 v20, v0

    aget v4, v20, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/UnixPath;->path:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v4

    const/16 v21, 0x2e

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/UnixPath;->path:[B

    move-object/from16 v20, v0

    add-int/lit8 v21, v4, 0x1

    aget-byte v20, v20, v21

    const/16 v21, 0x2e

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    :cond_a
    move v15, v8

    goto :goto_4

    :cond_b
    if-ltz v15, :cond_c

    const/16 v20, 0x1

    aput-boolean v20, v9, v15

    const/16 v20, 0x1

    aput-boolean v20, v9, v8

    add-int/lit8 v17, v17, -0x2

    const/4 v15, -0x1

    goto :goto_4

    :cond_c
    if-eqz v10, :cond_7

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v8, :cond_d

    aget-boolean v20, v9, v11

    if-nez v20, :cond_e

    const/4 v7, 0x1

    :cond_d
    if-nez v7, :cond_7

    const/16 v20, 0x1

    aput-boolean v20, v9, v8

    add-int/lit8 v17, v17, -0x1

    goto :goto_4

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_f
    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_6

    :cond_10
    move/from16 v0, v17

    if-ne v0, v5, :cond_11

    return-object p0

    :cond_11
    if-nez v17, :cond_13

    if-eqz v10, :cond_12

    invoke-virtual/range {p0 .. p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lsun/nio/fs/UnixFileSystem;->rootDirectory()Lsun/nio/fs/UnixPath;

    move-result-object v20

    :goto_6
    return-object v20

    :cond_12
    invoke-direct/range {p0 .. p0}, Lsun/nio/fs/UnixPath;->emptyPath()Lsun/nio/fs/UnixPath;

    move-result-object v20

    goto :goto_6

    :cond_13
    add-int/lit8 v12, v17, -0x1

    if-eqz v10, :cond_14

    add-int/lit8 v12, v12, 0x1

    :cond_14
    const/4 v8, 0x0

    :goto_7
    if-ge v8, v5, :cond_16

    aget-boolean v20, v9, v8

    if-nez v20, :cond_15

    aget v20, v19, v8

    add-int v12, v12, v20

    :cond_15
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_16
    new-array v0, v12, [B

    move-object/from16 v18, v0

    const/4 v13, 0x0

    if-eqz v10, :cond_17

    const/16 v20, 0x0

    const/4 v13, 0x1

    const/16 v21, 0x2f

    aput-byte v21, v18, v20

    :cond_17
    const/4 v8, 0x0

    :goto_8
    if-ge v8, v5, :cond_19

    aget-boolean v20, v9, v8

    if-nez v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/UnixPath;->path:[B

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/UnixPath;->offsets:[I

    move-object/from16 v21, v0

    aget v21, v21, v8

    aget v22, v19, v8

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v18

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v13, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    aget v20, v19, v8

    add-int v13, v13, v20

    add-int/lit8 v17, v17, -0x1

    if-lez v17, :cond_18

    add-int/lit8 v14, v13, 0x1

    const/16 v20, 0x2f

    aput-byte v20, v18, v13

    move v13, v14

    :cond_18
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_19
    new-instance v20, Lsun/nio/fs/UnixPath;

    invoke-virtual/range {p0 .. p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v20
.end method

.method openForAttributeAccess(Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    if-nez p1, :cond_1

    sget v2, Lsun/nio/fs/UnixConstants;->O_NOFOLLOW:I

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "NOFOLLOW_LINKS is not supported on this platform"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    sget v2, Lsun/nio/fs/UnixConstants;->O_NOFOLLOW:I

    or-int/2addr v0, v2

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v0, v2}, Lsun/nio/fs/UnixNativeDispatcher;->open(Lsun/nio/fs/UnixPath;II)I
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixFileSystem;->isSolaris()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lsun/nio/fs/UnixException;->errno()I

    move-result v2

    sget v3, Lsun/nio/fs/UnixConstants;->EINVAL:I

    if-ne v2, v3, :cond_2

    sget v2, Lsun/nio/fs/UnixConstants;->ELOOP:I

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixException;->setError(I)V

    :cond_2
    invoke-virtual {v1}, Lsun/nio/fs/UnixException;->errno()I

    move-result v2

    sget v3, Lsun/nio/fs/UnixConstants;->ELOOP:I

    if-ne v2, v3, :cond_3

    new-instance v2, Ljava/nio/file/FileSystemException;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lsun/nio/fs/UnixException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " or unable to access attributes of symbolic link"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-virtual {v1, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    const/4 v2, -0x1

    return v2
.end method

.method public varargs register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/WatchService;",
            "[",
            "Ljava/nio/file/WatchEvent$Kind",
            "<*>;[",
            "Ljava/nio/file/WatchEvent$Modifier;",
            ")",
            "Ljava/nio/file/WatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    instance-of v0, p1, Lsun/nio/fs/AbstractWatchService;

    if-nez v0, :cond_1

    new-instance v0, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {v0}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->checkRead()V

    check-cast p1, Lsun/nio/fs/AbstractWatchService;

    invoke-virtual {p1, p0, p2, p3}, Lsun/nio/fs/AbstractWatchService;->register(Ljava/nio/file/Path;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 1

    invoke-virtual {p0, p1}, Lsun/nio/fs/UnixPath;->relativize(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    return-object v0
.end method

.method public relativize(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;
    .locals 15

    invoke-static/range {p1 .. p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v7

    invoke-virtual {v7, p0}, Lsun/nio/fs/UnixPath;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-direct {p0}, Lsun/nio/fs/UnixPath;->emptyPath()Lsun/nio/fs/UnixPath;

    move-result-object v12

    return-object v12

    :cond_0
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v12

    invoke-virtual {v7}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v13

    if-eq v12, v13, :cond_1

    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "\'other\' is different type of Path"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_1
    invoke-direct {p0}, Lsun/nio/fs/UnixPath;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    return-object v7

    :cond_2
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getNameCount()I

    move-result v0

    invoke-virtual {v7}, Lsun/nio/fs/UnixPath;->getNameCount()I

    move-result v1

    if-le v0, v1, :cond_4

    move v6, v1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_3

    invoke-virtual {p0, v3}, Lsun/nio/fs/UnixPath;->getName(I)Lsun/nio/fs/UnixPath;

    move-result-object v12

    invoke-virtual {v7, v3}, Lsun/nio/fs/UnixPath;->getName(I)Lsun/nio/fs/UnixPath;

    move-result-object v13

    invoke-virtual {v12, v13}, Lsun/nio/fs/UnixPath;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    :cond_3
    sub-int v2, v0, v3

    if-ge v3, v1, :cond_b

    invoke-virtual {v7, v3, v1}, Lsun/nio/fs/UnixPath;->subpath(II)Lsun/nio/fs/UnixPath;

    move-result-object v10

    if-nez v2, :cond_6

    return-object v10

    :cond_4
    move v6, v0

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    invoke-direct {v7}, Lsun/nio/fs/UnixPath;->isEmpty()Z

    move-result v4

    mul-int/lit8 v12, v2, 0x3

    iget-object v13, v10, Lsun/nio/fs/UnixPath;->path:[B

    array-length v13, v13

    add-int v5, v12, v13

    if-eqz v4, :cond_8

    sget-boolean v12, Lsun/nio/fs/UnixPath;->-assertionsDisabled:Z

    if-nez v12, :cond_7

    invoke-direct {v10}, Lsun/nio/fs/UnixPath;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    :cond_7
    add-int/lit8 v5, v5, -0x1

    :cond_8
    new-array v11, v5, [B

    const/4 v8, 0x0

    move v9, v8

    :goto_2
    if-lez v2, :cond_a

    add-int/lit8 v8, v9, 0x1

    const/16 v12, 0x2e

    aput-byte v12, v11, v9

    add-int/lit8 v9, v8, 0x1

    const/16 v12, 0x2e

    aput-byte v12, v11, v8

    if-eqz v4, :cond_9

    const/4 v12, 0x1

    if-le v2, v12, :cond_e

    add-int/lit8 v8, v9, 0x1

    const/16 v12, 0x2f

    aput-byte v12, v11, v9

    :goto_3
    add-int/lit8 v2, v2, -0x1

    move v9, v8

    goto :goto_2

    :cond_9
    add-int/lit8 v8, v9, 0x1

    const/16 v12, 0x2f

    aput-byte v12, v11, v9

    goto :goto_3

    :cond_a
    iget-object v12, v10, Lsun/nio/fs/UnixPath;->path:[B

    iget-object v13, v10, Lsun/nio/fs/UnixPath;->path:[B

    array-length v13, v13

    const/4 v14, 0x0

    invoke-static {v12, v14, v11, v9, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v12, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v13

    invoke-direct {v12, v13, v11}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v12

    :cond_b
    mul-int/lit8 v12, v2, 0x3

    add-int/lit8 v12, v12, -0x1

    new-array v11, v12, [B

    const/4 v8, 0x0

    move v9, v8

    :goto_4
    if-lez v2, :cond_c

    add-int/lit8 v8, v9, 0x1

    const/16 v12, 0x2e

    aput-byte v12, v11, v9

    add-int/lit8 v9, v8, 0x1

    const/16 v12, 0x2e

    aput-byte v12, v11, v8

    const/4 v12, 0x1

    if-le v2, v12, :cond_d

    add-int/lit8 v8, v9, 0x1

    const/16 v12, 0x2f

    aput-byte v12, v11, v9

    :goto_5
    add-int/lit8 v2, v2, -0x1

    move v9, v8

    goto :goto_4

    :cond_c
    new-instance v12, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v13

    invoke-direct {v12, v13, v11}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v12

    :cond_d
    move v8, v9

    goto :goto_5

    :cond_e
    move v8, v9

    goto :goto_3
.end method

.method public bridge synthetic resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 1

    invoke-virtual {p0, p1}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v2

    iget-object v0, v2, Lsun/nio/fs/UnixPath;->path:[B

    array-length v2, v0

    if-lez v2, :cond_0

    aget-byte v2, v0, v3

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    check-cast p1, Lsun/nio/fs/UnixPath;

    return-object p1

    :cond_0
    iget-object v2, p0, Lsun/nio/fs/UnixPath;->path:[B

    invoke-static {v2, v0}, Lsun/nio/fs/UnixPath;->resolve([B[B)[B

    move-result-object v1

    new-instance v2, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v2
.end method

.method resolve([B)Lsun/nio/fs/UnixPath;
    .locals 2

    new-instance v0, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    return-object v0
.end method

.method public startsWith(Ljava/nio/file/Path;)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lsun/nio/fs/UnixPath;

    if-nez v8, :cond_0

    return v6

    :cond_0
    move-object v3, p1

    check-cast v3, Lsun/nio/fs/UnixPath;

    iget-object v8, v3, Lsun/nio/fs/UnixPath;->path:[B

    array-length v8, v8

    iget-object v9, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v9, v9

    if-le v8, v9, :cond_1

    return v6

    :cond_1
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getNameCount()I

    move-result v5

    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->getNameCount()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {v3}, Lsun/nio/fs/UnixPath;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    :goto_0
    return v6

    :cond_2
    move v6, v7

    goto :goto_0

    :cond_3
    if-le v4, v5, :cond_4

    return v6

    :cond_4
    if-ne v4, v5, :cond_5

    iget-object v8, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v8, v8

    iget-object v9, v3, Lsun/nio/fs/UnixPath;->path:[B

    array-length v9, v9

    if-eq v8, v9, :cond_5

    return v6

    :cond_5
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_7

    iget-object v8, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    aget v8, v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v8, v3, Lsun/nio/fs/UnixPath;->offsets:[I

    aget v8, v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    return v6

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_2
    iget-object v8, v3, Lsun/nio/fs/UnixPath;->path:[B

    array-length v8, v8

    if-ge v0, v8, :cond_9

    iget-object v8, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v8, v8, v0

    iget-object v9, v3, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v9, v9, v0

    if-eq v8, v9, :cond_8

    return v6

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    iget-object v8, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v8, v8

    if-ge v0, v8, :cond_a

    iget-object v8, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v8, v8, v0

    const/16 v9, 0x2f

    if-eq v8, v9, :cond_a

    return v6

    :cond_a
    return v7
.end method

.method public bridge synthetic subpath(II)Ljava/nio/file/Path;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lsun/nio/fs/UnixPath;->subpath(II)Lsun/nio/fs/UnixPath;

    move-result-object v0

    return-object v0
.end method

.method public subpath(II)Lsun/nio/fs/UnixPath;
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lsun/nio/fs/UnixPath;->initOffsets()V

    if-gez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_0
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    array-length v3, v3

    if-lt p1, v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_1
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    array-length v3, v3

    if-le p2, v3, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_2
    if-lt p1, p2, :cond_3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_3
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    aget v0, v3, p1

    iget-object v3, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    array-length v3, v3

    if-ne p2, v3, :cond_4

    iget-object v3, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v3, v3

    sub-int v1, v3, v0

    :goto_0
    new-array v2, v1, [B

    iget-object v3, p0, Lsun/nio/fs/UnixPath;->path:[B

    invoke-static {v3, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v3, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v3

    :cond_4
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    aget v3, v3, p2

    sub-int/2addr v3, v0

    add-int/lit8 v1, v3, -0x1

    goto :goto_0
.end method

.method public bridge synthetic toAbsolutePath()Ljava/nio/file/Path;
    .locals 1

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->toAbsolutePath()Lsun/nio/fs/UnixPath;

    move-result-object v0

    return-object v0
.end method

.method public toAbsolutePath()Lsun/nio/fs/UnixPath;
    .locals 5

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "user.dir"

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPropertyAccess(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v2

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixFileSystem;->defaultDirectory()[B

    move-result-object v3

    iget-object v4, p0, Lsun/nio/fs/UnixPath;->path:[B

    invoke-static {v3, v4}, Lsun/nio/fs/UnixPath;->resolve([B[B)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v1
.end method

.method public varargs toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x1

    const/16 v10, 0x2e

    const/4 v9, 0x0

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->checkRead()V

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->toAbsolutePath()Lsun/nio/fs/UnixPath;

    move-result-object v0

    invoke-static {p1}, Lsun/nio/fs/Util;->followLinks([Ljava/nio/file/LinkOption;)Z

    move-result v7

    if-eqz v7, :cond_0

    :try_start_0
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->realpath(Lsun/nio/fs/UnixPath;)[B

    move-result-object v5

    new-instance v7, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception v6

    invoke-virtual {v6, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    :cond_0
    iget-object v7, p0, Lsun/nio/fs/UnixPath;->fs:Lsun/nio/fs/UnixFileSystem;

    invoke-virtual {v7}, Lsun/nio/fs/UnixFileSystem;->rootDirectory()Lsun/nio/fs/UnixPath;

    move-result-object v4

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getNameCount()I

    move-result v7

    if-ge v3, v7, :cond_4

    invoke-virtual {v0, v3}, Lsun/nio/fs/UnixPath;->getName(I)Lsun/nio/fs/UnixPath;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v7

    array-length v7, v7

    if-ne v7, v11, :cond_2

    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v7

    aget-byte v7, v7, v9

    if-ne v7, v10, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v7

    array-length v7, v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v7

    aget-byte v7, v7, v9

    if-ne v7, v10, :cond_3

    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v7

    aget-byte v7, v7, v11

    if-ne v7, v10, :cond_3

    const/4 v1, 0x0

    const/4 v7, 0x0

    :try_start_1
    invoke-static {v4, v7}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_1
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_2
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isSymbolicLink()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v4}, Lsun/nio/fs/UnixPath;->getParent()Lsun/nio/fs/UnixPath;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v7, p0, Lsun/nio/fs/UnixPath;->fs:Lsun/nio/fs/UnixFileSystem;

    invoke-virtual {v7}, Lsun/nio/fs/UnixFileSystem;->rootDirectory()Lsun/nio/fs/UnixPath;

    move-result-object v4

    goto :goto_1

    :catch_1
    move-exception v6

    invoke-virtual {v6, v4}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v2}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v4

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :try_start_2
    invoke-static {v4, v7}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_2
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    return-object v4

    :catch_2
    move-exception v6

    invoke-virtual {v6, v4}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lsun/nio/fs/UnixPath;->stringValue:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/nio/fs/UnixPath;->fs:Lsun/nio/fs/UnixFileSystem;

    iget-object v1, p0, Lsun/nio/fs/UnixPath;->path:[B

    invoke-static {v1}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/nio/fs/UnixFileSystem;->normalizeJavaPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/UnixPath;->stringValue:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public toUri()Ljava/net/URI;
    .locals 1

    invoke-static {p0}, Lsun/nio/fs/UnixUriUtils;->toUri(Lsun/nio/fs/UnixPath;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method
