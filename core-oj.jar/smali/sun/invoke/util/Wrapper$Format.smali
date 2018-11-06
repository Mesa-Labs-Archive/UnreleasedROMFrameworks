.class abstract Lsun/invoke/util/Wrapper$Format;
.super Ljava/lang/Object;
.source "Wrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/invoke/util/Wrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Format"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final BOOLEAN:I = 0x5

.field static final CHAR:I = 0x41

.field static final FLOAT:I = 0x1081

.field static final FLOATING:I = 0x1000

.field static final INT:I = -0xf7f

.field static final KIND_SHIFT:I = 0xc

.field static final NUM_MASK:I = -0x4

.field static final SHORT:I = -0xfbf

.field static final SIGNED:I = -0x1000

.field static final SIZE_MASK:I = 0x3ff

.field static final SIZE_SHIFT:I = 0x2

.field static final SLOT_MASK:I = 0x3

.field static final SLOT_SHIFT:I

.field static final UNSIGNED:I

.field static final VOID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/invoke/util/Wrapper$Format;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/invoke/util/Wrapper$Format;->-assertionsDisabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static floating(I)I
    .locals 2

    const/16 v0, 0x20

    if-le p0, v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    const/16 v1, 0x1000

    invoke-static {v1, p0, v0}, Lsun/invoke/util/Wrapper$Format;->format(III)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static format(III)I
    .locals 5

    const/16 v4, 0x40

    const/16 v3, 0x20

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lsun/invoke/util/Wrapper$Format;->-assertionsDisabled:Z

    if-nez v2, :cond_0

    shr-int/lit8 v2, p0, 0xc

    shl-int/lit8 v2, v2, 0xc

    if-eq v2, p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v2, Lsun/invoke/util/Wrapper$Format;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    add-int/lit8 v2, p1, -0x1

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    sget-boolean v2, Lsun/invoke/util/Wrapper$Format;->-assertionsDisabled:Z

    if-nez v2, :cond_9

    const/16 v2, -0x1000

    if-ne p0, v2, :cond_3

    if-lez p1, :cond_2

    move v2, v0

    :goto_0
    if-nez v2, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    if-nez p0, :cond_5

    if-lez p1, :cond_4

    move v2, v0

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_0

    :cond_5
    const/16 v2, 0x1000

    if-ne p0, v2, :cond_8

    if-eq p1, v3, :cond_6

    if-ne p1, v4, :cond_7

    :cond_6
    move v2, v0

    goto :goto_0

    :cond_7
    move v2, v1

    goto :goto_0

    :cond_8
    move v2, v1

    goto :goto_0

    :cond_9
    sget-boolean v2, Lsun/invoke/util/Wrapper$Format;->-assertionsDisabled:Z

    if-nez v2, :cond_e

    const/4 v2, 0x2

    if-ne p2, v2, :cond_c

    if-ne p1, v4, :cond_b

    :cond_a
    :goto_1
    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    move v0, v1

    goto :goto_1

    :cond_c
    if-ne p2, v0, :cond_d

    if-le p1, v3, :cond_a

    move v0, v1

    goto :goto_1

    :cond_d
    move v0, v1

    goto :goto_1

    :cond_e
    shl-int/lit8 v0, p1, 0x2

    or-int/2addr v0, p0

    shl-int/lit8 v1, p2, 0x0

    or-int/2addr v0, v1

    return v0
.end method

.method static other(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x0

    return v0
.end method

.method static signed(I)I
    .locals 2

    const/16 v0, 0x20

    if-le p0, v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    const/16 v1, -0x1000

    invoke-static {v1, p0, v0}, Lsun/invoke/util/Wrapper$Format;->format(III)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static unsigned(I)I
    .locals 2

    const/16 v0, 0x20

    if-le p0, v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lsun/invoke/util/Wrapper$Format;->format(III)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
