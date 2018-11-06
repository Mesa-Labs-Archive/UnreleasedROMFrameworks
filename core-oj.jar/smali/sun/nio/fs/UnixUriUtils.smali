.class Lsun/nio/fs/UnixUriUtils;
.super Ljava/lang/Object;
.source "UnixUriUtils.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final H_ALPHA:J

.field private static final H_ALPHANUM:J

.field private static final H_DIGIT:J

.field private static final H_LOWALPHA:J

.field private static final H_MARK:J

.field private static final H_PATH:J

.field private static final H_PCHAR:J

.field private static final H_UNRESERVED:J

.field private static final H_UPALPHA:J

.field private static final L_ALPHA:J

.field private static final L_ALPHANUM:J

.field private static final L_DIGIT:J

.field private static final L_LOWALPHA:J

.field private static final L_MARK:J

.field private static final L_PATH:J

.field private static final L_PCHAR:J

.field private static final L_UNRESERVED:J

.field private static final L_UPALPHA:J

.field private static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/16 v4, 0x0

    const-class v0, Lsun/nio/fs/UnixUriUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/fs/UnixUriUtils;->-assertionsDisabled:Z

    const/16 v0, 0x30

    const/16 v1, 0x39

    invoke-static {v0, v1}, Lsun/nio/fs/UnixUriUtils;->lowMask(CC)J

    move-result-wide v0

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->L_DIGIT:J

    const/16 v0, 0x41

    const/16 v1, 0x5a

    invoke-static {v0, v1}, Lsun/nio/fs/UnixUriUtils;->highMask(CC)J

    move-result-wide v0

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->H_UPALPHA:J

    const/16 v0, 0x61

    const/16 v1, 0x7a

    invoke-static {v0, v1}, Lsun/nio/fs/UnixUriUtils;->highMask(CC)J

    move-result-wide v0

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->H_LOWALPHA:J

    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->H_LOWALPHA:J

    sget-wide v2, Lsun/nio/fs/UnixUriUtils;->H_UPALPHA:J

    or-long/2addr v0, v2

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->H_ALPHA:J

    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->L_DIGIT:J

    or-long/2addr v0, v4

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->L_ALPHANUM:J

    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->H_ALPHA:J

    or-long/2addr v0, v4

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->H_ALPHANUM:J

    const-string/jumbo v0, "-_.!~*\'()"

    invoke-static {v0}, Lsun/nio/fs/UnixUriUtils;->lowMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->L_MARK:J

    const-string/jumbo v0, "-_.!~*\'()"

    invoke-static {v0}, Lsun/nio/fs/UnixUriUtils;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->H_MARK:J

    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->L_ALPHANUM:J

    sget-wide v2, Lsun/nio/fs/UnixUriUtils;->L_MARK:J

    or-long/2addr v0, v2

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->L_UNRESERVED:J

    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->H_ALPHANUM:J

    sget-wide v2, Lsun/nio/fs/UnixUriUtils;->H_MARK:J

    or-long/2addr v0, v2

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->H_UNRESERVED:J

    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->L_UNRESERVED:J

    const-string/jumbo v2, ":@&=+$,"

    invoke-static {v2}, Lsun/nio/fs/UnixUriUtils;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->L_PCHAR:J

    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->H_UNRESERVED:J

    const-string/jumbo v2, ":@&=+$,"

    invoke-static {v2}, Lsun/nio/fs/UnixUriUtils;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->H_PCHAR:J

    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->L_PCHAR:J

    const-string/jumbo v2, ";/"

    invoke-static {v2}, Lsun/nio/fs/UnixUriUtils;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->L_PATH:J

    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->H_PCHAR:J

    const-string/jumbo v2, ";/"

    invoke-static {v2}, Lsun/nio/fs/UnixUriUtils;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->H_PATH:J

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lsun/nio/fs/UnixUriUtils;->hexDigits:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decode(C)I
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    return v0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static fromUri(Lsun/nio/fs/UnixFileSystem;Ljava/net/URI;)Ljava/nio/file/Path;
    .locals 14

    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v12

    if-nez v12, :cond_0

    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "URI is not absolute"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v12

    if-eqz v12, :cond_1

    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "URI is not hierarchical"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    const-string/jumbo v12, "file"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_3

    :cond_2
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "URI scheme is not \"file\""

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_3
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "URI has an authority component"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_4
    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5

    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "URI has a fragment component"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_5
    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "URI has a query component"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_6
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "file:///"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v12}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v12

    return-object v12

    :cond_7
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_8

    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "URI path component is empty"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_8
    const-string/jumbo v12, "/"

    invoke-virtual {v5, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v12, 0x1

    if-le v4, v12, :cond_9

    add-int/lit8 v4, v4, -0x1

    :cond_9
    new-array v8, v4, [B

    const/4 v9, 0x0

    const/4 v6, 0x0

    move v7, v6

    move v10, v9

    :goto_0
    if-ge v7, v4, :cond_e

    add-int/lit8 v6, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v12, 0x25

    if-ne v1, v12, :cond_b

    sget-boolean v12, Lsun/nio/fs/UnixUriUtils;->-assertionsDisabled:Z

    if-nez v12, :cond_a

    add-int/lit8 v12, v6, 0x2

    if-le v12, v4, :cond_a

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    :cond_a
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v6, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v2}, Lsun/nio/fs/UnixUriUtils;->decode(C)I

    move-result v12

    shl-int/lit8 v12, v12, 0x4

    invoke-static {v3}, Lsun/nio/fs/UnixUriUtils;->decode(C)I

    move-result v13

    or-int/2addr v12, v13

    int-to-byte v0, v12

    if-nez v0, :cond_d

    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "Nul character not allowed"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_b
    sget-boolean v12, Lsun/nio/fs/UnixUriUtils;->-assertionsDisabled:Z

    if-nez v12, :cond_c

    const/16 v12, 0x80

    if-lt v1, v12, :cond_c

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    :cond_c
    int-to-byte v0, v1

    :cond_d
    add-int/lit8 v9, v10, 0x1

    aput-byte v0, v8, v10

    move v7, v6

    move v10, v9

    goto :goto_0

    :cond_e
    array-length v12, v8

    if-eq v10, v12, :cond_f

    invoke-static {v8, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    :cond_f
    new-instance v12, Lsun/nio/fs/UnixPath;

    invoke-direct {v12, p0, v8}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v12
.end method

.method private static highMask(CC)J
    .locals 8

    const/16 v7, 0x7f

    const/16 v6, 0x40

    const-wide/16 v4, 0x0

    invoke-static {p0, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v0, v3, -0x40

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v3, -0x40

    move v1, v0

    :goto_0
    if-gt v1, v2, :cond_0

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v4
.end method

.method private static highMask(Ljava/lang/String;)J
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x40

    if-lt v0, v5, :cond_0

    const/16 v5, 0x80

    if-ge v0, v5, :cond_0

    add-int/lit8 v5, v0, -0x40

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v5

    or-long/2addr v2, v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method private static lowMask(CC)J
    .locals 8

    const/16 v7, 0x3f

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    invoke-static {p0, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v0

    :goto_0
    if-gt v1, v2, :cond_0

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v4
.end method

.method private static lowMask(Ljava/lang/String;)J
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x40

    if-ge v0, v5, :cond_0

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method private static match(CJJ)Z
    .locals 9

    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x40

    if-ge p0, v2, :cond_1

    shl-long v2, v6, p0

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v2, 0x80

    if-ge p0, v2, :cond_3

    add-int/lit8 v2, p0, -0x40

    shl-long v2, v6, v2

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    return v1
.end method

.method static toUri(Lsun/nio/fs/UnixPath;)Ljava/net/URI;
    .locals 11

    const/16 v10, 0x2f

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->toAbsolutePath()Lsun/nio/fs/UnixPath;

    move-result-object v6

    invoke-virtual {v6}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "file:///"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lsun/nio/fs/UnixUriUtils;->-assertionsDisabled:Z

    if-nez v6, :cond_0

    const/4 v6, 0x0

    aget-byte v6, v2, v6

    if-eq v6, v10, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_0
    const/4 v1, 0x1

    :goto_0
    array-length v6, v2

    if-ge v1, v6, :cond_2

    aget-byte v6, v2, v1

    and-int/lit16 v6, v6, 0xff

    int-to-char v0, v6

    sget-wide v6, Lsun/nio/fs/UnixUriUtils;->L_PATH:J

    sget-wide v8, Lsun/nio/fs/UnixUriUtils;->H_PATH:J

    invoke-static {v0, v6, v7, v8, v9}, Lsun/nio/fs/UnixUriUtils;->match(CJJ)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v6, 0x25

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v6, Lsun/nio/fs/UnixUriUtils;->hexDigits:[C

    shr-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v6, Lsun/nio/fs/UnixUriUtils;->hexDigits:[C

    and-int/lit8 v7, v0, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-eq v6, v10, :cond_3

    const/4 v6, 0x1

    :try_start_0
    invoke-static {p0, v6}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v6

    invoke-virtual {v6}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x2f

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_2
    :try_start_1
    new-instance v6, Ljava/net/URI;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v6

    :catch_0
    move-exception v4

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    :catch_1
    move-exception v5

    goto :goto_2
.end method
