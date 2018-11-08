.class public Lsun/misc/FDBigInteger;
.super Ljava/lang/Object;
.source "FDBigInteger.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final LONG_5_POW:[J

.field private static final LONG_MASK:J = 0xffffffffL

.field private static final MAX_FIVE_POW:I = 0x154

.field private static final POW_5_CACHE:[Lsun/misc/FDBigInteger;

.field static final SMALL_5_POW:[I

.field public static final ZERO:Lsun/misc/FDBigInteger;


# instance fields
.field private data:[I

.field private isImmutable:Z

.field private nWords:I

.field private offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x154

    const/4 v5, 0x0

    const-class v3, Lsun/misc/FDBigInteger;

    invoke-virtual {v3}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    sput-boolean v3, Lsun/misc/FDBigInteger;->-assertionsDisabled:Z

    const/16 v3, 0xe

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    sput-object v3, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    const/16 v3, 0x1b

    new-array v3, v3, [J

    fill-array-data v3, :array_1

    sput-object v3, Lsun/misc/FDBigInteger;->LONG_5_POW:[J

    new-array v3, v6, [Lsun/misc/FDBigInteger;

    sput-object v3, Lsun/misc/FDBigInteger;->POW_5_CACHE:[Lsun/misc/FDBigInteger;

    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    new-instance v1, Lsun/misc/FDBigInteger;

    const/4 v3, 0x1

    new-array v3, v3, [I

    sget-object v4, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    aget v4, v4, v0

    aput v4, v3, v5

    invoke-direct {v1, v3, v5}, Lsun/misc/FDBigInteger;-><init>([II)V

    invoke-virtual {v1}, Lsun/misc/FDBigInteger;->makeImmutable()V

    sget-object v3, Lsun/misc/FDBigInteger;->POW_5_CACHE:[Lsun/misc/FDBigInteger;

    aput-object v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lsun/misc/FDBigInteger;->POW_5_CACHE:[Lsun/misc/FDBigInteger;

    add-int/lit8 v4, v0, -0x1

    aget-object v2, v3, v4

    :goto_1
    if-ge v0, v6, :cond_1

    sget-object v3, Lsun/misc/FDBigInteger;->POW_5_CACHE:[Lsun/misc/FDBigInteger;

    const/4 v4, 0x5

    invoke-direct {v2, v4}, Lsun/misc/FDBigInteger;->mult(I)Lsun/misc/FDBigInteger;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-virtual {v2}, Lsun/misc/FDBigInteger;->makeImmutable()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v3, Lsun/misc/FDBigInteger;

    new-array v4, v5, [I

    invoke-direct {v3, v4, v5}, Lsun/misc/FDBigInteger;-><init>([II)V

    sput-object v3, Lsun/misc/FDBigInteger;->ZERO:Lsun/misc/FDBigInteger;

    sget-object v3, Lsun/misc/FDBigInteger;->ZERO:Lsun/misc/FDBigInteger;

    invoke-virtual {v3}, Lsun/misc/FDBigInteger;->makeImmutable()V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x5
        0x19
        0x7d
        0x271
        0xc35
        0x3d09
        0x1312d
        0x5f5e1
        0x1dcd65
        0x9502f9
        0x2e90edd
        0xe8d4a51
        0x48c27395
    .end array-data

    :array_1
    .array-data 8
        0x1
        0x5
        0x19
        0x7d
        0x271
        0xc35
        0x3d09
        0x1312d
        0x5f5e1
        0x1dcd65
        0x9502f9
        0x2e90edd
        0xe8d4a51
        0x48c27395
        0x16bcc41e9L
        0x71afd498dL
        0x2386f26fc1L
        0xb1a2bc2ec5L
        0x3782dace9d9L
        0x1158e460913dL
        0x56bc75e2d631L
        0x1b1ae4d6e2ef5L
        0x878678326eac9L
        0x2a5a058fc295edL
        0xd3c21bcecceda1L
        0x422ca8b0a00a425L    # 9.6411383183208E-289
        0x14adf4b7320334b9L
    .end array-data
.end method

.method public constructor <init>(J[CII)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x0

    iput-boolean v9, p0, Lsun/misc/FDBigInteger;->isImmutable:Z

    add-int/lit8 v9, p5, 0x8

    div-int/lit8 v9, v9, 0x9

    const/4 v10, 0x2

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-array v9, v7, [I

    iput-object v9, p0, Lsun/misc/FDBigInteger;->data:[I

    iget-object v9, p0, Lsun/misc/FDBigInteger;->data:[I

    long-to-int v10, p1

    const/4 v11, 0x0

    aput v10, v9, v11

    iget-object v9, p0, Lsun/misc/FDBigInteger;->data:[I

    const/16 v10, 0x20

    ushr-long v10, p1, v10

    long-to-int v10, v10

    const/4 v11, 0x1

    aput v10, v9, v11

    const/4 v9, 0x0

    iput v9, p0, Lsun/misc/FDBigInteger;->offset:I

    const/4 v9, 0x2

    iput v9, p0, Lsun/misc/FDBigInteger;->nWords:I

    move/from16 v3, p4

    add-int/lit8 v6, p5, -0x5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_1

    add-int/lit8 v5, v4, 0x5

    add-int/lit8 v3, v4, 0x1

    aget-char v9, p3, v4

    add-int/lit8 v8, v9, -0x30

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_0

    mul-int/lit8 v9, v8, 0xa

    add-int/lit8 v3, v4, 0x1

    aget-char v10, p3, v4

    add-int/2addr v9, v10

    add-int/lit8 v8, v9, -0x30

    move v4, v3

    goto :goto_1

    :cond_0
    const v9, 0x186a0

    invoke-direct {p0, v9, v8}, Lsun/misc/FDBigInteger;->multAddMe(II)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    const/4 v8, 0x0

    :goto_2
    move/from16 v0, p5

    if-ge v4, v0, :cond_2

    mul-int/lit8 v9, v8, 0xa

    add-int/lit8 v3, v4, 0x1

    aget-char v10, p3, v4

    add-int/2addr v9, v10

    add-int/lit8 v8, v9, -0x30

    mul-int/lit8 v2, v2, 0xa

    move v4, v3

    goto :goto_2

    :cond_2
    const/4 v9, 0x1

    if-eq v2, v9, :cond_3

    invoke-direct {p0, v2, v8}, Lsun/misc/FDBigInteger;->multAddMe(II)V

    :cond_3
    invoke-direct {p0}, Lsun/misc/FDBigInteger;->trimLeadingZeros()V

    return-void
.end method

.method private constructor <init>([II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/misc/FDBigInteger;->isImmutable:Z

    iput-object p1, p0, Lsun/misc/FDBigInteger;->data:[I

    iput p2, p0, Lsun/misc/FDBigInteger;->offset:I

    array-length v0, p1

    iput v0, p0, Lsun/misc/FDBigInteger;->nWords:I

    invoke-direct {p0}, Lsun/misc/FDBigInteger;->trimLeadingZeros()V

    return-void
.end method

.method private add(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;
    .locals 16

    invoke-direct/range {p0 .. p0}, Lsun/misc/FDBigInteger;->size()I

    move-result v9

    invoke-direct/range {p1 .. p1}, Lsun/misc/FDBigInteger;->size()I

    move-result v5

    if-lt v9, v5, :cond_0

    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v7, p1

    move v8, v5

    :goto_0
    add-int/lit8 v10, v1, 0x1

    new-array v6, v10, [I

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    :goto_1
    if-ge v4, v8, :cond_3

    iget v10, v0, Lsun/misc/FDBigInteger;->offset:I

    if-ge v4, v10, :cond_1

    const-wide/16 v10, 0x0

    :goto_2
    iget v12, v7, Lsun/misc/FDBigInteger;->offset:I

    if-ge v4, v12, :cond_2

    const-wide/16 v12, 0x0

    :goto_3
    add-long/2addr v10, v12

    add-long/2addr v2, v10

    long-to-int v10, v2

    aput v10, v6, v4

    const/16 v10, 0x20

    shr-long/2addr v2, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v0, p1

    move v1, v5

    move-object/from16 v7, p0

    move v8, v9

    goto :goto_0

    :cond_1
    iget-object v10, v0, Lsun/misc/FDBigInteger;->data:[I

    iget v11, v0, Lsun/misc/FDBigInteger;->offset:I

    sub-int v11, v4, v11

    aget v10, v10, v11

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    goto :goto_2

    :cond_2
    iget-object v12, v7, Lsun/misc/FDBigInteger;->data:[I

    iget v13, v7, Lsun/misc/FDBigInteger;->offset:I

    sub-int v13, v4, v13

    aget v12, v12, v13

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    goto :goto_3

    :cond_3
    :goto_4
    if-ge v4, v1, :cond_5

    iget v10, v0, Lsun/misc/FDBigInteger;->offset:I

    if-ge v4, v10, :cond_4

    const-wide/16 v10, 0x0

    :goto_5
    add-long/2addr v2, v10

    long-to-int v10, v2

    aput v10, v6, v4

    const/16 v10, 0x20

    shr-long/2addr v2, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    iget-object v10, v0, Lsun/misc/FDBigInteger;->data:[I

    iget v11, v0, Lsun/misc/FDBigInteger;->offset:I

    sub-int v11, v4, v11

    aget v10, v10, v11

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    goto :goto_5

    :cond_5
    long-to-int v10, v2

    aput v10, v6, v1

    new-instance v10, Lsun/misc/FDBigInteger;

    const/4 v11, 0x0

    invoke-direct {v10, v6, v11}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v10
.end method

.method private static big5pow(I)Lsun/misc/FDBigInteger;
    .locals 2

    sget-boolean v0, Lsun/misc/FDBigInteger;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/16 v0, 0x154

    if-ge p0, v0, :cond_1

    sget-object v0, Lsun/misc/FDBigInteger;->POW_5_CACHE:[Lsun/misc/FDBigInteger;

    aget-object v0, v0, p0

    return-object v0

    :cond_1
    invoke-static {p0}, Lsun/misc/FDBigInteger;->big5powRec(I)Lsun/misc/FDBigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static big5powRec(I)Lsun/misc/FDBigInteger;
    .locals 4

    const/16 v3, 0x154

    if-ge p0, v3, :cond_0

    sget-object v3, Lsun/misc/FDBigInteger;->POW_5_CACHE:[Lsun/misc/FDBigInteger;

    aget-object v3, v3, p0

    return-object v3

    :cond_0
    shr-int/lit8 v1, p0, 0x1

    sub-int v2, p0, v1

    invoke-static {v1}, Lsun/misc/FDBigInteger;->big5powRec(I)Lsun/misc/FDBigInteger;

    move-result-object v0

    sget-object v3, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    sget-object v3, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    aget v3, v3, v2

    invoke-direct {v0, v3}, Lsun/misc/FDBigInteger;->mult(I)Lsun/misc/FDBigInteger;

    move-result-object v3

    return-object v3

    :cond_1
    invoke-static {v2}, Lsun/misc/FDBigInteger;->big5powRec(I)Lsun/misc/FDBigInteger;

    move-result-object v3

    invoke-direct {v0, v3}, Lsun/misc/FDBigInteger;->mult(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;

    move-result-object v3

    return-object v3
.end method

.method private static checkZeroTail([II)I
    .locals 2

    const/4 v1, 0x0

    :cond_0
    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    aget v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private static leftShift([II[IIII)V
    .locals 3

    const/4 v2, 0x0

    :goto_0
    if-lez p1, :cond_0

    shl-int v0, p5, p3

    add-int/lit8 v1, p1, -0x1

    aget p5, p0, v1

    ushr-int v1, p5, p4

    or-int/2addr v0, v1

    aput v0, p2, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    shl-int v0, p5, p3

    aput v0, p2, v2

    return-void
.end method

.method private mult(I)Lsun/misc/FDBigInteger;
    .locals 3

    iget v1, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    iget v1, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [I

    iget-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v2, p0, Lsun/misc/FDBigInteger;->nWords:I

    invoke-static {v1, v2, p1, v0}, Lsun/misc/FDBigInteger;->mult([III[I)V

    new-instance v1, Lsun/misc/FDBigInteger;

    iget v2, p0, Lsun/misc/FDBigInteger;->offset:I

    invoke-direct {v1, v0, v2}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v1
.end method

.method private mult(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v1, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lsun/misc/FDBigInteger;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    aget v1, v1, v2

    invoke-direct {p1, v1}, Lsun/misc/FDBigInteger;->mult(I)Lsun/misc/FDBigInteger;

    move-result-object v1

    return-object v1

    :cond_1
    iget v1, p1, Lsun/misc/FDBigInteger;->nWords:I

    if-nez v1, :cond_2

    return-object p1

    :cond_2
    invoke-direct {p1}, Lsun/misc/FDBigInteger;->size()I

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v1, p1, Lsun/misc/FDBigInteger;->data:[I

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lsun/misc/FDBigInteger;->mult(I)Lsun/misc/FDBigInteger;

    move-result-object v1

    return-object v1

    :cond_3
    iget v1, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget v2, p1, Lsun/misc/FDBigInteger;->nWords:I

    add-int/2addr v1, v2

    new-array v0, v1, [I

    iget-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v2, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget-object v3, p1, Lsun/misc/FDBigInteger;->data:[I

    iget v4, p1, Lsun/misc/FDBigInteger;->nWords:I

    invoke-static {v1, v2, v3, v4, v0}, Lsun/misc/FDBigInteger;->mult([II[II[I)V

    new-instance v1, Lsun/misc/FDBigInteger;

    iget v2, p0, Lsun/misc/FDBigInteger;->offset:I

    iget v3, p1, Lsun/misc/FDBigInteger;->offset:I

    add-int/2addr v2, v3

    invoke-direct {v1, v0, v2}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v1
.end method

.method private static mult([IIII[I)V
    .locals 16

    move/from16 v0, p2

    int-to-long v10, v0

    const-wide v12, 0xffffffffL

    and-long v8, v10, v12

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    move/from16 v0, p1

    if-ge v4, v0, :cond_0

    aget v5, p0, v4

    int-to-long v10, v5

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    mul-long/2addr v10, v8

    add-long v6, v10, v2

    long-to-int v5, v6

    aput v5, p4, v4

    const/16 v5, 0x20

    ushr-long v2, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    long-to-int v5, v2

    aput v5, p4, p1

    move/from16 v0, p3

    int-to-long v10, v0

    const-wide v12, 0xffffffffL

    and-long v8, v10, v12

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    move/from16 v0, p1

    if-ge v4, v0, :cond_1

    add-int/lit8 v5, v4, 0x1

    aget v5, p4, v5

    int-to-long v10, v5

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    aget v5, p0, v4

    int-to-long v12, v5

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    mul-long/2addr v12, v8

    add-long/2addr v10, v12

    add-long v6, v10, v2

    add-int/lit8 v5, v4, 0x1

    long-to-int v10, v6

    aput v10, p4, v5

    const/16 v5, 0x20

    ushr-long v2, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, p1, 0x1

    long-to-int v10, v2

    aput v10, p4, v5

    return-void
.end method

.method private static mult([III[I)V
    .locals 12

    const-wide v10, 0xffffffffL

    int-to-long v8, p2

    and-long v6, v8, v10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget v3, p0, v2

    int-to-long v8, v3

    and-long/2addr v8, v10

    mul-long/2addr v8, v6

    add-long v4, v8, v0

    long-to-int v3, v4

    aput v3, p3, v2

    const/16 v3, 0x20

    ushr-long v0, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int v3, v0

    aput v3, p3, p1

    return-void
.end method

.method private static mult([II[II[I)V
    .locals 12

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget v6, p0, v0

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long v4, v6, v8

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p3, :cond_0

    add-int v6, v0, v1

    aget v6, p4, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    aget v8, p2, v1

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    mul-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v2, v6

    add-int v6, v0, v1

    long-to-int v7, v2

    aput v7, p4, v6

    const/16 v6, 0x20

    ushr-long/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int v6, v0, p3

    long-to-int v7, v2

    aput v7, p4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private multAddMe(II)V
    .locals 12

    int-to-long v6, p1

    const-wide v8, 0xffffffffL

    and-long v4, v6, v8

    iget-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    const/4 v6, 0x0

    aget v1, v1, v6

    int-to-long v6, v1

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    mul-long/2addr v6, v4

    int-to-long v8, p2

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long v2, v6, v8

    iget-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    long-to-int v6, v2

    const/4 v7, 0x0

    aput v6, v1, v7

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    aget v1, v1, v0

    int-to-long v6, v1

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    mul-long/2addr v6, v4

    add-long/2addr v2, v6

    iget-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    long-to-int v6, v2

    aput v6, v1, v0

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v6, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lsun/misc/FDBigInteger;->nWords:I

    long-to-int v7, v2

    aput v7, v1, v6

    :cond_1
    return-void
.end method

.method private static multAndCarryBy10([II[I)I
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget v3, p0, v2

    int-to-long v6, v3

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const-wide/16 v8, 0xa

    mul-long/2addr v6, v8

    add-long v4, v6, v0

    long-to-int v3, v4

    aput v3, p2, v2

    const/16 v3, 0x20

    ushr-long v0, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int v3, v0

    return v3
.end method

.method private multDiffMe(JLsun/misc/FDBigInteger;)J
    .locals 19

    const-wide/16 v4, 0x0

    const-wide/16 v12, 0x0

    cmp-long v11, p1, v12

    if-eqz v11, :cond_3

    move-object/from16 v0, p3

    iget v11, v0, Lsun/misc/FDBigInteger;->offset:I

    move-object/from16 v0, p0

    iget v12, v0, Lsun/misc/FDBigInteger;->offset:I

    sub-int v2, v11, v12

    if-ltz v2, :cond_0

    move-object/from16 v0, p3

    iget-object v8, v0, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/misc/FDBigInteger;->data:[I

    const/4 v7, 0x0

    move v9, v2

    :goto_0
    move-object/from16 v0, p3

    iget v11, v0, Lsun/misc/FDBigInteger;->nWords:I

    if-ge v7, v11, :cond_3

    aget v11, v10, v9

    int-to-long v12, v11

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    aget v11, v8, v7

    int-to-long v14, v11

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    mul-long v14, v14, p1

    sub-long/2addr v12, v14

    add-long/2addr v4, v12

    long-to-int v11, v4

    aput v11, v10, v9

    const/16 v11, 0x20

    shr-long/2addr v4, v11

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    neg-int v2, v2

    move-object/from16 v0, p0

    iget v11, v0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/2addr v11, v2

    new-array v6, v11, [I

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p3

    iget-object v8, v0, Lsun/misc/FDBigInteger;->data:[I

    :goto_1
    if-ge v3, v2, :cond_1

    move-object/from16 v0, p3

    iget v11, v0, Lsun/misc/FDBigInteger;->nWords:I

    if-ge v7, v11, :cond_1

    aget v11, v8, v7

    int-to-long v12, v11

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    mul-long v12, v12, p1

    sub-long/2addr v4, v12

    long-to-int v11, v4

    aput v11, v6, v3

    const/16 v11, 0x20

    shr-long/2addr v4, v11

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/misc/FDBigInteger;->data:[I

    :goto_2
    move-object/from16 v0, p3

    iget v11, v0, Lsun/misc/FDBigInteger;->nWords:I

    if-ge v7, v11, :cond_2

    aget v11, v10, v9

    int-to-long v12, v11

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    aget v11, v8, v7

    int-to-long v14, v11

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    mul-long v14, v14, p1

    sub-long/2addr v12, v14

    add-long/2addr v4, v12

    long-to-int v11, v4

    aput v11, v6, v3

    const/16 v11, 0x20

    shr-long/2addr v4, v11

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/2addr v11, v2

    move-object/from16 v0, p0

    iput v11, v0, Lsun/misc/FDBigInteger;->nWords:I

    move-object/from16 v0, p0

    iget v11, v0, Lsun/misc/FDBigInteger;->offset:I

    sub-int/2addr v11, v2

    move-object/from16 v0, p0

    iput v11, v0, Lsun/misc/FDBigInteger;->offset:I

    move-object/from16 v0, p0

    iput-object v6, v0, Lsun/misc/FDBigInteger;->data:[I

    :cond_3
    return-wide v4
.end method

.method private size()I
    .locals 2

    iget v0, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget v1, p0, Lsun/misc/FDBigInteger;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method private trimLeadingZeros()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, v1, v0

    if-nez v1, :cond_1

    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-nez v0, :cond_1

    iput v3, p0, Lsun/misc/FDBigInteger;->offset:I

    :cond_1
    return-void
.end method

.method public static valueOfMulPow52(JII)Lsun/misc/FDBigInteger;
    .locals 18

    sget-boolean v13, Lsun/misc/FDBigInteger;->-assertionsDisabled:Z

    if-nez v13, :cond_0

    if-gez p2, :cond_0

    new-instance v13, Ljava/lang/AssertionError;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v13

    :cond_0
    sget-boolean v13, Lsun/misc/FDBigInteger;->-assertionsDisabled:Z

    if-nez v13, :cond_1

    if-gez p3, :cond_1

    new-instance v13, Ljava/lang/AssertionError;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v13

    :cond_1
    move-wide/from16 v0, p0

    long-to-int v9, v0

    const/16 v13, 0x20

    ushr-long v14, p0, v13

    long-to-int v10, v14

    shr-int/lit8 v12, p3, 0x5

    and-int/lit8 v2, p3, 0x1f

    if-eqz p2, :cond_7

    sget-object v13, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    array-length v13, v13

    move/from16 v0, p2

    if-ge v0, v13, :cond_3

    sget-object v13, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    aget v13, v13, p2

    int-to-long v14, v13

    const-wide v16, 0xffffffffL

    and-long v6, v14, v16

    int-to-long v14, v9

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    mul-long v4, v14, v6

    long-to-int v9, v4

    const/16 v13, 0x20

    ushr-long/2addr v4, v13

    int-to-long v14, v10

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    mul-long/2addr v14, v6

    add-long/2addr v4, v14

    long-to-int v10, v4

    const/16 v13, 0x20

    ushr-long v14, v4, v13

    long-to-int v11, v14

    if-nez v2, :cond_2

    new-instance v13, Lsun/misc/FDBigInteger;

    const/4 v14, 0x3

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v9, v14, v15

    const/4 v15, 0x1

    aput v10, v14, v15

    const/4 v15, 0x2

    aput v11, v14, v15

    invoke-direct {v13, v14, v12}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v13

    :cond_2
    new-instance v13, Lsun/misc/FDBigInteger;

    const/4 v14, 0x4

    new-array v14, v14, [I

    shl-int v15, v9, v2

    const/16 v16, 0x0

    aput v15, v14, v16

    shl-int v15, v10, v2

    rsub-int/lit8 v16, v2, 0x20

    ushr-int v16, v9, v16

    or-int v15, v15, v16

    const/16 v16, 0x1

    aput v15, v14, v16

    shl-int v15, v11, v2

    rsub-int/lit8 v16, v2, 0x20

    ushr-int v16, v10, v16

    or-int v15, v15, v16

    const/16 v16, 0x2

    aput v15, v14, v16

    rsub-int/lit8 v15, v2, 0x20

    ushr-int v15, v11, v15

    const/16 v16, 0x3

    aput v15, v14, v16

    invoke-direct {v13, v14, v12}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v13

    :cond_3
    invoke-static/range {p2 .. p2}, Lsun/misc/FDBigInteger;->big5pow(I)Lsun/misc/FDBigInteger;

    move-result-object v3

    if-nez v10, :cond_5

    iget v13, v3, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v14, v13, 0x1

    if-eqz p3, :cond_4

    const/4 v13, 0x1

    :goto_0
    add-int/2addr v13, v14

    new-array v8, v13, [I

    iget-object v13, v3, Lsun/misc/FDBigInteger;->data:[I

    iget v14, v3, Lsun/misc/FDBigInteger;->nWords:I

    invoke-static {v13, v14, v9, v8}, Lsun/misc/FDBigInteger;->mult([III[I)V

    :goto_1
    new-instance v13, Lsun/misc/FDBigInteger;

    iget v14, v3, Lsun/misc/FDBigInteger;->offset:I

    invoke-direct {v13, v8, v14}, Lsun/misc/FDBigInteger;-><init>([II)V

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v13

    return-object v13

    :cond_4
    const/4 v13, 0x0

    goto :goto_0

    :cond_5
    iget v13, v3, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v14, v13, 0x2

    if-eqz p3, :cond_6

    const/4 v13, 0x1

    :goto_2
    add-int/2addr v13, v14

    new-array v8, v13, [I

    iget-object v13, v3, Lsun/misc/FDBigInteger;->data:[I

    iget v14, v3, Lsun/misc/FDBigInteger;->nWords:I

    invoke-static {v13, v14, v9, v10, v8}, Lsun/misc/FDBigInteger;->mult([IIII[I)V

    goto :goto_1

    :cond_6
    const/4 v13, 0x0

    goto :goto_2

    :cond_7
    if-eqz p3, :cond_9

    if-nez v2, :cond_8

    new-instance v13, Lsun/misc/FDBigInteger;

    const/4 v14, 0x2

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v9, v14, v15

    const/4 v15, 0x1

    aput v10, v14, v15

    invoke-direct {v13, v14, v12}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v13

    :cond_8
    new-instance v13, Lsun/misc/FDBigInteger;

    const/4 v14, 0x3

    new-array v14, v14, [I

    shl-int v15, v9, v2

    const/16 v16, 0x0

    aput v15, v14, v16

    shl-int v15, v10, v2

    rsub-int/lit8 v16, v2, 0x20

    ushr-int v16, v9, v16

    or-int v15, v15, v16

    const/16 v16, 0x1

    aput v15, v14, v16

    rsub-int/lit8 v15, v2, 0x20

    ushr-int v15, v10, v15

    const/16 v16, 0x2

    aput v15, v14, v16

    invoke-direct {v13, v14, v12}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v13

    :cond_9
    new-instance v13, Lsun/misc/FDBigInteger;

    const/4 v14, 0x2

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v9, v14, v15

    const/4 v15, 0x1

    aput v10, v14, v15

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v13
.end method

.method private static valueOfPow2(I)Lsun/misc/FDBigInteger;
    .locals 6

    const/4 v4, 0x1

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v0, p0, 0x1f

    new-instance v2, Lsun/misc/FDBigInteger;

    new-array v3, v4, [I

    shl-int/2addr v4, v0

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-direct {v2, v3, v1}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v2
.end method

.method public static valueOfPow52(II)Lsun/misc/FDBigInteger;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    invoke-static {p0}, Lsun/misc/FDBigInteger;->big5pow(I)Lsun/misc/FDBigInteger;

    move-result-object v3

    return-object v3

    :cond_0
    sget-object v3, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    array-length v3, v3

    if-ge p0, v3, :cond_2

    sget-object v3, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    aget v1, v3, p0

    shr-int/lit8 v2, p1, 0x5

    and-int/lit8 v0, p1, 0x1f

    if-nez v0, :cond_1

    new-instance v3, Lsun/misc/FDBigInteger;

    new-array v4, v7, [I

    aput v1, v4, v6

    invoke-direct {v3, v4, v2}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v3

    :cond_1
    new-instance v3, Lsun/misc/FDBigInteger;

    const/4 v4, 0x2

    new-array v4, v4, [I

    shl-int v5, v1, v0

    aput v5, v4, v6

    rsub-int/lit8 v5, v0, 0x20

    ushr-int v5, v1, v5

    aput v5, v4, v7

    invoke-direct {v3, v4, v2}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v3

    :cond_2
    invoke-static {p0}, Lsun/misc/FDBigInteger;->big5pow(I)Lsun/misc/FDBigInteger;

    move-result-object v3

    invoke-virtual {v3, p1}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v3

    return-object v3

    :cond_3
    invoke-static {p1}, Lsun/misc/FDBigInteger;->valueOfPow2(I)Lsun/misc/FDBigInteger;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public addAndCmp(Lsun/misc/FDBigInteger;Lsun/misc/FDBigInteger;)I
    .locals 18

    invoke-direct/range {p1 .. p1}, Lsun/misc/FDBigInteger;->size()I

    move-result v7

    invoke-direct/range {p2 .. p2}, Lsun/misc/FDBigInteger;->size()I

    move-result v12

    if-lt v7, v12, :cond_0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move v2, v7

    move v4, v12

    :goto_0
    invoke-direct/range {p0 .. p0}, Lsun/misc/FDBigInteger;->size()I

    move-result v6

    if-nez v2, :cond_2

    if-nez v6, :cond_1

    const/4 v13, 0x0

    :goto_1
    return v13

    :cond_0
    move-object/from16 v3, p2

    move-object/from16 v5, p1

    move v2, v12

    move v4, v7

    goto :goto_0

    :cond_1
    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v13

    return v13

    :cond_3
    if-le v2, v6, :cond_4

    const/4 v13, -0x1

    return v13

    :cond_4
    add-int/lit8 v13, v2, 0x1

    if-ge v13, v6, :cond_5

    const/4 v13, 0x1

    return v13

    :cond_5
    iget-object v13, v3, Lsun/misc/FDBigInteger;->data:[I

    iget v14, v3, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v14, v14, -0x1

    aget v13, v13, v14

    int-to-long v14, v13

    const-wide v16, 0xffffffffL

    and-long v8, v14, v16

    if-ne v4, v2, :cond_6

    iget-object v13, v5, Lsun/misc/FDBigInteger;->data:[I

    iget v14, v5, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v14, v14, -0x1

    aget v13, v13, v14

    int-to-long v14, v13

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    add-long/2addr v8, v14

    :cond_6
    const/16 v13, 0x20

    ushr-long v14, v8, v13

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_9

    const-wide/16 v14, 0x1

    add-long/2addr v14, v8

    const/16 v13, 0x20

    ushr-long/2addr v14, v13

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_c

    if-ge v2, v6, :cond_7

    const/4 v13, 0x1

    return v13

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v0, p0

    iget v14, v0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v14, v14, -0x1

    aget v13, v13, v14

    int-to-long v14, v13

    const-wide v16, 0xffffffffL

    and-long v10, v14, v16

    cmp-long v13, v10, v8

    if-gez v13, :cond_8

    const/4 v13, -0x1

    return v13

    :cond_8
    const-wide/16 v14, 0x1

    add-long/2addr v14, v8

    cmp-long v13, v10, v14

    if-lez v13, :cond_c

    const/4 v13, 0x1

    return v13

    :cond_9
    add-int/lit8 v13, v2, 0x1

    if-le v13, v6, :cond_a

    const/4 v13, -0x1

    return v13

    :cond_a
    const/16 v13, 0x20

    ushr-long/2addr v8, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v0, p0

    iget v14, v0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v14, v14, -0x1

    aget v13, v13, v14

    int-to-long v14, v13

    const-wide v16, 0xffffffffL

    and-long v10, v14, v16

    cmp-long v13, v10, v8

    if-gez v13, :cond_b

    const/4 v13, -0x1

    return v13

    :cond_b
    const-wide/16 v14, 0x1

    add-long/2addr v14, v8

    cmp-long v13, v10, v14

    if-lez v13, :cond_c

    const/4 v13, 0x1

    return v13

    :cond_c
    invoke-direct {v3, v5}, Lsun/misc/FDBigInteger;->add(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v13

    return v13
.end method

.method public cmp(Lsun/misc/FDBigInteger;)I
    .locals 14

    const-wide v12, 0xffffffffL

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v10, 0x0

    iget v8, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget v9, p0, Lsun/misc/FDBigInteger;->offset:I

    add-int v2, v8, v9

    iget v8, p1, Lsun/misc/FDBigInteger;->nWords:I

    iget v9, p1, Lsun/misc/FDBigInteger;->offset:I

    add-int v5, v8, v9

    if-le v2, v5, :cond_0

    return v7

    :cond_0
    if-ge v2, v5, :cond_1

    return v6

    :cond_1
    iget v1, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget v4, p1, Lsun/misc/FDBigInteger;->nWords:I

    :cond_2
    if-lez v1, :cond_4

    if-lez v4, :cond_4

    iget-object v8, p0, Lsun/misc/FDBigInteger;->data:[I

    add-int/lit8 v1, v1, -0x1

    aget v0, v8, v1

    iget-object v8, p1, Lsun/misc/FDBigInteger;->data:[I

    add-int/lit8 v4, v4, -0x1

    aget v3, v8, v4

    if-eq v0, v3, :cond_2

    int-to-long v8, v0

    and-long/2addr v8, v12

    int-to-long v10, v3

    and-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    :goto_0
    return v6

    :cond_3
    move v6, v7

    goto :goto_0

    :cond_4
    if-lez v1, :cond_5

    iget-object v6, p0, Lsun/misc/FDBigInteger;->data:[I

    invoke-static {v6, v1}, Lsun/misc/FDBigInteger;->checkZeroTail([II)I

    move-result v6

    return v6

    :cond_5
    if-lez v4, :cond_6

    iget-object v6, p1, Lsun/misc/FDBigInteger;->data:[I

    invoke-static {v6, v4}, Lsun/misc/FDBigInteger;->checkZeroTail([II)I

    move-result v6

    neg-int v6, v6

    return v6

    :cond_6
    return v10
.end method

.method public cmpPow52(II)I
    .locals 12

    if-nez p1, :cond_4

    shr-int/lit8 v4, p2, 0x5

    and-int/lit8 v2, p2, 0x1f

    iget v5, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget v6, p0, Lsun/misc/FDBigInteger;->offset:I

    add-int v3, v5, v6

    add-int/lit8 v5, v4, 0x1

    if-le v3, v5, :cond_0

    const/4 v5, 0x1

    return v5

    :cond_0
    add-int/lit8 v5, v4, 0x1

    if-ge v3, v5, :cond_1

    const/4 v5, -0x1

    return v5

    :cond_1
    iget-object v5, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v6, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v6, v6, -0x1

    aget v0, v5, v6

    const/4 v5, 0x1

    shl-int v1, v5, v2

    if-eq v0, v1, :cond_3

    int-to-long v6, v0

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    int-to-long v8, v1

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    const/4 v5, -0x1

    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v6, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Lsun/misc/FDBigInteger;->checkZeroTail([II)I

    move-result v5

    return v5

    :cond_4
    invoke-static {p1}, Lsun/misc/FDBigInteger;->big5pow(I)Lsun/misc/FDBigInteger;

    move-result-object v5

    invoke-virtual {v5, p2}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v5

    invoke-virtual {p0, v5}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v5

    return v5
.end method

.method public getNormalizationBias()I
    .locals 3

    iget v1, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Zero value cannot be normalized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v2, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1c

    :goto_0
    return v1

    :cond_1
    add-int/lit8 v1, v0, -0x4

    goto :goto_0
.end method

.method public leftInplaceSub(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;
    .locals 24

    sget-boolean v18, Lsun/misc/FDBigInteger;->-assertionsDisabled:Z

    if-nez v18, :cond_0

    invoke-direct/range {p0 .. p0}, Lsun/misc/FDBigInteger;->size()I

    move-result v18

    invoke-direct/range {p1 .. p1}, Lsun/misc/FDBigInteger;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    new-instance v18, Ljava/lang/AssertionError;

    const-string/jumbo v19, "result should be positive"

    invoke-direct/range {v18 .. v19}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v18

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lsun/misc/FDBigInteger;->isImmutable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    new-instance v11, Lsun/misc/FDBigInteger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    move-object/from16 v0, p0

    iget v0, v0, Lsun/misc/FDBigInteger;->offset:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v11, v0, v1}, Lsun/misc/FDBigInteger;-><init>([II)V

    :goto_0
    move-object/from16 v0, p1

    iget v0, v0, Lsun/misc/FDBigInteger;->offset:I

    move/from16 v18, v0

    iget v0, v11, Lsun/misc/FDBigInteger;->offset:I

    move/from16 v19, v0

    sub-int v12, v18, v19

    move-object/from16 v0, p1

    iget-object v15, v0, Lsun/misc/FDBigInteger;->data:[I

    iget-object v8, v11, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v0, p1

    iget v0, v0, Lsun/misc/FDBigInteger;->nWords:I

    move/from16 v17, v0

    iget v10, v11, Lsun/misc/FDBigInteger;->nWords:I

    if-gez v12, :cond_1

    sub-int v14, v10, v12

    array-length v0, v8

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v14, v0, :cond_3

    neg-int v0, v12

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v8, v0, v8, v1, v10}, Ljava/lang/System;->arraycopy([II[III)V

    neg-int v0, v12

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v8, v0, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    :goto_1
    move-object/from16 v0, p1

    iget v0, v0, Lsun/misc/FDBigInteger;->offset:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Lsun/misc/FDBigInteger;->offset:I

    move v10, v14

    iput v14, v11, Lsun/misc/FDBigInteger;->nWords:I

    const/4 v12, 0x0

    :cond_1
    const-wide/16 v4, 0x0

    move v9, v12

    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    if-ge v9, v10, :cond_4

    aget v18, v8, v9

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    aget v20, v15, v16

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    sub-long v18, v18, v20

    add-long v6, v18, v4

    long-to-int v0, v6

    move/from16 v18, v0

    aput v18, v8, v9

    const/16 v18, 0x20

    shr-long v4, v6, v18

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v11, p0

    goto/16 :goto_0

    :cond_3
    new-array v13, v14, [I

    neg-int v0, v12

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v8, v0, v13, v1, v10}, Ljava/lang/System;->arraycopy([II[III)V

    move-object v8, v13

    iput-object v13, v11, Lsun/misc/FDBigInteger;->data:[I

    goto :goto_1

    :cond_4
    :goto_3
    const-wide/16 v18, 0x0

    cmp-long v18, v4, v18

    if-eqz v18, :cond_5

    if-ge v9, v10, :cond_5

    aget v18, v8, v9

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    add-long v6, v18, v4

    long-to-int v0, v6

    move/from16 v18, v0

    aput v18, v8, v9

    const/16 v18, 0x20

    shr-long v4, v6, v18

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    sget-boolean v18, Lsun/misc/FDBigInteger;->-assertionsDisabled:Z

    if-nez v18, :cond_6

    const-wide/16 v18, 0x0

    cmp-long v18, v4, v18

    if-eqz v18, :cond_6

    new-instance v18, Ljava/lang/AssertionError;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v18

    :cond_6
    invoke-direct {v11}, Lsun/misc/FDBigInteger;->trimLeadingZeros()V

    return-object v11
.end method

.method public leftShift(I)Lsun/misc/FDBigInteger;
    .locals 12

    const/4 v10, 0x0

    if-eqz p1, :cond_0

    iget v9, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-nez v9, :cond_1

    :cond_0
    return-object p0

    :cond_1
    shr-int/lit8 v8, p1, 0x5

    and-int/lit8 v3, p1, 0x1f

    iget-boolean v9, p0, Lsun/misc/FDBigInteger;->isImmutable:Z

    if-eqz v9, :cond_4

    if-nez v3, :cond_2

    new-instance v9, Lsun/misc/FDBigInteger;

    iget-object v10, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v11, p0, Lsun/misc/FDBigInteger;->nWords:I

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    iget v11, p0, Lsun/misc/FDBigInteger;->offset:I

    add-int/2addr v11, v8

    invoke-direct {v9, v10, v11}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v9

    :cond_2
    rsub-int/lit8 v4, v3, 0x20

    iget v9, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v1, v9, -0x1

    iget-object v9, p0, Lsun/misc/FDBigInteger;->data:[I

    aget v5, v9, v1

    ushr-int v6, v5, v4

    if-eqz v6, :cond_3

    iget v9, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v9, v9, 0x1

    new-array v2, v9, [I

    iget v9, p0, Lsun/misc/FDBigInteger;->nWords:I

    aput v6, v2, v9

    :goto_0
    iget-object v0, p0, Lsun/misc/FDBigInteger;->data:[I

    invoke-static/range {v0 .. v5}, Lsun/misc/FDBigInteger;->leftShift([II[IIII)V

    new-instance v9, Lsun/misc/FDBigInteger;

    iget v10, p0, Lsun/misc/FDBigInteger;->offset:I

    add-int/2addr v10, v8

    invoke-direct {v9, v2, v10}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v9

    :cond_3
    iget v9, p0, Lsun/misc/FDBigInteger;->nWords:I

    new-array v2, v9, [I

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_7

    rsub-int/lit8 v4, v3, 0x20

    iget-object v9, p0, Lsun/misc/FDBigInteger;->data:[I

    aget v9, v9, v10

    shl-int/2addr v9, v3

    if-nez v9, :cond_8

    const/4 v1, 0x0

    iget-object v9, p0, Lsun/misc/FDBigInteger;->data:[I

    aget v5, v9, v1

    :goto_1
    iget v9, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v9, v9, -0x1

    if-ge v1, v9, :cond_5

    ushr-int v7, v5, v4

    iget-object v9, p0, Lsun/misc/FDBigInteger;->data:[I

    add-int/lit8 v10, v1, 0x1

    aget v5, v9, v10

    shl-int v9, v5, v3

    or-int/2addr v7, v9

    iget-object v9, p0, Lsun/misc/FDBigInteger;->data:[I

    aput v7, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    ushr-int v7, v5, v4

    iget-object v9, p0, Lsun/misc/FDBigInteger;->data:[I

    aput v7, v9, v1

    if-nez v7, :cond_6

    iget v9, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lsun/misc/FDBigInteger;->nWords:I

    :cond_6
    iget v9, p0, Lsun/misc/FDBigInteger;->offset:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lsun/misc/FDBigInteger;->offset:I

    :cond_7
    :goto_2
    iget v9, p0, Lsun/misc/FDBigInteger;->offset:I

    add-int/2addr v9, v8

    iput v9, p0, Lsun/misc/FDBigInteger;->offset:I

    return-object p0

    :cond_8
    iget v9, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v1, v9, -0x1

    iget-object v9, p0, Lsun/misc/FDBigInteger;->data:[I

    aget v5, v9, v1

    ushr-int v6, v5, v4

    iget-object v2, p0, Lsun/misc/FDBigInteger;->data:[I

    iget-object v0, p0, Lsun/misc/FDBigInteger;->data:[I

    if-eqz v6, :cond_a

    iget v9, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget-object v10, p0, Lsun/misc/FDBigInteger;->data:[I

    array-length v10, v10

    if-ne v9, v10, :cond_9

    iget v9, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v9, v9, 0x1

    new-array v2, v9, [I

    iput-object v2, p0, Lsun/misc/FDBigInteger;->data:[I

    :cond_9
    iget v9, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lsun/misc/FDBigInteger;->nWords:I

    aput v6, v2, v9

    :cond_a
    invoke-static/range {v0 .. v5}, Lsun/misc/FDBigInteger;->leftShift([II[IIII)V

    goto :goto_2
.end method

.method public makeImmutable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/misc/FDBigInteger;->isImmutable:Z

    return-void
.end method

.method public multBy10()Lsun/misc/FDBigInteger;
    .locals 7

    const/4 v6, 0x0

    iget v2, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    iget-boolean v2, p0, Lsun/misc/FDBigInteger;->isImmutable:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [I

    iget v2, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget-object v3, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v4, p0, Lsun/misc/FDBigInteger;->nWords:I

    invoke-static {v3, v4, v1}, Lsun/misc/FDBigInteger;->multAndCarryBy10([II[I)I

    move-result v3

    aput v3, v1, v2

    new-instance v2, Lsun/misc/FDBigInteger;

    iget v3, p0, Lsun/misc/FDBigInteger;->offset:I

    invoke-direct {v2, v1, v3}, Lsun/misc/FDBigInteger;-><init>([II)V

    return-object v2

    :cond_1
    iget-object v2, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v3, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget-object v4, p0, Lsun/misc/FDBigInteger;->data:[I

    invoke-static {v2, v3, v4}, Lsun/misc/FDBigInteger;->multAndCarryBy10([II[I)I

    move-result v0

    if-eqz v0, :cond_4

    iget v2, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget-object v3, p0, Lsun/misc/FDBigInteger;->data:[I

    array-length v3, v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lsun/misc/FDBigInteger;->data:[I

    aget v2, v2, v6

    if-nez v2, :cond_3

    iget-object v2, p0, Lsun/misc/FDBigInteger;->data:[I

    iget-object v3, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v4, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lsun/misc/FDBigInteger;->nWords:I

    const/4 v5, 0x1

    invoke-static {v2, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy([II[III)V

    iget v2, p0, Lsun/misc/FDBigInteger;->offset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lsun/misc/FDBigInteger;->offset:I

    :cond_2
    :goto_0
    iget-object v2, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v3, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lsun/misc/FDBigInteger;->nWords:I

    aput v0, v2, v3

    :goto_1
    return-object p0

    :cond_3
    iget-object v2, p0, Lsun/misc/FDBigInteger;->data:[I

    iget-object v3, p0, Lsun/misc/FDBigInteger;->data:[I

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lsun/misc/FDBigInteger;->data:[I

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lsun/misc/FDBigInteger;->trimLeadingZeros()V

    goto :goto_1
.end method

.method public multByPow52(II)Lsun/misc/FDBigInteger;
    .locals 8

    iget v4, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-nez v4, :cond_0

    return-object p0

    :cond_0
    move-object v3, p0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    sget-object v4, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    array-length v4, v4

    if-ge p1, v4, :cond_3

    iget v4, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v0

    new-array v2, v4, [I

    iget-object v4, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v5, p0, Lsun/misc/FDBigInteger;->nWords:I

    sget-object v6, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    aget v6, v6, p1

    invoke-static {v4, v5, v6, v2}, Lsun/misc/FDBigInteger;->mult([III[I)V

    new-instance v3, Lsun/misc/FDBigInteger;

    iget v4, p0, Lsun/misc/FDBigInteger;->offset:I

    invoke-direct {v3, v2, v4}, Lsun/misc/FDBigInteger;-><init>([II)V

    :cond_1
    :goto_1
    invoke-virtual {v3, p2}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v4

    return-object v4

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lsun/misc/FDBigInteger;->big5pow(I)Lsun/misc/FDBigInteger;

    move-result-object v1

    iget v4, p0, Lsun/misc/FDBigInteger;->nWords:I

    invoke-direct {v1}, Lsun/misc/FDBigInteger;->size()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    new-array v2, v4, [I

    iget-object v4, p0, Lsun/misc/FDBigInteger;->data:[I

    iget v5, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget-object v6, v1, Lsun/misc/FDBigInteger;->data:[I

    iget v7, v1, Lsun/misc/FDBigInteger;->nWords:I

    invoke-static {v4, v5, v6, v7, v2}, Lsun/misc/FDBigInteger;->mult([II[II[I)V

    new-instance v3, Lsun/misc/FDBigInteger;

    iget v4, p0, Lsun/misc/FDBigInteger;->offset:I

    iget v5, v1, Lsun/misc/FDBigInteger;->offset:I

    add-int/2addr v4, v5

    invoke-direct {v3, v2, v4}, Lsun/misc/FDBigInteger;-><init>([II)V

    goto :goto_1
.end method

.method public quoRemIteration(Lsun/misc/FDBigInteger;)I
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-boolean v16, Lsun/misc/FDBigInteger;->-assertionsDisabled:Z

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lsun/misc/FDBigInteger;->isImmutable:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    new-instance v16, Ljava/lang/AssertionError;

    const-string/jumbo v17, "cannot modify immutable value"

    invoke-direct/range {v16 .. v17}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v16

    :cond_0
    invoke-direct/range {p0 .. p0}, Lsun/misc/FDBigInteger;->size()I

    move-result v15

    invoke-direct/range {p1 .. p1}, Lsun/misc/FDBigInteger;->size()I

    move-result v8

    if-ge v15, v8, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/misc/FDBigInteger;->nWords:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lsun/misc/FDBigInteger;->multAndCarryBy10([II[I)I

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/misc/FDBigInteger;->nWords:I

    move/from16 v17, v0

    add-int/lit8 v18, v17, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lsun/misc/FDBigInteger;->nWords:I

    aput v4, v16, v17

    :goto_0
    const/16 v16, 0x0

    return v16

    :cond_1
    invoke-direct/range {p0 .. p0}, Lsun/misc/FDBigInteger;->trimLeadingZeros()V

    goto :goto_0

    :cond_2
    if-le v15, v8, :cond_3

    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v17, "disparate values"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/misc/FDBigInteger;->nWords:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    aget v16, v16, v17

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lsun/misc/FDBigInteger;->nWords:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    div-long v6, v16, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v7, v1}, Lsun/misc/FDBigInteger;->multDiffMe(JLsun/misc/FDBigInteger;)J

    move-result-wide v2

    const-wide/16 v16, 0x0

    cmp-long v16, v2, v16

    if-eqz v16, :cond_6

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lsun/misc/FDBigInteger;->offset:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/misc/FDBigInteger;->offset:I

    move/from16 v17, v0

    sub-int v13, v16, v17

    move-object/from16 v0, p1

    iget-object v9, v0, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/misc/FDBigInteger;->data:[I

    :goto_1
    const-wide/16 v16, 0x0

    cmp-long v16, v10, v16

    if-nez v16, :cond_6

    const/4 v5, 0x0

    move v12, v13

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lsun/misc/FDBigInteger;->nWords:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v12, v0, :cond_4

    aget v16, v14, v12

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    aget v18, v9, v5

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    add-long v16, v16, v18

    add-long v10, v10, v16

    long-to-int v0, v10

    move/from16 v16, v0

    aput v16, v14, v12

    const/16 v16, 0x20

    ushr-long v10, v10, v16

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    sget-boolean v16, Lsun/misc/FDBigInteger;->-assertionsDisabled:Z

    if-nez v16, :cond_5

    const-wide/16 v16, 0x0

    cmp-long v16, v10, v16

    if-eqz v16, :cond_5

    const-wide/16 v16, 0x1

    cmp-long v16, v10, v16

    if-eqz v16, :cond_5

    new-instance v16, Ljava/lang/AssertionError;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v16

    :cond_5
    const-wide/16 v16, 0x1

    sub-long v6, v6, v16

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/misc/FDBigInteger;->nWords:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lsun/misc/FDBigInteger;->multAndCarryBy10([II[I)I

    move-result v4

    sget-boolean v16, Lsun/misc/FDBigInteger;->-assertionsDisabled:Z

    if-nez v16, :cond_7

    if-eqz v4, :cond_7

    new-instance v16, Ljava/lang/AssertionError;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v16

    :cond_7
    invoke-direct/range {p0 .. p0}, Lsun/misc/FDBigInteger;->trimLeadingZeros()V

    long-to-int v0, v6

    move/from16 v16, v0

    return v16
.end method

.method public rightInplaceSub(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;
    .locals 26

    sget-boolean v19, Lsun/misc/FDBigInteger;->-assertionsDisabled:Z

    if-nez v19, :cond_0

    invoke-direct/range {p0 .. p0}, Lsun/misc/FDBigInteger;->size()I

    move-result v19

    invoke-direct/range {p1 .. p1}, Lsun/misc/FDBigInteger;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    new-instance v19, Ljava/lang/AssertionError;

    const-string/jumbo v20, "result should be positive"

    invoke-direct/range {v19 .. v20}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v19

    :cond_0
    move-object/from16 v11, p0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lsun/misc/FDBigInteger;->isImmutable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    new-instance v18, Lsun/misc/FDBigInteger;

    move-object/from16 v0, p1

    iget-object v0, v0, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [I

    move-object/from16 v0, p1

    iget v0, v0, Lsun/misc/FDBigInteger;->offset:I

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lsun/misc/FDBigInteger;-><init>([II)V

    move-object/from16 p1, v18

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lsun/misc/FDBigInteger;->offset:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lsun/misc/FDBigInteger;->offset:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    move-object/from16 v0, p1

    iget-object v15, v0, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/misc/FDBigInteger;->data:[I

    move-object/from16 v0, p1

    iget v0, v0, Lsun/misc/FDBigInteger;->nWords:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v10, v0, Lsun/misc/FDBigInteger;->nWords:I

    if-gez v12, :cond_4

    move v14, v10

    array-length v0, v15

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_3

    neg-int v0, v12

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v15, v0, v15, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    neg-int v0, v12

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-static {v15, v0, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lsun/misc/FDBigInteger;->offset:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lsun/misc/FDBigInteger;->offset:I

    sub-int v17, v17, v12

    const/4 v12, 0x0

    :cond_2
    :goto_1
    const/16 v16, 0x0

    const-wide/16 v4, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v0, v12, :cond_5

    aget v19, v15, v16

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    const-wide/16 v22, 0x0

    sub-long v20, v22, v20

    add-long v6, v20, v4

    long-to-int v0, v6

    move/from16 v19, v0

    aput v19, v15, v16

    const/16 v19, 0x20

    shr-long v4, v6, v19

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_3
    new-array v13, v10, [I

    neg-int v0, v12

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v15, v0, v13, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    move-object v15, v13

    move-object/from16 v0, p1

    iput-object v13, v0, Lsun/misc/FDBigInteger;->data:[I

    goto :goto_0

    :cond_4
    add-int v14, v10, v12

    array-length v0, v15

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v14, v0, :cond_2

    invoke-static {v15, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v15

    move-object/from16 v0, p1

    iput-object v15, v0, Lsun/misc/FDBigInteger;->data:[I

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v10, :cond_6

    aget v19, v8, v9

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    aget v19, v15, v16

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    sub-long v20, v20, v22

    add-long v6, v20, v4

    long-to-int v0, v6

    move/from16 v19, v0

    aput v19, v15, v16

    const/16 v19, 0x20

    shr-long v4, v6, v19

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    sget-boolean v19, Lsun/misc/FDBigInteger;->-assertionsDisabled:Z

    if-nez v19, :cond_7

    const-wide/16 v20, 0x0

    cmp-long v19, v4, v20

    if-eqz v19, :cond_7

    new-instance v19, Ljava/lang/AssertionError;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v19

    :cond_7
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lsun/misc/FDBigInteger;->nWords:I

    invoke-direct/range {p1 .. p1}, Lsun/misc/FDBigInteger;->trimLeadingZeros()V

    return-object p1
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 5

    iget v3, p0, Lsun/misc/FDBigInteger;->nWords:I

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    new-array v1, v3, [B

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lsun/misc/FDBigInteger;->data:[I

    aget v2, v3, v0

    array-length v3, v1

    mul-int/lit8 v4, v0, 0x4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    int-to-byte v4, v2

    aput-byte v4, v1, v3

    array-length v3, v1

    mul-int/lit8 v4, v0, 0x4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x2

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    array-length v3, v1

    mul-int/lit8 v4, v0, 0x4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x3

    shr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    array-length v3, v1

    mul-int/lit8 v4, v0, 0x4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x4

    shr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1}, Ljava/math/BigInteger;-><init>([B)V

    iget v4, p0, Lsun/misc/FDBigInteger;->offset:I

    mul-int/lit8 v4, v4, 0x20

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    return-object v3
.end method

.method public toHexString()Ljava/lang/String;
    .locals 6

    iget v4, p0, Lsun/misc/FDBigInteger;->nWords:I

    if-nez v4, :cond_0

    const-string/jumbo v4, "0"

    return-object v4

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget v4, p0, Lsun/misc/FDBigInteger;->nWords:I

    iget v5, p0, Lsun/misc/FDBigInteger;->offset:I

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x8

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v4, p0, Lsun/misc/FDBigInteger;->nWords:I

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v4, p0, Lsun/misc/FDBigInteger;->data:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    const/16 v4, 0x8

    if-ge v1, v4, :cond_1

    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lsun/misc/FDBigInteger;->offset:I

    :goto_2
    if-lez v0, :cond_3

    const-string/jumbo v4, "00000000"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lsun/misc/FDBigInteger;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
