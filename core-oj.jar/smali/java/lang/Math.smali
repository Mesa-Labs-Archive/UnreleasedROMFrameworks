.class public final Ljava/lang/Math;
.super Ljava/lang/Object;
.source "Math.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Math$RandomNumberGeneratorHolder;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final E:D = 2.718281828459045

.field public static final PI:D = 3.141592653589793

.field private static negativeZeroDoubleBits:J

.field private static negativeZeroFloatBits:J

.field static twoToTheDoubleScaleDown:D

.field static twoToTheDoubleScaleUp:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Ljava/lang/Math;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/lang/Math;->-assertionsDisabled:Z

    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Ljava/lang/Math;->negativeZeroFloatBits:J

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sput-wide v0, Ljava/lang/Math;->negativeZeroDoubleBits:J

    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/Math;->powerOfTwoD(I)D

    move-result-wide v0

    sput-wide v0, Ljava/lang/Math;->twoToTheDoubleScaleUp:D

    const/16 v0, -0x200

    invoke-static {v0}, Ljava/lang/Math;->powerOfTwoD(I)D

    move-result-wide v0

    sput-wide v0, Ljava/lang/Math;->twoToTheDoubleScaleDown:D

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native IEEEremainder(DD)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static abs(D)D
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static abs(F)F
    .locals 2

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static abs(I)I
    .locals 0

    if-gez p0, :cond_0

    neg-int p0, p0

    :cond_0
    return p0
.end method

.method public static abs(J)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    neg-long p0, p0

    :cond_0
    return-wide p0
.end method

