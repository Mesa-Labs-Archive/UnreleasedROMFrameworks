.class public Lsun/misc/FormattedFloatingDecimal;
.super Ljava/lang/Object;
.source "FormattedFloatingDecimal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/misc/FormattedFloatingDecimal$1;,
        Lsun/misc/FormattedFloatingDecimal$Form;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final synthetic -sun-misc-FormattedFloatingDecimal$FormSwitchesValues:[I

.field private static final threadLocalCharBuffer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private decExponentRounded:I

.field private exponent:[C

.field private mantissa:[C


# direct methods
.method private static synthetic -getsun-misc-FormattedFloatingDecimal$FormSwitchesValues()[I
    .locals 3

    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->-sun-misc-FormattedFloatingDecimal$FormSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->-sun-misc-FormattedFloatingDecimal$FormSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lsun/misc/FormattedFloatingDecimal$Form;->values()[Lsun/misc/FormattedFloatingDecimal$Form;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    invoke-virtual {v1}, Lsun/misc/FormattedFloatingDecimal$Form;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

    invoke-virtual {v1}, Lsun/misc/FormattedFloatingDecimal$Form;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->GENERAL:Lsun/misc/FormattedFloatingDecimal$Form;

    invoke-virtual {v1}, Lsun/misc/FormattedFloatingDecimal$Form;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->SCIENTIFIC:Lsun/misc/FormattedFloatingDecimal$Form;

    invoke-virtual {v1}, Lsun/misc/FormattedFloatingDecimal$Form;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->-sun-misc-FormattedFloatingDecimal$FormSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/misc/FormattedFloatingDecimal;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

    new-instance v0, Lsun/misc/FormattedFloatingDecimal$1;

    invoke-direct {v0}, Lsun/misc/FormattedFloatingDecimal$1;-><init>()V

    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->threadLocalCharBuffer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(ILsun/misc/FormattedFloatingDecimal$Form;Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p3}, Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;->isExceptional()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;->toJavaFormatString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    return-void

    :cond_0
    invoke-static {}, Lsun/misc/FormattedFloatingDecimal;->getBuffer()[C

    move-result-object v2

    invoke-interface {p3, v2}, Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;->getDigits([C)I

    move-result v3

    invoke-interface {p3}, Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;->getDecimalExponent()I

    move-result v4

    invoke-interface {p3}, Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;->isNegative()Z

    move-result v5

    invoke-static {}, Lsun/misc/FormattedFloatingDecimal;->-getsun-misc-FormattedFloatingDecimal$FormSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lsun/misc/FormattedFloatingDecimal$Form;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    move v10, v4

    iput v4, p0, Lsun/misc/FormattedFloatingDecimal;->decExponentRounded:I

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lsun/misc/FormattedFloatingDecimal;->fillCompatible(I[CIIZ)V

    :cond_1
    :goto_0
    return-void

    :pswitch_1
    add-int v0, v4, p1

    invoke-static {v4, v2, v3, v0}, Lsun/misc/FormattedFloatingDecimal;->applyPrecision(I[CII)I

    move-result v10

    move-object v6, p0

    move v7, p1

    move-object v8, v2

    move v9, v3

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lsun/misc/FormattedFloatingDecimal;->fillDecimal(I[CIIZ)V

    iput v10, p0, Lsun/misc/FormattedFloatingDecimal;->decExponentRounded:I

    goto :goto_0

    :pswitch_2
    add-int/lit8 v0, p1, 0x1

    invoke-static {v4, v2, v3, v0}, Lsun/misc/FormattedFloatingDecimal;->applyPrecision(I[CII)I

    move-result v10

    move-object v6, p0

    move v7, p1

    move-object v8, v2

    move v9, v3

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lsun/misc/FormattedFloatingDecimal;->fillScientific(I[CIIZ)V

    iput v10, p0, Lsun/misc/FormattedFloatingDecimal;->decExponentRounded:I

    goto :goto_0

    :pswitch_3
    invoke-static {v4, v2, v3, p1}, Lsun/misc/FormattedFloatingDecimal;->applyPrecision(I[CII)I

    move-result v10

    add-int/lit8 v0, v10, -0x1

    const/4 v1, -0x4

    if-lt v0, v1, :cond_2

    add-int/lit8 v0, v10, -0x1

    if-lt v0, p1, :cond_3

    :cond_2
    add-int/lit8 p1, p1, -0x1

    move-object v6, p0

    move v7, p1

    move-object v8, v2

    move v9, v3

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lsun/misc/FormattedFloatingDecimal;->fillScientific(I[CIIZ)V

    :goto_1
    iput v10, p0, Lsun/misc/FormattedFloatingDecimal;->decExponentRounded:I

    goto :goto_0

    :cond_3
    sub-int/2addr p1, v10

    move-object v6, p0

    move v7, p1

    move-object v8, v2

    move v9, v3

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lsun/misc/FormattedFloatingDecimal;->fillDecimal(I[CIIZ)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static applyPrecision(I[CII)I
    .locals 8

    const/16 v7, 0x31

    const/4 v6, 0x1

    const/16 v3, 0x39

    const/16 v5, 0x30

    const/4 v4, 0x0

    if-ge p3, p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    return p0

    :cond_1
    if-nez p3, :cond_3

    aget-char v2, p1, v4

    const/16 v3, 0x35

    if-lt v2, v3, :cond_2

    aput-char v7, p1, v4

    invoke-static {p1, v6, p2, v5}, Ljava/util/Arrays;->fill([CIIC)V

    add-int/lit8 v2, p0, 0x1

    return v2

    :cond_2
    invoke-static {p1, v4, p2, v5}, Ljava/util/Arrays;->fill([CIIC)V

    return p0

    :cond_3
    aget-char v1, p1, p3

    const/16 v2, 0x35

    if-lt v1, v2, :cond_6

    move v0, p3

    add-int/lit8 v0, p3, -0x1

    aget-char v1, p1, v0

    if-ne v1, v3, :cond_5

    :goto_0
    if-ne v1, v3, :cond_4

    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    aget-char v1, p1, v0

    goto :goto_0

    :cond_4
    if-ne v1, v3, :cond_5

    aput-char v7, p1, v4

    invoke-static {p1, v6, p2, v5}, Ljava/util/Arrays;->fill([CIIC)V

    add-int/lit8 v2, p0, 0x1

    return v2

    :cond_5
    add-int/lit8 v2, v1, 0x1

    int-to-char v2, v2

    aput-char v2, p1, v0

    add-int/lit8 v2, v0, 0x1

    invoke-static {p1, v2, p2, v5}, Ljava/util/Arrays;->fill([CIIC)V

    :goto_1
    return p0

    :cond_6
    invoke-static {p1, p3, p2, v5}, Ljava/util/Arrays;->fill([CIIC)V

    goto :goto_1
.end method

.method private static create(ZI)[C
    .locals 3

    if-eqz p0, :cond_0

    add-int/lit8 v1, p1, 0x1

    new-array v0, v1, [C

    const/16 v1, 0x2d

    const/4 v2, 0x0

    aput-char v1, v0, v2

    return-object v0

    :cond_0
    new-array v1, p1, [C

    return-object v1
.end method

.method private fillCompatible(I[CIIZ)V
    .locals 12

    if-eqz p5, :cond_1

    const/4 v5, 0x1

    :goto_0
    if-lez p4, :cond_4

    const/16 v8, 0x8

    move/from16 v0, p4

    if-ge v0, v8, :cond_4

    move/from16 v0, p4

    if-ge p3, v0, :cond_2

    sub-int v3, p4, p3

    add-int v8, p3, v3

    add-int/lit8 v8, v8, 0x2

    move/from16 v0, p5

    invoke-static {v0, v8}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v8

    iput-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    const/4 v9, 0x0

    invoke-static {p2, v9, v8, v5, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int v9, v5, p3

    add-int v10, v5, p3

    add-int/2addr v10, v3

    const/16 v11, 0x30

    invoke-static {v8, v9, v10, v11}, Ljava/util/Arrays;->fill([CIIC)V

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int v9, v5, p3

    add-int/2addr v9, v3

    const/16 v10, 0x2e

    aput-char v10, v8, v9

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int v9, v5, p3

    add-int/2addr v9, v3

    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0x30

    aput-char v10, v8, v9

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    move/from16 v0, p4

    if-ge v0, p3, :cond_3

    sub-int v8, p3, p4

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v8, p4, 0x1

    add-int/2addr v8, v6

    move/from16 v0, p5

    invoke-static {v0, v8}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v8

    iput-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    const/4 v9, 0x0

    move/from16 v0, p4

    invoke-static {p2, v9, v8, v5, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int v9, v5, p4

    const/16 v10, 0x2e

    aput-char v10, v8, v9

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int v9, v5, p4

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, p4

    invoke-static {p2, v0, v8, v9, v6}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_1

    :cond_3
    add-int/lit8 v8, p3, 0x2

    move/from16 v0, p5

    invoke-static {v0, v8}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v8

    iput-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    const/4 v9, 0x0

    invoke-static {p2, v9, v8, v5, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int v9, v5, p3

    const/16 v10, 0x2e

    aput-char v10, v8, v9

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int v9, v5, p3

    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0x30

    aput-char v10, v8, v9

    goto :goto_1

    :cond_4
    if-gtz p4, :cond_7

    const/4 v8, -0x3

    move/from16 v0, p4

    if-le v0, v8, :cond_7

    move/from16 v0, p4

    neg-int v8, v0

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int v8, p1, p4

    invoke-static {p3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-lez v7, :cond_5

    add-int/lit8 v8, v7, 0x2

    add-int/2addr v8, v6

    move/from16 v0, p5

    invoke-static {v0, v8}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v8

    iput-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    const/16 v9, 0x30

    aput-char v9, v8, v5

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v9, v5, 0x1

    const/16 v10, 0x2e

    aput-char v10, v8, v9

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v9, v5, 0x2

    add-int/lit8 v10, v5, 0x2

    add-int/2addr v10, v7

    const/16 v11, 0x30

    invoke-static {v8, v9, v10, v11}, Ljava/util/Arrays;->fill([CIIC)V

    if-lez v6, :cond_0

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v9, v5, 0x2

    add-int/2addr v9, v7

    const/4 v10, 0x0

    invoke-static {p2, v10, v8, v9, v6}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto/16 :goto_1

    :cond_5
    if-lez v6, :cond_6

    add-int/lit8 v8, v7, 0x2

    add-int/2addr v8, v6

    move/from16 v0, p5

    invoke-static {v0, v8}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v8

    iput-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    const/16 v9, 0x30

    aput-char v9, v8, v5

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v9, v5, 0x1

    const/16 v10, 0x2e

    aput-char v10, v8, v9

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v9, v5, 0x2

    const/4 v10, 0x0

    invoke-static {p2, v10, v8, v9, v6}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto/16 :goto_1

    :cond_6
    const/4 v8, 0x1

    move/from16 v0, p5

    invoke-static {v0, v8}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v8

    iput-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    const/16 v9, 0x30

    aput-char v9, v8, v5

    goto/16 :goto_1

    :cond_7
    const/4 v8, 0x1

    if-le p3, v8, :cond_8

    add-int/lit8 v8, p3, 0x1

    move/from16 v0, p5

    invoke-static {v0, v8}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v8

    iput-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    const/4 v9, 0x0

    aget-char v9, p2, v9

    aput-char v9, v8, v5

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v9, v5, 0x1

    const/16 v10, 0x2e

    aput-char v10, v8, v9

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v9, v5, 0x2

    add-int/lit8 v10, p3, -0x1

    const/4 v11, 0x1

    invoke-static {p2, v11, v8, v9, v10}, Ljava/lang/System;->arraycopy([CI[CII)V

    :goto_2
    if-gtz p4, :cond_9

    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_a

    move/from16 v0, p4

    neg-int v8, v0

    add-int/lit8 v1, v8, 0x1

    const/4 v2, 0x1

    :goto_4
    const/16 v8, 0x9

    if-gt v1, v8, :cond_b

    const/4 v8, 0x1

    invoke-static {v4, v8}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v8

    iput-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    add-int/lit8 v9, v1, 0x30

    int-to-char v9, v9

    aput-char v9, v8, v2

    goto/16 :goto_1

    :cond_8
    const/4 v8, 0x3

    move/from16 v0, p5

    invoke-static {v0, v8}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v8

    iput-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    const/4 v9, 0x0

    aget-char v9, p2, v9

    aput-char v9, v8, v5

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v9, v5, 0x1

    const/16 v10, 0x2e

    aput-char v10, v8, v9

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v9, v5, 0x2

    const/16 v10, 0x30

    aput-char v10, v8, v9

    goto :goto_2

    :cond_9
    const/4 v4, 0x0

    goto :goto_3

    :cond_a
    add-int/lit8 v1, p4, -0x1

    const/4 v2, 0x0

    goto :goto_4

    :cond_b
    const/16 v8, 0x63

    if-gt v1, v8, :cond_c

    const/4 v8, 0x2

    invoke-static {v4, v8}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v8

    iput-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    div-int/lit8 v9, v1, 0xa

    add-int/lit8 v9, v9, 0x30

    int-to-char v9, v9

    aput-char v9, v8, v2

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    add-int/lit8 v9, v2, 0x1

    rem-int/lit8 v10, v1, 0xa

    add-int/lit8 v10, v10, 0x30

    int-to-char v10, v10

    aput-char v10, v8, v9

    goto/16 :goto_1

    :cond_c
    const/4 v8, 0x3

    invoke-static {v4, v8}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v8

    iput-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    div-int/lit8 v9, v1, 0x64

    add-int/lit8 v9, v9, 0x30

    int-to-char v9, v9

    aput-char v9, v8, v2

    rem-int/lit8 v1, v1, 0x64

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    add-int/lit8 v9, v2, 0x1

    div-int/lit8 v10, v1, 0xa

    add-int/lit8 v10, v10, 0x30

    int-to-char v10, v10

    aput-char v10, v8, v9

    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    add-int/lit8 v9, v2, 0x2

    rem-int/lit8 v10, v1, 0xa

    add-int/lit8 v10, v10, 0x30

    int-to-char v10, v10

    aput-char v10, v8, v9

    goto/16 :goto_1
.end method

.method private fillDecimal(I[CIIZ)V
    .locals 8

    const/16 v6, 0x2e

    const/16 v7, 0x30

    const/4 v4, 0x0

    if-eqz p5, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-lez p4, :cond_4

    if-ge p3, p4, :cond_2

    invoke-static {p5, p4}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v3

    iput-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    invoke-static {p2, v4, v3, v0, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int v4, v0, p3

    add-int v5, v0, p4

    invoke-static {v3, v4, v5, v7}, Ljava/util/Arrays;->fill([CIIC)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sub-int v3, p3, p4

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lez v1, :cond_3

    add-int/lit8 v3, v1, 0x1

    :goto_2
    add-int/2addr v3, p4

    invoke-static {p5, v3}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v3

    iput-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    invoke-static {p2, v4, v3, v0, p4}, Ljava/lang/System;->arraycopy([CI[CII)V

    if-lez v1, :cond_0

    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int v4, v0, p4

    aput-char v6, v3, v4

    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int v4, v0, p4

    add-int/lit8 v4, v4, 0x1

    invoke-static {p2, p4, v3, v4, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    :cond_4
    if-gtz p4, :cond_0

    neg-int v3, p4

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v3, p1, p4

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lez v2, :cond_5

    add-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    invoke-static {p5, v3}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v3

    iput-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    aput-char v7, v3, v0

    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v5, v0, 0x1

    aput-char v6, v3, v5

    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v2

    invoke-static {v3, v5, v6, v7}, Ljava/util/Arrays;->fill([CIIC)V

    if-lez v1, :cond_0

    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v2

    invoke-static {p2, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_1

    :cond_5
    if-lez v1, :cond_6

    add-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    invoke-static {p5, v3}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v3

    iput-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    aput-char v7, v3, v0

    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v5, v0, 0x1

    aput-char v6, v3, v5

    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v5, v0, 0x2

    invoke-static {p2, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto/16 :goto_1

    :cond_6
    const/4 v3, 0x1

    invoke-static {p5, v3}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v3

    iput-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    aput-char v7, v3, v0

    goto/16 :goto_1
.end method

.method private fillScientific(I[CIIZ)V
    .locals 8

    if-eqz p5, :cond_0

    const/4 v3, 0x1

    :goto_0
    add-int/lit8 v5, p3, -0x1

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-lez v4, :cond_1

    add-int/lit8 v5, v4, 0x2

    invoke-static {p5, v5}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v5

    iput-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    iget-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    const/4 v6, 0x0

    aget-char v6, p2, v6

    aput-char v6, v5, v3

    iget-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v6, v3, 0x1

    const/16 v7, 0x2e

    aput-char v7, v5, v6

    iget-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    add-int/lit8 v6, v3, 0x2

    const/4 v7, 0x1

    invoke-static {p2, v7, v5, v6, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    :goto_1
    if-gtz p4, :cond_2

    const/16 v1, 0x2d

    neg-int v5, p4

    add-int/lit8 v0, v5, 0x1

    :goto_2
    const/16 v5, 0x9

    if-gt v0, v5, :cond_3

    const/4 v5, 0x3

    new-array v5, v5, [C

    const/4 v6, 0x0

    aput-char v1, v5, v6

    const/16 v6, 0x30

    const/4 v7, 0x1

    aput-char v6, v5, v7

    add-int/lit8 v6, v0, 0x30

    int-to-char v6, v6

    const/4 v7, 0x2

    aput-char v6, v5, v7

    iput-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    :goto_3
    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    invoke-static {p5, v5}, Lsun/misc/FormattedFloatingDecimal;->create(ZI)[C

    move-result-object v5

    iput-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    iget-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    const/4 v6, 0x0

    aget-char v6, p2, v6

    aput-char v6, v5, v3

    goto :goto_1

    :cond_2
    const/16 v1, 0x2b

    add-int/lit8 v0, p4, -0x1

    goto :goto_2

    :cond_3
    const/16 v5, 0x63

    if-gt v0, v5, :cond_4

    const/4 v5, 0x3

    new-array v5, v5, [C

    const/4 v6, 0x0

    aput-char v1, v5, v6

    div-int/lit8 v6, v0, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    const/4 v7, 0x1

    aput-char v6, v5, v7

    rem-int/lit8 v6, v0, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    const/4 v7, 0x2

    aput-char v6, v5, v7

    iput-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    goto :goto_3

    :cond_4
    div-int/lit8 v5, v0, 0x64

    add-int/lit8 v5, v5, 0x30

    int-to-char v2, v5

    rem-int/lit8 v0, v0, 0x64

    const/4 v5, 0x4

    new-array v5, v5, [C

    const/4 v6, 0x0

    aput-char v1, v5, v6

    const/4 v6, 0x1

    aput-char v2, v5, v6

    div-int/lit8 v6, v0, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    const/4 v7, 0x2

    aput-char v6, v5, v7

    rem-int/lit8 v6, v0, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    const/4 v7, 0x3

    aput-char v6, v5, v7

    iput-object v5, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    goto :goto_3
.end method

.method private static getBuffer()[C
    .locals 1

    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->threadLocalCharBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static valueOf(DILsun/misc/FormattedFloatingDecimal$Form;)Lsun/misc/FormattedFloatingDecimal;
    .locals 2

    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    if-ne p3, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {p0, p1, v1}, Lsun/misc/FloatingDecimal;->getBinaryToASCIIConverter(DZ)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    move-result-object v0

    new-instance v1, Lsun/misc/FormattedFloatingDecimal;

    invoke-direct {v1, p2, p3, v0}, Lsun/misc/FormattedFloatingDecimal;-><init>(ILsun/misc/FormattedFloatingDecimal$Form;Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;)V

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getExponent()[C
    .locals 1

    iget-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->exponent:[C

    return-object v0
.end method

.method public getExponentRounded()I
    .locals 1

    iget v0, p0, Lsun/misc/FormattedFloatingDecimal;->decExponentRounded:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getMantissa()[C
    .locals 1

    iget-object v0, p0, Lsun/misc/FormattedFloatingDecimal;->mantissa:[C

    return-object v0
.end method
