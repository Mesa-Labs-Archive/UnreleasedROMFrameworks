.class public final Ljava/lang/StrictMath;
.super Ljava/lang/Object;
.source "StrictMath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/StrictMath$RandomNumberGeneratorHolder;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final E:D = 2.718281828459045

.field public static final PI:D = 3.141592653589793


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/lang/StrictMath;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/lang/StrictMath;->-assertionsDisabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native IEEEremainder(DD)D
.end method

.method public static abs(D)D
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static abs(F)F
    .locals 1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public static abs(I)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public static abs(J)J
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static native acos(D)D
.end method

.method public static addExact(II)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->addExact(II)I

    move-result v0

    return v0
.end method

.method public static addExact(JJ)J
    .locals 2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static native asin(D)D
.end method

.method public static native atan(D)D
.end method

.method public static native atan2(DD)D
.end method

.method public static native cbrt(D)D
.end method

.method public static ceil(D)D
    .locals 8

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, -0x8000000000000000L

    move-wide v0, p0

    move-wide v6, v4

    invoke-static/range {v0 .. v7}, Ljava/lang/StrictMath;->floorOrCeil(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static copySign(DD)D
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static copySign(FF)F
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->copySign(FF)F

    move-result v0

    return v0
.end method

.method public static native cos(D)D
.end method

.method public static native cosh(D)D
.end method

.method public static native exp(D)D
.end method

.method public static native expm1(D)D
.end method

.method public static floor(D)D
    .locals 8

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/16 v4, 0x0

    move-wide v0, p0

    move-wide v6, v2

    invoke-static/range {v0 .. v7}, Ljava/lang/StrictMath;->floorOrCeil(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static floorDiv(II)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->floorDiv(II)I

    move-result v0

    return v0
.end method

.method public static floorDiv(JJ)J
    .locals 2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static floorMod(II)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->floorMod(II)I

    move-result v0

    return v0
.end method

.method public static floorMod(JJ)J
    .locals 2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static floorOrCeil(DDDD)D
    .locals 12

    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v2

    if-gez v2, :cond_2

    const-wide/16 v8, 0x0

    cmpl-double v3, p0, v8

    if-nez v3, :cond_0

    :goto_0
    return-wide p0

    :cond_0
    const-wide/16 v8, 0x0

    cmpg-double v3, p0, v8

    if-gez v3, :cond_1

    move-wide p0, p2

    goto :goto_0

    :cond_1
    move-wide/from16 p0, p4

    goto :goto_0

    :cond_2
    const/16 v3, 0x34

    if-lt v2, v3, :cond_3

    return-wide p0

    :cond_3
    sget-boolean v3, Ljava/lang/StrictMath;->-assertionsDisabled:Z

    if-nez v3, :cond_5

    if-ltz v2, :cond_4

    const/16 v3, 0x33

    if-le v2, v3, :cond_5

    :cond_4
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_5
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide v8, 0xfffffffffffffL

    shr-long v4, v8, v2

    and-long v8, v4, v0

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-nez v3, :cond_6

    return-wide p0

    :cond_6
    not-long v8, v4

    and-long/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    mul-double v8, p6, p0

    const-wide/16 v10, 0x0

    cmpl-double v3, v8, v10

    if-lez v3, :cond_7

    add-double v6, v6, p6

    :cond_7
    return-wide v6
.end method

.method public static getExponent(D)I
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    return v0
.end method

.method public static getExponent(F)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Math;->getExponent(F)I

    move-result v0

    return v0
.end method

.method public static native hypot(DD)D
.end method

.method public static native log(D)D
.end method

.method public static native log10(D)D
.end method

.method public static native log1p(D)D
.end method

.method public static max(DD)D
    .locals 2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static max(FF)F
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static max(II)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static max(JJ)J
    .locals 2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static min(DD)D
    .locals 2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static min(FF)F
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static min(II)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static min(JJ)J
    .locals 2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static multiplyExact(II)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v0

    return v0
.end method

.method public static multiplyExact(JJ)J
    .locals 2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static nextAfter(DD)D
    .locals 2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->nextAfter(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextAfter(FD)F
    .locals 1

    invoke-static {p0, p1, p2}, Ljava/lang/Math;->nextAfter(FD)F

    move-result v0

    return v0
.end method

.method public static nextDown(D)D
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Math;->nextDown(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextDown(F)F
    .locals 1

    invoke-static {p0}, Ljava/lang/Math;->nextDown(F)F

    move-result v0

    return v0
.end method

.method public static nextUp(D)D
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextUp(F)F
    .locals 1

    invoke-static {p0}, Ljava/lang/Math;->nextUp(F)F

    move-result v0

    return v0
.end method

.method public static native pow(DD)D
.end method

.method public static random()D
    .locals 2

    sget-object v0, Ljava/lang/StrictMath$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static rint(D)D
    .locals 8

    const-wide/high16 v6, 0x4330000000000000L    # 4.503599627370496E15

    const-wide/high16 v2, 0x4330000000000000L    # 4.503599627370496E15

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double v4, p0, v6

    if-gez v4, :cond_0

    add-double v4, v6, p0

    sub-double p0, v4, v6

    :cond_0
    mul-double v4, v0, p0

    return-wide v4
.end method

.method public static round(F)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static round(D)J
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static scalb(DI)D
    .locals 2

    invoke-static {p0, p1, p2}, Ljava/lang/Math;->scalb(DI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static scalb(FI)F
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    return v0
.end method

.method public static signum(D)D
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static signum(F)F
    .locals 1

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    return v0
.end method

.method public static native sin(D)D
.end method

.method public static native sinh(D)D
.end method

.method public static native sqrt(D)D
.end method

.method public static subtractExact(II)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->subtractExact(II)I

    move-result v0

    return v0
.end method

.method public static subtractExact(JJ)J
    .locals 2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static native tan(D)D
.end method

.method public static native tanh(D)D
.end method

.method public static strictfp toDegrees(D)D
    .locals 4

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static toIntExact(J)I
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    return v0
.end method

.method public static strictfp toRadians(D)D
    .locals 4

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double v0, p0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static ulp(D)D
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ulp(F)F
    .locals 1

    invoke-static {p0}, Ljava/lang/Math;->ulp(F)F

    move-result v0

    return v0
.end method