.method public static native acos(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static addExact(II)I
    .locals 3

    add-int v0, p0, p1

    xor-int v1, p0, v0

    xor-int v2, p1, v0

    and-int/2addr v1, v2

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/ArithmeticException;

    const-string/jumbo v2, "integer overflow"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return v0
.end method

.method public static addExact(JJ)J
    .locals 6

    add-long v0, p0, p2

    xor-long v2, p0, v0

    xor-long v4, p2, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/ArithmeticException;

    const-string/jumbo v3, "long overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-wide v0
.end method

.method public static native asin(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native atan(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native atan2(DD)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native cbrt(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native ceil(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static copySign(DD)D
    .locals 6

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v0, v2

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static copySign(FF)F
    .locals 3

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static native cos(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native cosh(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static decrementExact(I)I
    .locals 2

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, p0, -0x1

    return v0
.end method

.method public static decrementExact(J)J
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "long overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    return-wide v0
.end method

.method public static native exp(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native expm1(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native floor(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static floorDiv(II)I
    .locals 2

    div-int v0, p0, p1

    xor-int v1, p0, p1

    if-gez v1, :cond_0

    mul-int v1, v0, p1

    if-eq v1, p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public static floorDiv(JJ)J
    .locals 6

    div-long v0, p0, p2

    xor-long v2, p0, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    mul-long v2, v0, p2

    cmp-long v2, v2, p0

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public static floorMod(II)I
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Math;->floorDiv(II)I

    move-result v1

    mul-int/2addr v1, p1

    sub-int v0, p0, v1

    return v0
.end method

.method public static floorMod(JJ)J
    .locals 2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    mul-long/2addr v0, p2

    sub-long v0, p0, v0

    return-wide v0
.end method

.method public static getExponent(D)I
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v0, v2

    const/16 v2, 0x34

    shr-long/2addr v0, v2

    const-wide/16 v2, 0x3ff

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getExponent(F)I
    .locals 2

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x17

    add-int/lit8 v0, v0, -0x7f

    return v0
.end method

.method public static native hypot(DD)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static incrementExact(I)I
    .locals 2

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static incrementExact(J)J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "long overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static native log(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native log10(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native log1p(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static max(DD)D
    .locals 4

    const-wide/16 v2, 0x0

    cmpl-double v0, p0, p0

    if-eqz v0, :cond_0

    return-wide p0

    :cond_0
    cmpl-double v0, p0, v2

    if-nez v0, :cond_1

    cmpl-double v0, p2, v2

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroDoubleBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    return-wide p2

    :cond_1
    cmpl-double v0, p0, p2

    if-ltz v0, :cond_2

    :goto_0
    return-wide p0

    :cond_2
    move-wide p0, p2

    goto :goto_0
.end method

.method public static max(FF)F
    .locals 4

    const/4 v1, 0x0

    cmpl-float v0, p0, p0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    cmpl-float v0, p0, v1

    if-nez v0, :cond_1

    cmpl-float v0, p1, v1

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroFloatBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    return p1

    :cond_1
    cmpl-float v0, p0, p1

    if-ltz v0, :cond_2

    :goto_0
    return p0

    :cond_2
    move p0, p1

    goto :goto_0
.end method

.method public static max(II)I
    .locals 0

    if-lt p0, p1, :cond_0

    :goto_0
    return p0

    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static max(JJ)J
    .locals 2

    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    :goto_0
    return-wide p0

    :cond_0
    move-wide p0, p2

    goto :goto_0
.end method

.method public static min(DD)D
    .locals 4

    const-wide/16 v2, 0x0

    cmpl-double v0, p0, p0

    if-eqz v0, :cond_0

    return-wide p0

    :cond_0
    cmpl-double v0, p0, v2

    if-nez v0, :cond_1

    cmpl-double v0, p2, v2

    if-nez v0, :cond_1

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroDoubleBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    return-wide p2

    :cond_1
    cmpg-double v0, p0, p2

    if-gtz v0, :cond_2

    :goto_0
    return-wide p0

    :cond_2
    move-wide p0, p2

    goto :goto_0
.end method

.method public static min(FF)F
    .locals 4

    const/4 v1, 0x0

    cmpl-float v0, p0, p0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    cmpl-float v0, p0, v1

    if-nez v0, :cond_1

    cmpl-float v0, p1, v1

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroFloatBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    return p1

    :cond_1
    cmpg-float v0, p0, p1

    if-gtz v0, :cond_2

    :goto_0
    return p0

    :cond_2
    move p0, p1

    goto :goto_0
.end method

.method public static min(II)I
    .locals 0

    if-gt p0, p1, :cond_0

    :goto_0
    return p0

    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static min(JJ)J
    .locals 2

    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    :goto_0
    return-wide p0

    :cond_0
    move-wide p0, p2

    goto :goto_0
.end method

.method public static multiplyExact(II)I
    .locals 6

    int-to-long v2, p0

    int-to-long v4, p1

    mul-long v0, v2, v4

    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/ArithmeticException;

    const-string/jumbo v3, "integer overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static multiplyExact(JJ)J
    .locals 12

    const-wide/16 v10, 0x0

    mul-long v4, p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    or-long v6, v0, v2

    const/16 v8, 0x1f

    ushr-long/2addr v6, v8

    cmp-long v6, v6, v10

    if-eqz v6, :cond_2

    cmp-long v6, p2, v10

    if-eqz v6, :cond_1

    div-long v6, v4, p2

    cmp-long v6, v6, p0

    if-eqz v6, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string/jumbo v7, "long overflow"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, p0, v6

    if-nez v6, :cond_2

    const-wide/16 v6, -0x1

    cmp-long v6, p2, v6

    if-eqz v6, :cond_0

    :cond_2
    return-wide v4
.end method

.method public static negateExact(I)I
    .locals 2

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    neg-int v0, p0

    return v0
.end method

.method public static negateExact(J)J
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "long overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    neg-long v0, p0

    return-wide v0
.end method

.method public static nextAfter(DD)D
    .locals 8

    const-wide/16 v2, 0x1

    const-wide/16 v6, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    add-double v2, p0, p2

    return-wide v2

    :cond_1
    cmpl-double v4, p0, p2

    if-nez v4, :cond_2

    return-wide p2

    :cond_2
    const-wide/16 v4, 0x0

    add-double/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    cmpl-double v4, p2, p0

    if-lez v4, :cond_4

    cmp-long v4, v0, v6

    if-ltz v4, :cond_3

    :goto_0
    add-long/2addr v0, v2

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2

    :cond_3
    const-wide/16 v2, -0x1

    goto :goto_0

    :cond_4
    sget-boolean v4, Ljava/lang/Math;->-assertionsDisabled:Z

    if-nez v4, :cond_6

    cmpg-double v4, p2, p0

    if-gez v4, :cond_5

    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    cmp-long v4, v0, v6

    if-lez v4, :cond_7

    sub-long/2addr v0, v2

    goto :goto_1

    :cond_7
    cmp-long v4, v0, v6

    if-gez v4, :cond_8

    add-long/2addr v0, v2

    goto :goto_1

    :cond_8
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1
.end method

.method public static nextAfter(FD)F
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    double-to-float v1, p1

    add-float/2addr v1, p0

    return v1

    :cond_1
    float-to-double v4, p0

    cmpl-double v3, v4, p1

    if-nez v3, :cond_2

    double-to-float v1, p1

    return v1

    :cond_2
    const/4 v3, 0x0

    add-float/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    float-to-double v4, p0

    cmpl-double v3, p1, v4

    if-lez v3, :cond_4

    if-ltz v0, :cond_3

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1

    :cond_3
    const/4 v1, -0x1

    goto :goto_0

    :cond_4
    sget-boolean v3, Ljava/lang/Math;->-assertionsDisabled:Z

    if-nez v3, :cond_6

    float-to-double v4, p0

    cmpg-double v3, p1, v4

    if-gez v3, :cond_5

    :goto_2
    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    if-lez v0, :cond_7

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    if-gez v0, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    const v0, -0x7fffffff

    goto :goto_1
.end method

.method public static nextDown(D)D
    .locals 6

    const-wide/16 v4, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    return-wide p0

    :cond_1
    cmpl-double v0, p0, v4

    if-nez v0, :cond_2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    cmpl-double v0, p0, v4

    if-lez v0, :cond_3

    const-wide/16 v0, -0x1

    :goto_0
    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    :cond_3
    const-wide/16 v0, 0x1

    goto :goto_0
.end method

.method public static nextDown(F)F
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    return p0

    :cond_1
    cmpl-float v0, p0, v2

    if-nez v0, :cond_2

    const v0, -0x7fffffff

    return v0

    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    cmpl-float v0, p0, v2

    if-lez v0, :cond_3

    const/4 v0, -0x1

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static nextUp(D)D
    .locals 6

    const-wide/16 v4, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    return-wide p0

    :cond_1
    add-double/2addr p0, v4

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    cmpl-double v0, p0, v4

    if-ltz v0, :cond_2

    const-wide/16 v0, 0x1

    :goto_0
    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static nextUp(F)F
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    return p0

    :cond_1
    add-float/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    cmpl-float v0, p0, v2

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static native pow(DD)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method static powerOfTwoD(I)D
    .locals 4

    sget-boolean v0, Ljava/lang/Math;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    const/16 v0, -0x3fe

    if-lt p0, v0, :cond_0

    const/16 v0, 0x3ff

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    int-to-long v0, p0

    const-wide/16 v2, 0x3ff

    add-long/2addr v0, v2

    const/16 v2, 0x34

    shl-long/2addr v0, v2

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static powerOfTwoF(I)F
    .locals 2

    sget-boolean v0, Ljava/lang/Math;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    const/16 v0, -0x7e

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    add-int/lit8 v0, p0, 0x7f

    shl-int/lit8 v0, v0, 0x17

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static random()D
    .locals 2

    sget-object v0, Ljava/lang/Math$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static randomIntInternal()I
    .locals 1

    sget-object v0, Ljava/lang/Math$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public static randomLongInternal()J
    .locals 2

    sget-object v0, Ljava/lang/Math$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static native rint(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static round(F)I
    .locals 6

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v4, v1

    shr-int/lit8 v0, v4, 0x17

    rsub-int v3, v0, 0x95

    and-int/lit8 v4, v3, -0x20

    if-nez v4, :cond_1

    const v4, 0x7fffff

    and-int/2addr v4, v1

    const/high16 v5, 0x800000

    or-int v2, v4, v5

    if-gez v1, :cond_0

    neg-int v2, v2

    :cond_0
    shr-int v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v4, v4, 0x1

    return v4

    :cond_1
    float-to-int v4, p0

    return v4
.end method

.method public static round(D)J
    .locals 14

    const-wide/16 v12, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v8, v2

    const/16 v10, 0x34

    shr-long v0, v8, v10

    const-wide/16 v8, 0x432

    sub-long v6, v8, v0

    const-wide/16 v8, -0x40

    and-long/2addr v8, v6

    cmp-long v8, v8, v12

    if-nez v8, :cond_1

    const-wide v8, 0xfffffffffffffL

    and-long/2addr v8, v2

    const-wide/high16 v10, 0x10000000000000L

    or-long v4, v8, v10

    cmp-long v8, v2, v12

    if-gez v8, :cond_0

    neg-long v4, v4

    :cond_0
    long-to-int v8, v6

    shr-long v8, v4, v8

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    const/4 v10, 0x1

    shr-long/2addr v8, v10

    return-wide v8

    :cond_1
    double-to-long v8, p0

    return-wide v8
.end method

.method public static scalb(DI)D
    .locals 8

    const/16 v0, 0x833

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    if-gez p2, :cond_0

    const/16 v6, -0x833

    invoke-static {p2, v6}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/16 v4, -0x200

    sget-wide v2, Ljava/lang/Math;->twoToTheDoubleScaleDown:D

    :goto_0
    shr-int/lit8 v6, p2, 0x8

    ushr-int/lit8 v5, v6, 0x17

    add-int v6, p2, v5

    and-int/lit16 v6, v6, 0x1ff

    sub-int v1, v6, v5

    invoke-static {v1}, Ljava/lang/Math;->powerOfTwoD(I)D

    move-result-wide v6

    mul-double/2addr p0, v6

    sub-int/2addr p2, v1

    :goto_1
    if-eqz p2, :cond_1

    mul-double/2addr p0, v2

    sub-int/2addr p2, v4

    goto :goto_1

    :cond_0
    const/16 v6, 0x833

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/16 v4, 0x200

    sget-wide v2, Ljava/lang/Math;->twoToTheDoubleScaleUp:D

    goto :goto_0

    :cond_1
    return-wide p0
.end method

.method public static scalb(FI)F
    .locals 6

    const/16 v0, 0x116

    const/16 v1, 0x116

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, -0x116

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    float-to-double v2, p0

    invoke-static {p1}, Ljava/lang/Math;->powerOfTwoD(I)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    return v1
.end method

.method public static setRandomSeedInternal(J)V
    .locals 2

    sget-object v0, Ljava/lang/Math$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v0, p0, p1}, Ljava/util/Random;->setSeed(J)V

    return-void
.end method

.method public static signum(D)D
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-wide p0

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide p0

    goto :goto_0
.end method

.method public static signum(F)F
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return p0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->copySign(FF)F

    move-result p0

    goto :goto_0
.end method

.method public static native sin(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native sinh(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native sqrt(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static subtractExact(II)I
    .locals 3

    sub-int v0, p0, p1

    xor-int v1, p0, p1

    xor-int v2, p0, v0

    and-int/2addr v1, v2

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/ArithmeticException;

    const-string/jumbo v2, "integer overflow"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return v0
.end method

.method public static subtractExact(JJ)J
    .locals 6

    sub-long v0, p0, p2

    xor-long v2, p0, p2

    xor-long v4, p0, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/ArithmeticException;

    const-string/jumbo v3, "long overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-wide v0
.end method

.method public static native tan(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native tanh(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static toDegrees(D)D
    .locals 4

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static toIntExact(J)I
    .locals 2

    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v0, v0, p0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    long-to-int v0, p0

    return v0
.end method

.method public static toRadians(D)D
    .locals 4

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double v0, p0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static ulp(D)D
    .locals 4

    const/16 v2, -0x3fe

    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    sget-boolean v1, Ljava/lang/Math;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    const/16 v1, 0x3ff

    if-gt v0, v1, :cond_0

    if-ge v0, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :sswitch_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    return-wide v2

    :sswitch_1
    const-wide/16 v2, 0x1

    return-wide v2

    :cond_1
    add-int/lit8 v0, v0, -0x34

    if-lt v0, v2, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->powerOfTwoD(I)D

    move-result-wide v2

    return-wide v2

    :cond_2
    add-int/lit16 v1, v0, 0x432

    const-wide/16 v2, 0x1

    shl-long/2addr v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2

    :sswitch_data_0
    .sparse-switch
        -0x3ff -> :sswitch_1
        0x400 -> :sswitch_0
    .end sparse-switch
.end method

.method public static ulp(F)F
    .locals 3

    const/16 v2, -0x7e

    invoke-static {p0}, Ljava/lang/Math;->getExponent(F)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    sget-boolean v1, Ljava/lang/Math;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    if-ge v0, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :sswitch_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    return v1

    :sswitch_1
    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x17

    if-lt v0, v2, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->powerOfTwoF(I)F

    move-result v1

    return v1

    :cond_2
    add-int/lit16 v1, v0, 0x95

    const/4 v2, 0x1

    shl-int v1, v2, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method
