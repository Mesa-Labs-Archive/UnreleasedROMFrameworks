.class Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;
.super Ljava/lang/Object;
.source "FloatingDecimal.java"

# interfaces
.implements Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/FloatingDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ASCIIToBinaryBuffer"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final BIG_10_POW:[D

.field private static final MAX_SMALL_TEN:I

.field private static final SINGLE_MAX_SMALL_TEN:I

.field private static final SINGLE_SMALL_10_POW:[F

.field private static final SMALL_10_POW:[D

.field private static final TINY_10_POW:[D


# instance fields
.field decExponent:I

.field digits:[C

.field isNegative:Z

.field nDigits:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x5

    const-class v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->-assertionsDisabled:Z

    const/16 v0, 0x17

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    const/16 v0, 0xb

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_SMALL_10_POW:[F

    new-array v0, v1, [D

    fill-array-data v0, :array_2

    sput-object v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->BIG_10_POW:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_3

    sput-object v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->TINY_10_POW:[D

    sget-object v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->MAX_SMALL_TEN:I

    sget-object v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_SMALL_10_POW:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_MAX_SMALL_TEN:I

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x408f400000000000L    # 1000.0
        0x40c3880000000000L    # 10000.0
        0x40f86a0000000000L    # 100000.0
        0x412e848000000000L    # 1000000.0
        0x416312d000000000L    # 1.0E7
        0x4197d78400000000L    # 1.0E8
        0x41cdcd6500000000L    # 1.0E9
        0x4202a05f20000000L    # 1.0E10
        0x42374876e8000000L    # 1.0E11
        0x426d1a94a2000000L    # 1.0E12
        0x42a2309ce5400000L    # 1.0E13
        0x42d6bcc41e900000L    # 1.0E14
        0x430c6bf526340000L    # 1.0E15
        0x4341c37937e08000L    # 1.0E16
        0x4376345785d8a000L    # 1.0E17
        0x43abc16d674ec800L    # 1.0E18
        0x43e158e460913d00L    # 1.0E19
        0x4415af1d78b58c40L    # 1.0E20
        0x444b1ae4d6e2ef50L    # 1.0E21
        0x4480f0cf064dd592L    # 1.0E22
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x41200000    # 10.0f
        0x42c80000    # 100.0f
        0x447a0000    # 1000.0f
        0x461c4000    # 10000.0f
        0x47c35000    # 100000.0f
        0x49742400    # 1000000.0f
        0x4b189680    # 1.0E7f
        0x4cbebc20    # 1.0E8f
        0x4e6e6b28    # 1.0E9f
        0x501502f9    # 1.0E10f
    .end array-data

    :array_2
    .array-data 8
        0x4341c37937e08000L    # 1.0E16
        0x4693b8b5b5056e17L    # 1.0E32
        0x4d384f03e93ff9f5L    # 1.0E64
        0x5a827748f9301d32L    # 1.0E128
        0x75154fdd7f73bf3cL    # 1.0E256
    .end array-data

    :array_3
    .array-data 8
        0x3c9cd2b297d889bcL    # 1.0E-16
        0x3949f623d5a8a733L    # 1.0E-32
        0x32a50ffd44f4a73dL    # 1.0E-64
        0x255bba08cf8c979dL    # 1.0E-128
        0xac8062864ac6f43L    # 1.0E-256
    .end array-data
.end method

.method constructor <init>(ZI[CI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    iput p2, p0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    iput-object p3, p0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    iput p4, p0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    return-void
.end method


# virtual methods
.method public doubleValue()D
    .locals 48

    move-object/from16 v0, p0

    iget v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    const/16 v8, 0x10

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    const/4 v8, 0x0

    aget-char v6, v6, v8

    add-int/lit8 v29, v6, -0x30

    const/16 v6, 0x9

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v28

    const/16 v27, 0x1

    :goto_0
    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    mul-int/lit8 v6, v29, 0xa

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    aget-char v8, v8, v27

    add-int/2addr v6, v8

    add-int/lit8 v29, v6, -0x30

    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    :cond_0
    move/from16 v0, v29

    int-to-long v4, v0

    move/from16 v27, v28

    :goto_1
    move/from16 v0, v27

    if-ge v0, v7, :cond_1

    const-wide/16 v44, 0xa

    mul-long v44, v44, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    aget-char v6, v6, v27

    add-int/lit8 v6, v6, -0x30

    int-to-long v0, v6

    move-wide/from16 v46, v0

    add-long v4, v44, v46

    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    :cond_1
    long-to-double v0, v4

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    sub-int v25, v6, v7

    move-object/from16 v0, p0

    iget v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    const/16 v8, 0xf

    if-gt v6, v8, :cond_a

    if-eqz v25, :cond_2

    const-wide/16 v44, 0x0

    cmpl-double v6, v22, v44

    if-nez v6, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v6, :cond_3

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    :cond_3
    return-wide v22

    :cond_4
    if-ltz v25, :cond_8

    sget v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->MAX_SMALL_TEN:I

    move/from16 v0, v25

    if-gt v0, v6, :cond_6

    sget-object v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    aget-wide v44, v6, v25

    mul-double v38, v22, v44

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v6, :cond_5

    move-wide/from16 v0, v38

    neg-double v0, v0

    move-wide/from16 v38, v0

    :cond_5
    return-wide v38

    :cond_6
    rsub-int/lit8 v40, v7, 0xf

    sget v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->MAX_SMALL_TEN:I

    add-int v6, v6, v40

    move/from16 v0, v25

    if-gt v0, v6, :cond_a

    sget-object v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    aget-wide v44, v6, v40

    mul-double v22, v22, v44

    sget-object v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    sub-int v8, v25, v40

    aget-wide v44, v6, v8

    mul-double v38, v22, v44

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v6, :cond_7

    move-wide/from16 v0, v38

    neg-double v0, v0

    move-wide/from16 v38, v0

    :cond_7
    return-wide v38

    :cond_8
    sget v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->MAX_SMALL_TEN:I

    neg-int v6, v6

    move/from16 v0, v25

    if-lt v0, v6, :cond_a

    sget-object v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    move/from16 v0, v25

    neg-int v8, v0

    aget-wide v44, v6, v8

    div-double v38, v22, v44

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v6, :cond_9

    move-wide/from16 v0, v38

    neg-double v0, v0

    move-wide/from16 v38, v0

    :cond_9
    return-wide v38

    :cond_a
    if-lez v25, :cond_1b

    move-object/from16 v0, p0

    iget v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    const/16 v8, 0x135

    if-le v6, v8, :cond_c

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v6, :cond_b

    const-wide/high16 v44, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_2
    return-wide v44

    :cond_b
    const-wide/high16 v44, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_2

    :cond_c
    and-int/lit8 v6, v25, 0xf

    if-eqz v6, :cond_d

    sget-object v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    and-int/lit8 v8, v25, 0xf

    aget-wide v44, v6, v8

    mul-double v22, v22, v44

    :cond_d
    shr-int/lit8 v25, v25, 0x4

    if-eqz v25, :cond_13

    const/16 v32, 0x0

    :goto_3
    const/4 v6, 0x1

    move/from16 v0, v25

    if-le v0, v6, :cond_f

    and-int/lit8 v6, v25, 0x1

    if-eqz v6, :cond_e

    sget-object v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->BIG_10_POW:[D

    aget-wide v44, v6, v32

    mul-double v22, v22, v44

    :cond_e
    add-int/lit8 v32, v32, 0x1

    shr-int/lit8 v25, v25, 0x1

    goto :goto_3

    :cond_f
    sget-object v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->BIG_10_POW:[D

    aget-wide v44, v6, v32

    mul-double v42, v22, v44

    invoke-static/range {v42 .. v43}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_12

    const-wide/high16 v44, 0x4000000000000000L    # 2.0

    div-double v42, v22, v44

    sget-object v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->BIG_10_POW:[D

    aget-wide v44, v6, v32

    mul-double v42, v42, v44

    invoke-static/range {v42 .. v43}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_11

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v6, :cond_10

    const-wide/high16 v44, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_4
    return-wide v44

    :cond_10
    const-wide/high16 v44, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_4

    :cond_11
    const-wide v42, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_12
    move-wide/from16 v22, v42

    :cond_13
    :goto_5
    move-object/from16 v0, p0

    iget v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    const/16 v8, 0x44c

    if-le v6, v8, :cond_14

    const/16 v6, 0x44d

    move-object/from16 v0, p0

    iput v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    const/16 v8, 0x31

    const/16 v41, 0x44c

    aput-char v8, v6, v41

    :cond_14
    new-instance v3, Lsun/misc/FDBigInteger;

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    move-object/from16 v0, p0

    iget v8, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    invoke-direct/range {v3 .. v8}, Lsun/misc/FDBigInteger;-><init>(J[CII)V

    move-object/from16 v0, p0

    iget v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    move-object/from16 v0, p0

    iget v8, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    sub-int v25, v6, v8

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v30

    move/from16 v0, v25

    neg-int v6, v0

    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/4 v6, 0x0

    move/from16 v0, v25

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v6, 0x0

    invoke-virtual {v3, v11, v6}, Lsun/misc/FDBigInteger;->multByPow52(II)Lsun/misc/FDBigInteger;

    move-result-object v3

    invoke-virtual {v3}, Lsun/misc/FDBigInteger;->makeImmutable()V

    const/16 v16, 0x0

    const/16 v36, 0x0

    :cond_15
    const/16 v6, 0x34

    ushr-long v44, v30, v6

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v19, v0

    const-wide v44, 0xfffffffffffffL

    and-long v14, v30, v44

    if-lez v19, :cond_24

    const-wide/high16 v44, 0x10000000000000L

    or-long v14, v14, v44

    :goto_6
    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x3ff

    move/from16 v19, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v34

    ushr-long v14, v14, v34

    add-int/lit8 v6, v19, -0x34

    add-int v17, v6, v34

    rsub-int/lit8 v18, v34, 0x35

    move v2, v9

    move v10, v11

    if-ltz v17, :cond_26

    add-int v2, v9, v17

    :goto_7
    move v12, v2

    const/16 v6, -0x3ff

    move/from16 v0, v19

    if-gt v0, v6, :cond_27

    add-int v6, v19, v34

    add-int/lit16 v0, v6, 0x3ff

    move/from16 v26, v0

    :goto_8
    add-int v2, v2, v26

    add-int v10, v10, v26

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v21

    sub-int v2, v2, v21

    sub-int v10, v10, v21

    sub-int v12, v12, v21

    invoke-static {v14, v15, v9, v2}, Lsun/misc/FDBigInteger;->valueOfMulPow52(JII)Lsun/misc/FDBigInteger;

    move-result-object v13

    if-eqz v16, :cond_16

    move/from16 v0, v36

    if-eq v0, v10, :cond_17

    :cond_16
    invoke-virtual {v3, v10}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v16

    move/from16 v36, v10

    :cond_17
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v20

    if-lez v20, :cond_28

    const/16 v35, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lsun/misc/FDBigInteger;->leftInplaceSub(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;

    move-result-object v24

    const/4 v6, 0x1

    move/from16 v0, v18

    if-ne v0, v6, :cond_18

    const/16 v6, -0x3fe

    move/from16 v0, v17

    if-le v0, v6, :cond_18

    add-int/lit8 v12, v12, -0x1

    if-gez v12, :cond_18

    const/4 v12, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v24

    :cond_18
    :goto_9
    move-object/from16 v0, v24

    invoke-virtual {v0, v9, v12}, Lsun/misc/FDBigInteger;->cmpPow52(II)I

    move-result v20

    if-gez v20, :cond_29

    :cond_19
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v6, :cond_1a

    const-wide/high16 v44, -0x8000000000000000L

    or-long v30, v30, v44

    :cond_1a
    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v44

    return-wide v44

    :cond_1b
    if-gez v25, :cond_13

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    const/16 v8, -0x145

    if-ge v6, v8, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v6, :cond_1c

    const-wide/high16 v44, -0x8000000000000000L

    :goto_b
    return-wide v44

    :cond_1c
    const-wide/16 v44, 0x0

    goto :goto_b

    :cond_1d
    and-int/lit8 v6, v25, 0xf

    if-eqz v6, :cond_1e

    sget-object v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    and-int/lit8 v8, v25, 0xf

    aget-wide v44, v6, v8

    div-double v22, v22, v44

    :cond_1e
    shr-int/lit8 v25, v25, 0x4

    if-eqz v25, :cond_13

    const/16 v32, 0x0

    :goto_c
    const/4 v6, 0x1

    move/from16 v0, v25

    if-le v0, v6, :cond_20

    and-int/lit8 v6, v25, 0x1

    if-eqz v6, :cond_1f

    sget-object v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->TINY_10_POW:[D

    aget-wide v44, v6, v32

    mul-double v22, v22, v44

    :cond_1f
    add-int/lit8 v32, v32, 0x1

    shr-int/lit8 v25, v25, 0x1

    goto :goto_c

    :cond_20
    sget-object v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->TINY_10_POW:[D

    aget-wide v44, v6, v32

    mul-double v42, v22, v44

    const-wide/16 v44, 0x0

    cmpl-double v6, v42, v44

    if-nez v6, :cond_23

    const-wide/high16 v44, 0x4000000000000000L    # 2.0

    mul-double v42, v22, v44

    sget-object v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->TINY_10_POW:[D

    aget-wide v44, v6, v32

    mul-double v42, v42, v44

    const-wide/16 v44, 0x0

    cmpl-double v6, v42, v44

    if-nez v6, :cond_22

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v6, :cond_21

    const-wide/high16 v44, -0x8000000000000000L

    :goto_d
    return-wide v44

    :cond_21
    const-wide/16 v44, 0x0

    goto :goto_d

    :cond_22
    const-wide/16 v42, 0x1

    :cond_23
    move-wide/from16 v22, v42

    goto/16 :goto_5

    :cond_24
    sget-boolean v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->-assertionsDisabled:Z

    if-nez v6, :cond_25

    const-wide/16 v44, 0x0

    cmp-long v6, v14, v44

    if-nez v6, :cond_25

    new-instance v6, Ljava/lang/AssertionError;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    :cond_25
    invoke-static {v14, v15}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v33

    add-int/lit8 v37, v33, -0xb

    shl-long v14, v14, v37

    rsub-int/lit8 v19, v37, 0x1

    goto/16 :goto_6

    :cond_26
    sub-int v10, v11, v17

    goto/16 :goto_7

    :cond_27
    add-int/lit8 v26, v34, 0x1

    goto/16 :goto_8

    :cond_28
    if-gez v20, :cond_19

    const/16 v35, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lsun/misc/FDBigInteger;->rightInplaceSub(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;

    move-result-object v24

    goto/16 :goto_9

    :cond_29
    if-nez v20, :cond_2b

    const-wide/16 v44, 0x1

    and-long v44, v44, v30

    const-wide/16 v46, 0x0

    cmp-long v6, v44, v46

    if-eqz v6, :cond_19

    if-eqz v35, :cond_2a

    const/4 v6, -0x1

    :goto_e
    int-to-long v0, v6

    move-wide/from16 v44, v0

    add-long v30, v30, v44

    goto/16 :goto_a

    :cond_2a
    const/4 v6, 0x1

    goto :goto_e

    :cond_2b
    if-eqz v35, :cond_2c

    const/4 v6, -0x1

    :goto_f
    int-to-long v0, v6

    move-wide/from16 v44, v0

    add-long v30, v30, v44

    const-wide/16 v44, 0x0

    cmp-long v6, v30, v44

    if-eqz v6, :cond_19

    const-wide/high16 v44, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmp-long v6, v30, v44

    if-nez v6, :cond_15

    goto/16 :goto_a

    :cond_2c
    const/4 v6, 0x1

    goto :goto_f
.end method

.method public floatValue()F
    .locals 42

    move-object/from16 v0, p0

    iget v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    const/16 v5, 0x8

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    const/4 v5, 0x0

    aget-char v4, v4, v5

    add-int/lit8 v28, v4, -0x30

    const/16 v27, 0x1

    :goto_0
    move/from16 v0, v27

    if-ge v0, v7, :cond_0

    mul-int/lit8 v4, v28, 0xa

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    aget-char v5, v5, v27

    add-int/2addr v4, v5

    add-int/lit8 v28, v4, -0x30

    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    :cond_0
    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    sub-int v24, v4, v7

    move-object/from16 v0, p0

    iget v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    const/4 v5, 0x7

    if-gt v4, v5, :cond_9

    if-eqz v24, :cond_1

    const/4 v4, 0x0

    cmpl-float v4, v25, v4

    if-nez v4, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v4, :cond_2

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    :cond_2
    return v25

    :cond_3
    if-ltz v24, :cond_7

    sget v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_MAX_SMALL_TEN:I

    move/from16 v0, v24

    if-gt v0, v4, :cond_5

    sget-object v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_SMALL_10_POW:[F

    aget v4, v4, v24

    mul-float v25, v25, v4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v4, :cond_4

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    :cond_4
    return v25

    :cond_5
    rsub-int/lit8 v38, v7, 0x7

    sget v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_MAX_SMALL_TEN:I

    add-int v4, v4, v38

    move/from16 v0, v24

    if-gt v0, v4, :cond_c

    sget-object v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_SMALL_10_POW:[F

    aget v4, v4, v38

    mul-float v25, v25, v4

    sget-object v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_SMALL_10_POW:[F

    sub-int v5, v24, v38

    aget v4, v4, v5

    mul-float v25, v25, v4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v4, :cond_6

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    :cond_6
    return v25

    :cond_7
    sget v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_MAX_SMALL_TEN:I

    neg-int v4, v4

    move/from16 v0, v24

    if-lt v0, v4, :cond_c

    sget-object v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_SMALL_10_POW:[F

    move/from16 v0, v24

    neg-int v5, v0

    aget v4, v4, v5

    div-float v25, v25, v4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v4, :cond_8

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    :cond_8
    return v25

    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    move-object/from16 v0, p0

    iget v5, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    if-lt v4, v5, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    move-object/from16 v0, p0

    iget v5, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    add-int/2addr v4, v5

    const/16 v5, 0xf

    if-gt v4, v5, :cond_c

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move/from16 v27, v7

    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    move/from16 v0, v27

    if-ge v0, v4, :cond_a

    const-wide/16 v4, 0xa

    mul-long v4, v4, v32

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    aget-char v6, v6, v27

    add-int/lit8 v6, v6, -0x30

    int-to-long v0, v6

    move-wide/from16 v40, v0

    add-long v32, v4, v40

    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    :cond_a
    move-wide/from16 v0, v32

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    move-object/from16 v0, p0

    iget v5, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    sub-int v24, v4, v5

    sget-object v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    aget-wide v4, v4, v24

    mul-double v22, v22, v4

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v4, :cond_b

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    :cond_b
    return v25

    :cond_c
    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v22, v0

    if-lez v24, :cond_11

    move-object/from16 v0, p0

    iget v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    const/16 v5, 0x27

    if-le v4, v5, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v4, :cond_d

    const/high16 v4, -0x800000    # Float.NEGATIVE_INFINITY

    :goto_2
    return v4

    :cond_d
    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_2

    :cond_e
    and-int/lit8 v4, v24, 0xf

    if-eqz v4, :cond_f

    sget-object v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    and-int/lit8 v5, v24, 0xf

    aget-wide v4, v4, v5

    mul-double v22, v22, v4

    :cond_f
    shr-int/lit8 v24, v24, 0x4

    if-eqz v24, :cond_16

    const/16 v30, 0x0

    :goto_3
    if-lez v24, :cond_16

    and-int/lit8 v4, v24, 0x1

    if-eqz v4, :cond_10

    sget-object v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->BIG_10_POW:[D

    aget-wide v4, v4, v30

    mul-double v22, v22, v4

    :cond_10
    add-int/lit8 v30, v30, 0x1

    shr-int/lit8 v24, v24, 0x1

    goto :goto_3

    :cond_11
    if-gez v24, :cond_16

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    const/16 v5, -0x2e

    if-ge v4, v5, :cond_13

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v4, :cond_12

    const/high16 v4, -0x80000000

    :goto_4
    return v4

    :cond_12
    const/4 v4, 0x0

    goto :goto_4

    :cond_13
    and-int/lit8 v4, v24, 0xf

    if-eqz v4, :cond_14

    sget-object v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    and-int/lit8 v5, v24, 0xf

    aget-wide v4, v4, v5

    div-double v22, v22, v4

    :cond_14
    shr-int/lit8 v24, v24, 0x4

    if-eqz v24, :cond_16

    const/16 v30, 0x0

    :goto_5
    if-lez v24, :cond_16

    and-int/lit8 v4, v24, 0x1

    if-eqz v4, :cond_15

    sget-object v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->TINY_10_POW:[D

    aget-wide v4, v4, v30

    mul-double v22, v22, v4

    :cond_15
    add-int/lit8 v30, v30, 0x1

    shr-int/lit8 v24, v24, 0x1

    goto :goto_5

    :cond_16
    move-wide/from16 v0, v22

    double-to-float v4, v0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v25

    move-object/from16 v0, p0

    iget v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    const/16 v5, 0xc8

    if-le v4, v5, :cond_17

    const/16 v4, 0xc9

    move-object/from16 v0, p0

    iput v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    const/16 v5, 0x31

    const/16 v6, 0xc8

    aput-char v5, v4, v6

    :cond_17
    new-instance v3, Lsun/misc/FDBigInteger;

    move/from16 v0, v28

    int-to-long v4, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    move-object/from16 v0, p0

    iget v8, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    invoke-direct/range {v3 .. v8}, Lsun/misc/FDBigInteger;-><init>(J[CII)V

    move-object/from16 v0, p0

    iget v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    move-object/from16 v0, p0

    iget v5, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    sub-int v24, v4, v5

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v29

    move/from16 v0, v24

    neg-int v4, v0

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/4 v4, 0x0

    move/from16 v0, v24

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v4, 0x0

    invoke-virtual {v3, v11, v4}, Lsun/misc/FDBigInteger;->multByPow52(II)Lsun/misc/FDBigInteger;

    move-result-object v3

    invoke-virtual {v3}, Lsun/misc/FDBigInteger;->makeImmutable()V

    const/4 v15, 0x0

    const/16 v36, 0x0

    :cond_18
    ushr-int/lit8 v18, v29, 0x17

    const v4, 0x7fffff

    and-int v14, v29, v4

    if-lez v18, :cond_1e

    const/high16 v4, 0x800000

    or-int/2addr v14, v4

    :goto_6
    add-int/lit8 v18, v18, -0x7f

    invoke-static {v14}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v34

    ushr-int v14, v14, v34

    add-int/lit8 v4, v18, -0x17

    add-int v16, v4, v34

    rsub-int/lit8 v17, v34, 0x18

    move v2, v9

    move v10, v11

    if-ltz v16, :cond_20

    add-int v2, v9, v16

    :goto_7
    move v12, v2

    const/16 v4, -0x7f

    move/from16 v0, v18

    if-gt v0, v4, :cond_21

    add-int v4, v18, v34

    add-int/lit8 v26, v4, 0x7f

    :goto_8
    add-int v2, v2, v26

    add-int v10, v10, v26

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v20

    sub-int v2, v2, v20

    sub-int v10, v10, v20

    sub-int v12, v12, v20

    int-to-long v4, v14

    invoke-static {v4, v5, v9, v2}, Lsun/misc/FDBigInteger;->valueOfMulPow52(JII)Lsun/misc/FDBigInteger;

    move-result-object v13

    if-eqz v15, :cond_19

    move/from16 v0, v36

    if-eq v0, v10, :cond_1a

    :cond_19
    invoke-virtual {v3, v10}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v15

    move/from16 v36, v10

    :cond_1a
    invoke-virtual {v13, v15}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v19

    if-lez v19, :cond_22

    const/16 v35, 0x1

    invoke-virtual {v13, v15}, Lsun/misc/FDBigInteger;->leftInplaceSub(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;

    move-result-object v21

    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_1b

    const/16 v4, -0x7e

    move/from16 v0, v16

    if-le v0, v4, :cond_1b

    add-int/lit8 v12, v12, -0x1

    if-gez v12, :cond_1b

    const/4 v12, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v21

    :cond_1b
    :goto_9
    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v12}, Lsun/misc/FDBigInteger;->cmpPow52(II)I

    move-result v19

    if-gez v19, :cond_23

    :cond_1c
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v4, :cond_1d

    const/high16 v4, -0x80000000

    or-int v29, v29, v4

    :cond_1d
    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    return v4

    :cond_1e
    sget-boolean v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->-assertionsDisabled:Z

    if-nez v4, :cond_1f

    if-nez v14, :cond_1f

    new-instance v4, Ljava/lang/AssertionError;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :cond_1f
    invoke-static {v14}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v31

    add-int/lit8 v37, v31, -0x8

    shl-int v14, v14, v37

    rsub-int/lit8 v18, v37, 0x1

    goto/16 :goto_6

    :cond_20
    sub-int v10, v11, v16

    goto/16 :goto_7

    :cond_21
    add-int/lit8 v26, v34, 0x1

    goto :goto_8

    :cond_22
    if-gez v19, :cond_1c

    const/16 v35, 0x0

    invoke-virtual {v15, v13}, Lsun/misc/FDBigInteger;->rightInplaceSub(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;

    move-result-object v21

    goto :goto_9

    :cond_23
    if-nez v19, :cond_25

    and-int/lit8 v4, v29, 0x1

    if-eqz v4, :cond_1c

    if-eqz v35, :cond_24

    const/4 v4, -0x1

    :goto_b
    add-int v29, v29, v4

    goto :goto_a

    :cond_24
    const/4 v4, 0x1

    goto :goto_b

    :cond_25
    if-eqz v35, :cond_26

    const/4 v4, -0x1

    :goto_c
    add-int v29, v29, v4

    if-eqz v29, :cond_1c

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    move/from16 v0, v29

    if-ne v0, v4, :cond_18

    goto :goto_a

    :cond_26
    const/4 v4, 0x1

    goto :goto_c
.end method
