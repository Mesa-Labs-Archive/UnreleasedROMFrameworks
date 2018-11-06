.class Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;
.super Ljava/lang/Object;
.source "FloatingDecimal.java"

# interfaces
.implements Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/FloatingDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BinaryToASCIIBuffer"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final N_5_BITS:[I

.field private static insignificantDigitsNumber:[I


# instance fields
.field private final buffer:[C

.field private decExponent:I

.field private decimalDigitsRoundedUp:Z

.field private final digits:[C

.field private exactDecimalConversion:Z

.field private firstDigitIndex:I

.field private isNegative:Z

.field private nDigits:I


# direct methods
.method static synthetic -wrap0(Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;IJIZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->dtoa(IJIZ)V

    return-void
.end method

.method static synthetic -wrap1(Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->setSign(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-assertionsDisabled:Z

    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->insignificantDigitsNumber:[I

    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->N_5_BITS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x6
        0x6
        0x6
        0x6
        0x7
        0x7
        0x7
        0x8
        0x8
        0x8
        0x9
        0x9
        0x9
        0x9
        0xa
        0xa
        0xa
        0xb
        0xb
        0xb
        0xc
        0xc
        0xc
        0xc
        0xd
        0xd
        0xd
        0xe
        0xe
        0xe
        0xf
        0xf
        0xf
        0xf
        0x10
        0x10
        0x10
        0x11
        0x11
        0x11
        0x12
        0x12
        0x12
        0x13
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3
        0x5
        0x7
        0xa
        0xc
        0xe
        0x11
        0x13
        0x15
        0x18
        0x1a
        0x1c
        0x1f
        0x21
        0x23
        0x26
        0x28
        0x2a
        0x2d
        0x2f
        0x31
        0x34
        0x36
        0x38
        0x3b
        0x3d
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1a

    new-array v0, v0, [C

    iput-object v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->buffer:[C

    iput-boolean v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->exactDecimalConversion:Z

    iput-boolean v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decimalDigitsRoundedUp:Z

    const/16 v0, 0x14

    new-array v0, v0, [C

    iput-object v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    return-void
.end method

.method constructor <init>(Z[C)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1a

    new-array v0, v0, [C

    iput-object v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->buffer:[C

    iput-boolean v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->exactDecimalConversion:Z

    iput-boolean v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decimalDigitsRoundedUp:Z

    iput-boolean p1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->isNegative:Z

    iput v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    iput-object p2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    iput v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    array-length v0, p2

    iput v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    return-void
.end method

.method private developLongDigits(IJI)V
    .locals 10

    if-eqz p4, :cond_0

    sget-object v8, Lsun/misc/FDBigInteger;->LONG_5_POW:[J

    aget-wide v8, v8, p4

    shl-long v4, v8, p4

    rem-long v6, p2, v4

    div-long/2addr p2, v4

    add-int/2addr p1, p4

    const/4 v8, 0x1

    shr-long v8, v4, v8

    cmp-long v8, v6, v8

    if-ltz v8, :cond_0

    const-wide/16 v8, 0x1

    add-long/2addr p2, v8

    :cond_0
    iget-object v8, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    array-length v8, v8

    add-int/lit8 v1, v8, -0x1

    const-wide/32 v8, 0x7fffffff

    cmp-long v8, p2, v8

    if-gtz v8, :cond_4

    sget-boolean v8, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-assertionsDisabled:Z

    if-nez v8, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v8, p2, v8

    if-gtz v8, :cond_1

    new-instance v8, Ljava/lang/AssertionError;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    :cond_1
    long-to-int v3, p2

    rem-int/lit8 v0, v3, 0xa

    div-int/lit8 v3, v3, 0xa

    :goto_0
    if-nez v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    rem-int/lit8 v0, v3, 0xa

    div-int/lit8 v3, v3, 0xa

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_3

    iget-object v8, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    add-int/lit8 v1, v2, -0x1

    add-int/lit8 v9, v0, 0x30

    int-to-char v9, v9

    aput-char v9, v8, v2

    add-int/lit8 p1, p1, 0x1

    rem-int/lit8 v0, v3, 0xa

    div-int/lit8 v3, v3, 0xa

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    add-int/lit8 v9, v0, 0x30

    int-to-char v9, v9

    aput-char v9, v8, v2

    move v1, v2

    :goto_2
    add-int/lit8 v8, p1, 0x1

    iput v8, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    iput v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    iget-object v8, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    array-length v8, v8

    sub-int/2addr v8, v1

    iput v8, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    return-void

    :cond_4
    const-wide/16 v8, 0xa

    rem-long v8, p2, v8

    long-to-int v0, v8

    const-wide/16 v8, 0xa

    div-long/2addr p2, v8

    :goto_3
    if-nez v0, :cond_5

    add-int/lit8 p1, p1, 0x1

    const-wide/16 v8, 0xa

    rem-long v8, p2, v8

    long-to-int v0, v8

    const-wide/16 v8, 0xa

    div-long/2addr p2, v8

    goto :goto_3

    :goto_4
    const-wide/16 v8, 0x0

    cmp-long v8, p2, v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    add-int/lit8 v1, v2, -0x1

    add-int/lit8 v9, v0, 0x30

    int-to-char v9, v9

    aput-char v9, v8, v2

    add-int/lit8 p1, p1, 0x1

    const-wide/16 v8, 0xa

    rem-long v8, p2, v8

    long-to-int v0, v8

    const-wide/16 v8, 0xa

    div-long/2addr p2, v8

    :cond_5
    move v2, v1

    goto :goto_4

    :cond_6
    iget-object v8, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    add-int/lit8 v9, v0, 0x30

    int-to-char v9, v9

    aput-char v9, v8, v2

    move v1, v2

    goto :goto_2
.end method

.method private dtoa(IJIZ)V
    .locals 48

    sget-boolean v44, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-assertionsDisabled:Z

    if-nez v44, :cond_0

    const-wide/16 v44, 0x0

    cmp-long v44, p2, v44

    if-gtz v44, :cond_0

    new-instance v44, Ljava/lang/AssertionError;

    invoke-direct/range {v44 .. v44}, Ljava/lang/AssertionError;-><init>()V

    throw v44

    :cond_0
    sget-boolean v44, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-assertionsDisabled:Z

    if-nez v44, :cond_1

    const-wide/high16 v44, 0x10000000000000L

    and-long v44, v44, p2

    const-wide/16 v46, 0x0

    cmp-long v44, v44, v46

    if-nez v44, :cond_1

    new-instance v44, Ljava/lang/AssertionError;

    invoke-direct/range {v44 .. v44}, Ljava/lang/AssertionError;-><init>()V

    throw v44

    :cond_1
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v38

    rsub-int/lit8 v27, v38, 0x35

    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decimalDigitsRoundedUp:Z

    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->exactDecimalConversion:Z

    sub-int v44, v27, p1

    add-int/lit8 v44, v44, -0x1

    const/16 v45, 0x0

    move/from16 v0, v45

    move/from16 v1, v44

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v30

    const/16 v44, 0x3e

    move/from16 v0, p1

    move/from16 v1, v44

    if-gt v0, v1, :cond_4

    const/16 v44, -0x15

    move/from16 v0, p1

    move/from16 v1, v44

    if-lt v0, v1, :cond_4

    sget-object v44, Lsun/misc/FDBigInteger;->LONG_5_POW:[J

    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v44, v0

    move/from16 v0, v30

    move/from16 v1, v44

    if-ge v0, v1, :cond_4

    sget-object v44, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->N_5_BITS:[I

    aget v44, v44, v30

    add-int v44, v44, v27

    const/16 v45, 0x40

    move/from16 v0, v44

    move/from16 v1, v45

    if-ge v0, v1, :cond_4

    if-nez v30, :cond_4

    move/from16 v0, p1

    move/from16 v1, p4

    if-le v0, v1, :cond_2

    sub-int v44, p1, p4

    add-int/lit8 v44, v44, -0x1

    invoke-static/range {v44 .. v44}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->insignificantDigitsForPow2(I)I

    move-result v22

    :goto_0
    const/16 v44, 0x34

    move/from16 v0, p1

    move/from16 v1, v44

    if-lt v0, v1, :cond_3

    add-int/lit8 v44, p1, -0x34

    shl-long p2, p2, v44

    :goto_1
    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-wide/from16 v2, p2

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->developLongDigits(IJI)V

    return-void

    :cond_2
    const/16 v22, 0x0

    goto :goto_0

    :cond_3
    rsub-int/lit8 v44, p1, 0x34

    ushr-long p2, p2, v44

    goto :goto_1

    :cond_4
    move-wide/from16 v0, p2

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->estimateDecExp(JI)I

    move-result v20

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v44, v0

    const/16 v45, 0x0

    move/from16 v0, v45

    move/from16 v1, v44

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int v44, v7, v30

    add-int v6, v44, p1

    const/16 v44, 0x0

    move/from16 v0, v44

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int v13, v14, v30

    move v11, v7

    sub-int v10, v6, p4

    ushr-long p2, p2, v38

    add-int/lit8 v44, v27, -0x1

    sub-int v6, v6, v44

    invoke-static {v6, v13}, Ljava/lang/Math;->min(II)I

    move-result v17

    sub-int v6, v6, v17

    sub-int v13, v13, v17

    sub-int v10, v10, v17

    const/16 v44, 0x1

    move/from16 v0, v27

    move/from16 v1, v44

    if-ne v0, v1, :cond_5

    add-int/lit8 v10, v10, -0x1

    :cond_5
    if-gez v10, :cond_6

    sub-int/2addr v6, v10

    sub-int/2addr v13, v10

    const/4 v10, 0x0

    :cond_6
    const/16 v31, 0x0

    add-int v45, v27, v6

    sget-object v44, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->N_5_BITS:[I

    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    if-ge v7, v0, :cond_7

    sget-object v44, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->N_5_BITS:[I

    aget v44, v44, v7

    :goto_2
    add-int v8, v45, v44

    add-int/lit8 v45, v13, 0x1

    add-int/lit8 v44, v14, 0x1

    sget-object v46, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->N_5_BITS:[I

    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v46, v0

    move/from16 v0, v44

    move/from16 v1, v46

    if-ge v0, v1, :cond_8

    sget-object v44, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->N_5_BITS:[I

    add-int/lit8 v46, v14, 0x1

    aget v44, v44, v46

    :goto_3
    add-int v39, v45, v44

    const/16 v44, 0x40

    move/from16 v0, v44

    if-ge v8, v0, :cond_23

    const/16 v44, 0x40

    move/from16 v0, v39

    move/from16 v1, v44

    if-ge v0, v1, :cond_23

    const/16 v44, 0x20

    move/from16 v0, v44

    if-ge v8, v0, :cond_16

    const/16 v44, 0x20

    move/from16 v0, v39

    move/from16 v1, v44

    if-ge v0, v1, :cond_16

    move-wide/from16 v0, p2

    long-to-int v0, v0

    move/from16 v44, v0

    sget-object v45, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    aget v45, v45, v7

    mul-int v44, v44, v45

    shl-int v16, v44, v6

    sget-object v44, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    aget v44, v44, v14

    shl-int v34, v44, v13

    sget-object v44, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    aget v44, v44, v7

    shl-int v26, v44, v10

    mul-int/lit8 v41, v34, 0xa

    const/16 v31, 0x0

    div-int v33, v16, v34

    rem-int v44, v16, v34

    mul-int/lit8 v16, v44, 0xa

    mul-int/lit8 v26, v26, 0xa

    move/from16 v0, v16

    move/from16 v1, v26

    if-ge v0, v1, :cond_9

    const/16 v23, 0x1

    :goto_4
    add-int v44, v16, v26

    move/from16 v0, v44

    move/from16 v1, v41

    if-le v0, v1, :cond_a

    const/16 v21, 0x1

    :goto_5
    sget-boolean v44, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-assertionsDisabled:Z

    if-nez v44, :cond_b

    const/16 v44, 0xa

    move/from16 v0, v33

    move/from16 v1, v44

    if-lt v0, v1, :cond_b

    new-instance v44, Ljava/lang/AssertionError;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v44

    :cond_7
    mul-int/lit8 v44, v7, 0x3

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v44, v14, 0x1

    mul-int/lit8 v44, v44, 0x3

    goto :goto_3

    :cond_9
    const/16 v23, 0x0

    goto :goto_4

    :cond_a
    const/16 v21, 0x0

    goto :goto_5

    :cond_b
    if-nez v33, :cond_d

    xor-int/lit8 v44, v21, 0x1

    if-eqz v44, :cond_d

    add-int/lit8 v20, v20, -0x1

    :goto_6
    if-eqz p5, :cond_c

    const/16 v44, -0x3

    move/from16 v0, v20

    move/from16 v1, v44

    if-ge v0, v1, :cond_e

    :cond_c
    const/16 v23, 0x0

    const/16 v21, 0x0

    move/from16 v32, v31

    :goto_7
    if-nez v23, :cond_13

    xor-int/lit8 v44, v21, 0x1

    if-eqz v44, :cond_13

    div-int v33, v16, v34

    rem-int v44, v16, v34

    mul-int/lit8 v16, v44, 0xa

    mul-int/lit8 v26, v26, 0xa

    sget-boolean v44, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-assertionsDisabled:Z

    if-nez v44, :cond_f

    const/16 v44, 0xa

    move/from16 v0, v33

    move/from16 v1, v44

    if-lt v0, v1, :cond_f

    new-instance v44, Ljava/lang/AssertionError;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v44

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const/16 v31, 0x1

    add-int/lit8 v46, v33, 0x30

    move/from16 v0, v46

    int-to-char v0, v0

    move/from16 v46, v0

    aput-char v46, v44, v45

    goto :goto_6

    :cond_e
    const/16 v44, 0x8

    move/from16 v0, v20

    move/from16 v1, v44

    if-ge v0, v1, :cond_c

    move/from16 v32, v31

    goto :goto_7

    :cond_f
    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmp-long v44, v44, v46

    if-lez v44, :cond_12

    move/from16 v0, v16

    move/from16 v1, v26

    if-ge v0, v1, :cond_10

    const/16 v23, 0x1

    :goto_8
    add-int v44, v16, v26

    move/from16 v0, v44

    move/from16 v1, v41

    if-le v0, v1, :cond_11

    const/16 v21, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    move-object/from16 v44, v0

    add-int/lit8 v31, v32, 0x1

    add-int/lit8 v45, v33, 0x30

    move/from16 v0, v45

    int-to-char v0, v0

    move/from16 v45, v0

    aput-char v45, v44, v32

    move/from16 v32, v31

    goto :goto_7

    :cond_10
    const/16 v23, 0x0

    goto :goto_8

    :cond_11
    const/16 v21, 0x0

    goto :goto_9

    :cond_12
    const/16 v23, 0x1

    const/16 v21, 0x1

    goto :goto_9

    :cond_13
    shl-int/lit8 v44, v16, 0x1

    sub-int v44, v44, v41

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v24, v0

    if-nez v16, :cond_15

    const/16 v44, 0x1

    :goto_a
    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->exactDecimalConversion:Z

    move/from16 v31, v32

    :goto_b
    add-int/lit8 v44, v20, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    if-eqz v21, :cond_14

    if-eqz v23, :cond_31

    const-wide/16 v44, 0x0

    cmp-long v44, v24, v44

    if-nez v44, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    move/from16 v46, v0

    add-int v45, v45, v46

    add-int/lit8 v45, v45, -0x1

    aget-char v44, v44, v45

    and-int/lit8 v44, v44, 0x1

    if-eqz v44, :cond_14

    invoke-direct/range {p0 .. p0}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->roundup()V

    :cond_14
    :goto_c
    return-void

    :cond_15
    const/16 v44, 0x0

    goto :goto_a

    :cond_16
    sget-object v44, Lsun/misc/FDBigInteger;->LONG_5_POW:[J

    aget-wide v44, v44, v7

    mul-long v44, v44, p2

    shl-long v18, v44, v6

    sget-object v44, Lsun/misc/FDBigInteger;->LONG_5_POW:[J

    aget-wide v44, v44, v14

    shl-long v36, v44, v13

    sget-object v44, Lsun/misc/FDBigInteger;->LONG_5_POW:[J

    aget-wide v44, v44, v7

    shl-long v28, v44, v10

    const-wide/16 v44, 0xa

    mul-long v42, v36, v44

    const/16 v31, 0x0

    div-long v44, v18, v36

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v33, v0

    rem-long v44, v18, v36

    const-wide/16 v46, 0xa

    mul-long v18, v46, v44

    const-wide/16 v44, 0xa

    mul-long v28, v28, v44

    cmp-long v44, v18, v28

    if-gez v44, :cond_17

    const/16 v23, 0x1

    :goto_d
    add-long v44, v18, v28

    cmp-long v44, v44, v42

    if-lez v44, :cond_18

    const/16 v21, 0x1

    :goto_e
    sget-boolean v44, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-assertionsDisabled:Z

    if-nez v44, :cond_19

    const/16 v44, 0xa

    move/from16 v0, v33

    move/from16 v1, v44

    if-lt v0, v1, :cond_19

    new-instance v44, Ljava/lang/AssertionError;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v44

    :cond_17
    const/16 v23, 0x0

    goto :goto_d

    :cond_18
    const/16 v21, 0x0

    goto :goto_e

    :cond_19
    if-nez v33, :cond_1b

    xor-int/lit8 v44, v21, 0x1

    if-eqz v44, :cond_1b

    add-int/lit8 v20, v20, -0x1

    :goto_f
    if-eqz p5, :cond_1a

    const/16 v44, -0x3

    move/from16 v0, v20

    move/from16 v1, v44

    if-ge v0, v1, :cond_1c

    :cond_1a
    const/16 v23, 0x0

    const/16 v21, 0x0

    move/from16 v32, v31

    :goto_10
    if-nez v23, :cond_21

    xor-int/lit8 v44, v21, 0x1

    if-eqz v44, :cond_21

    div-long v44, v18, v36

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v33, v0

    rem-long v44, v18, v36

    const-wide/16 v46, 0xa

    mul-long v18, v46, v44

    const-wide/16 v44, 0xa

    mul-long v28, v28, v44

    sget-boolean v44, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-assertionsDisabled:Z

    if-nez v44, :cond_1d

    const/16 v44, 0xa

    move/from16 v0, v33

    move/from16 v1, v44

    if-lt v0, v1, :cond_1d

    new-instance v44, Ljava/lang/AssertionError;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v44

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const/16 v31, 0x1

    add-int/lit8 v46, v33, 0x30

    move/from16 v0, v46

    int-to-char v0, v0

    move/from16 v46, v0

    aput-char v46, v44, v45

    goto :goto_f

    :cond_1c
    const/16 v44, 0x8

    move/from16 v0, v20

    move/from16 v1, v44

    if-ge v0, v1, :cond_1a

    move/from16 v32, v31

    goto :goto_10

    :cond_1d
    const-wide/16 v44, 0x0

    cmp-long v44, v28, v44

    if-lez v44, :cond_20

    cmp-long v44, v18, v28

    if-gez v44, :cond_1e

    const/16 v23, 0x1

    :goto_11
    add-long v44, v18, v28

    cmp-long v44, v44, v42

    if-lez v44, :cond_1f

    const/16 v21, 0x1

    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    move-object/from16 v44, v0

    add-int/lit8 v31, v32, 0x1

    add-int/lit8 v45, v33, 0x30

    move/from16 v0, v45

    int-to-char v0, v0

    move/from16 v45, v0

    aput-char v45, v44, v32

    move/from16 v32, v31

    goto :goto_10

    :cond_1e
    const/16 v23, 0x0

    goto :goto_11

    :cond_1f
    const/16 v21, 0x0

    goto :goto_12

    :cond_20
    const/16 v23, 0x1

    const/16 v21, 0x1

    goto :goto_12

    :cond_21
    const/16 v44, 0x1

    shl-long v44, v18, v44

    sub-long v24, v44, v42

    const-wide/16 v44, 0x0

    cmp-long v44, v18, v44

    if-nez v44, :cond_22

    const/16 v44, 0x1

    :goto_13
    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->exactDecimalConversion:Z

    move/from16 v31, v32

    goto/16 :goto_b

    :cond_22
    const/16 v44, 0x0

    goto :goto_13

    :cond_23
    invoke-static {v14, v13}, Lsun/misc/FDBigInteger;->valueOfPow52(II)Lsun/misc/FDBigInteger;

    move-result-object v15

    invoke-virtual {v15}, Lsun/misc/FDBigInteger;->getNormalizationBias()I

    move-result v35

    move/from16 v0, v35

    invoke-virtual {v15, v0}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v15

    add-int v44, v6, v35

    move-wide/from16 v0, p2

    move/from16 v2, v44

    invoke-static {v0, v1, v7, v2}, Lsun/misc/FDBigInteger;->valueOfMulPow52(JII)Lsun/misc/FDBigInteger;

    move-result-object v9

    add-int/lit8 v44, v7, 0x1

    add-int v45, v10, v35

    add-int/lit8 v45, v45, 0x1

    invoke-static/range {v44 .. v45}, Lsun/misc/FDBigInteger;->valueOfPow52(II)Lsun/misc/FDBigInteger;

    move-result-object v12

    add-int/lit8 v44, v14, 0x1

    add-int v45, v13, v35

    add-int/lit8 v45, v45, 0x1

    invoke-static/range {v44 .. v45}, Lsun/misc/FDBigInteger;->valueOfPow52(II)Lsun/misc/FDBigInteger;

    move-result-object v40

    const/16 v31, 0x0

    invoke-virtual {v9, v15}, Lsun/misc/FDBigInteger;->quoRemIteration(Lsun/misc/FDBigInteger;)I

    move-result v33

    invoke-virtual {v9, v12}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v44

    if-gez v44, :cond_24

    const/16 v23, 0x1

    :goto_14
    move-object/from16 v0, v40

    invoke-virtual {v0, v9, v12}, Lsun/misc/FDBigInteger;->addAndCmp(Lsun/misc/FDBigInteger;Lsun/misc/FDBigInteger;)I

    move-result v44

    if-gtz v44, :cond_25

    const/16 v21, 0x1

    :goto_15
    sget-boolean v44, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-assertionsDisabled:Z

    if-nez v44, :cond_26

    const/16 v44, 0xa

    move/from16 v0, v33

    move/from16 v1, v44

    if-lt v0, v1, :cond_26

    new-instance v44, Ljava/lang/AssertionError;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v44

    :cond_24
    const/16 v23, 0x0

    goto :goto_14

    :cond_25
    const/16 v21, 0x0

    goto :goto_15

    :cond_26
    if-nez v33, :cond_28

    xor-int/lit8 v44, v21, 0x1

    if-eqz v44, :cond_28

    add-int/lit8 v20, v20, -0x1

    :goto_16
    if-eqz p5, :cond_27

    const/16 v44, -0x3

    move/from16 v0, v20

    move/from16 v1, v44

    if-ge v0, v1, :cond_29

    :cond_27
    const/16 v23, 0x0

    const/16 v21, 0x0

    move/from16 v32, v31

    :goto_17
    if-nez v23, :cond_2d

    xor-int/lit8 v44, v21, 0x1

    if-eqz v44, :cond_2d

    invoke-virtual {v9, v15}, Lsun/misc/FDBigInteger;->quoRemIteration(Lsun/misc/FDBigInteger;)I

    move-result v33

    sget-boolean v44, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-assertionsDisabled:Z

    if-nez v44, :cond_2a

    const/16 v44, 0xa

    move/from16 v0, v33

    move/from16 v1, v44

    if-lt v0, v1, :cond_2a

    new-instance v44, Ljava/lang/AssertionError;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v44

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const/16 v31, 0x1

    add-int/lit8 v46, v33, 0x30

    move/from16 v0, v46

    int-to-char v0, v0

    move/from16 v46, v0

    aput-char v46, v44, v45

    goto :goto_16

    :cond_29
    const/16 v44, 0x8

    move/from16 v0, v20

    move/from16 v1, v44

    if-ge v0, v1, :cond_27

    move/from16 v32, v31

    goto :goto_17

    :cond_2a
    invoke-virtual {v12}, Lsun/misc/FDBigInteger;->multBy10()Lsun/misc/FDBigInteger;

    move-result-object v12

    invoke-virtual {v9, v12}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v44

    if-gez v44, :cond_2b

    const/16 v23, 0x1

    :goto_18
    move-object/from16 v0, v40

    invoke-virtual {v0, v9, v12}, Lsun/misc/FDBigInteger;->addAndCmp(Lsun/misc/FDBigInteger;Lsun/misc/FDBigInteger;)I

    move-result v44

    if-gtz v44, :cond_2c

    const/16 v21, 0x1

    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    move-object/from16 v44, v0

    add-int/lit8 v31, v32, 0x1

    add-int/lit8 v45, v33, 0x30

    move/from16 v0, v45

    int-to-char v0, v0

    move/from16 v45, v0

    aput-char v45, v44, v32

    move/from16 v32, v31

    goto :goto_17

    :cond_2b
    const/16 v23, 0x0

    goto :goto_18

    :cond_2c
    const/16 v21, 0x0

    goto :goto_19

    :cond_2d
    if-eqz v21, :cond_2e

    if-eqz v23, :cond_2e

    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-virtual {v9, v0}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v9

    move-object/from16 v0, v40

    invoke-virtual {v9, v0}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v44

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v24, v0

    :goto_1a
    sget-object v44, Lsun/misc/FDBigInteger;->ZERO:Lsun/misc/FDBigInteger;

    move-object/from16 v0, v44

    invoke-virtual {v9, v0}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v44

    if-nez v44, :cond_2f

    const/16 v44, 0x1

    :goto_1b
    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->exactDecimalConversion:Z

    move/from16 v31, v32

    goto/16 :goto_b

    :cond_2e
    const-wide/16 v24, 0x0

    goto :goto_1a

    :cond_2f
    const/16 v44, 0x0

    goto :goto_1b

    :cond_30
    const-wide/16 v44, 0x0

    cmp-long v44, v24, v44

    if-lez v44, :cond_14

    invoke-direct/range {p0 .. p0}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->roundup()V

    goto/16 :goto_c

    :cond_31
    invoke-direct/range {p0 .. p0}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->roundup()V

    goto/16 :goto_c
.end method

.method static estimateDecExp(JI)I
    .locals 20

    const-wide v14, 0xfffffffffffffL

    and-long v14, v14, p0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    or-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    const-wide/high16 v14, 0x3ff8000000000000L    # 1.5

    sub-double v14, v4, v14

    const-wide v16, 0x3fd287a762c9bd93L    # 0.289529654

    mul-double v14, v14, v16

    const-wide v16, 0x3fc68a288b421b8cL    # 0.176091259

    add-double v14, v14, v16

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3fd34413509f79fbL    # 0.301029995663981

    mul-double v16, v16, v18

    add-double v2, v14, v16

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    const-wide/high16 v14, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v14, v6

    const/16 v13, 0x34

    shr-long/2addr v14, v13

    long-to-int v13, v14

    add-int/lit16 v8, v13, -0x3ff

    const-wide/high16 v14, -0x8000000000000000L

    and-long/2addr v14, v6

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_1

    const/4 v9, 0x1

    :goto_0
    if-ltz v8, :cond_3

    const/16 v13, 0x34

    if-ge v8, v13, :cond_3

    const-wide v14, 0xfffffffffffffL

    shr-long v10, v14, v8

    const-wide v14, 0xfffffffffffffL

    and-long/2addr v14, v6

    const-wide/high16 v16, 0x10000000000000L

    or-long v14, v14, v16

    rsub-int/lit8 v13, v8, 0x34

    shr-long/2addr v14, v13

    long-to-int v12, v14

    if-eqz v9, :cond_0

    and-long v14, v10, v6

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_2

    neg-int v12, v12

    :cond_0
    :goto_1
    return v12

    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    neg-int v13, v12

    add-int/lit8 v12, v13, -0x1

    goto :goto_1

    :cond_3
    if-gez v8, :cond_6

    const-wide v14, 0x7fffffffffffffffL

    and-long/2addr v14, v6

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_4

    const/4 v13, 0x0

    :goto_2
    return v13

    :cond_4
    if-eqz v9, :cond_5

    const/4 v13, -0x1

    goto :goto_2

    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    :cond_6
    double-to-int v13, v2

    return v13
.end method

.method private getChars([C)I
    .locals 11

    const/16 v10, 0x2d

    const/16 v9, 0x2e

    const/4 v8, 0x0

    const/16 v7, 0x30

    sget-boolean v5, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-assertionsDisabled:Z

    if-nez v5, :cond_0

    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    const/16 v6, 0x13

    if-le v5, v6, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    iget v6, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    :cond_0
    const/4 v2, 0x0

    iget-boolean v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->isNegative:Z

    if-eqz v5, :cond_1

    aput-char v10, p1, v8

    const/4 v2, 0x1

    :cond_1
    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    if-lez v5, :cond_4

    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    const/16 v6, 0x8

    if-ge v5, v6, :cond_4

    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    iget v6, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    iget v6, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    invoke-static {v5, v6, p1, v2, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    add-int/2addr v2, v0

    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    if-ge v0, v5, :cond_2

    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    sub-int v0, v5, v0

    add-int v5, v2, v0

    invoke-static {p1, v2, v5, v7}, Ljava/util/Arrays;->fill([CIIC)V

    add-int/2addr v2, v0

    add-int/lit8 v3, v2, 0x1

    aput-char v9, p1, v2

    add-int/lit8 v2, v3, 0x1

    aput-char v7, p1, v3

    :goto_0
    return v2

    :cond_2
    add-int/lit8 v3, v2, 0x1

    aput-char v9, p1, v2

    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    if-ge v0, v5, :cond_3

    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    sub-int v4, v5, v0

    iget-object v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    iget v6, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    add-int/2addr v6, v0

    invoke-static {v5, v6, p1, v3, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    add-int v2, v3, v4

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v3, 0x1

    aput-char v7, p1, v3

    goto :goto_0

    :cond_4
    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    if-gtz v5, :cond_6

    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    const/4 v6, -0x3

    if-le v5, v6, :cond_6

    add-int/lit8 v3, v2, 0x1

    aput-char v7, p1, v2

    add-int/lit8 v2, v3, 0x1

    aput-char v9, p1, v3

    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    if-eqz v5, :cond_5

    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    sub-int v5, v2, v5

    invoke-static {p1, v2, v5, v7}, Ljava/util/Arrays;->fill([CIIC)V

    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    sub-int/2addr v2, v5

    :cond_5
    iget-object v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    iget v6, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    iget v7, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    invoke-static {v5, v6, p1, v2, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    add-int/2addr v2, v5

    goto :goto_0

    :cond_6
    add-int/lit8 v3, v2, 0x1

    iget-object v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    iget v6, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    aget-char v5, v5, v6

    aput-char v5, p1, v2

    add-int/lit8 v2, v3, 0x1

    aput-char v9, p1, v3

    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_7

    iget-object v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    iget v6, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v6, p1, v2, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v2, v5

    :goto_1
    add-int/lit8 v3, v2, 0x1

    const/16 v5, 0x45

    aput-char v5, p1, v2

    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    if-gtz v5, :cond_8

    add-int/lit8 v2, v3, 0x1

    aput-char v10, p1, v3

    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    neg-int v5, v5

    add-int/lit8 v1, v5, 0x1

    move v3, v2

    :goto_2
    const/16 v5, 0x9

    if-gt v1, v5, :cond_9

    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    aput-char v5, p1, v3

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v3, v2, 0x1

    aput-char v7, p1, v2

    move v2, v3

    goto :goto_1

    :cond_8
    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    add-int/lit8 v1, v5, -0x1

    goto :goto_2

    :cond_9
    const/16 v5, 0x63

    if-gt v1, v5, :cond_a

    add-int/lit8 v2, v3, 0x1

    div-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, p1, v3

    add-int/lit8 v3, v2, 0x1

    rem-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, p1, v2

    move v2, v3

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v2, v3, 0x1

    div-int/lit8 v5, v1, 0x64

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, p1, v3

    rem-int/lit8 v1, v1, 0x64

    add-int/lit8 v3, v2, 0x1

    div-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, p1, v2

    add-int/lit8 v2, v3, 0x1

    rem-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, p1, v3

    goto/16 :goto_0
.end method

.method private static insignificantDigits(I)I
    .locals 6

    const-wide/16 v4, 0xa

    const/4 v0, 0x0

    :goto_0
    int-to-long v2, p0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    int-to-long v2, p0

    div-long/2addr v2, v4

    long-to-int p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static insignificantDigitsForPow2(I)I
    .locals 1

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    sget-object v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->insignificantDigitsNumber:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->insignificantDigitsNumber:[I

    aget v0, v0, p0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private roundup()V
    .locals 5

    const/16 v4, 0x39

    iget v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    iget v3, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, -0x1

    iget-object v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    aget-char v1, v2, v0

    if-ne v1, v4, :cond_1

    :goto_0
    if-ne v1, v4, :cond_0

    iget v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    if-le v0, v2, :cond_0

    iget-object v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    const/16 v3, 0x30

    aput-char v3, v2, v0

    iget-object v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v1, v2, v0

    goto :goto_0

    :cond_0
    if-ne v1, v4, :cond_1

    iget v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    iget-object v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    iget v3, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    const/16 v4, 0x31

    aput-char v4, v2, v3

    return-void

    :cond_1
    iget-object v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    add-int/lit8 v3, v1, 0x1

    int-to-char v3, v3

    aput-char v3, v2, v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decimalDigitsRoundedUp:Z

    return-void
.end method

.method private setSign(Z)V
    .locals 0

    iput-boolean p1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->isNegative:Z

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->buffer:[C

    invoke-direct {p0, v1}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->getChars([C)I

    move-result v0

    instance-of v1, p1, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->buffer:[C

    invoke-virtual {p1, v1, v2, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, p1, Ljava/lang/StringBuffer;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->buffer:[C

    invoke-virtual {p1, v1, v2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    sget-boolean v1, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public decimalDigitsExact()Z
    .locals 1

    iget-boolean v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->exactDecimalConversion:Z

    return v0
.end method

.method public digitsRoundedUp()Z
    .locals 1

    iget-boolean v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decimalDigitsRoundedUp:Z

    return v0
.end method

.method public getDecimalExponent()I
    .locals 1

    iget v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    return v0
.end method

.method public getDigits([C)I
    .locals 4

    iget-object v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    iget v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    iget v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    iget v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    return v0
.end method

.method public isExceptional()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNegative()Z
    .locals 1

    iget-boolean v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->isNegative:Z

    return v0
.end method

.method public toJavaFormatString()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->buffer:[C

    invoke-direct {p0, v1}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->getChars([C)I

    move-result v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->buffer:[C

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method
