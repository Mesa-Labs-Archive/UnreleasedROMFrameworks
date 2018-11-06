.class public Lsun/misc/FloatingDecimal;
.super Ljava/lang/Object;
.source "FloatingDecimal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/misc/FloatingDecimal$1;,
        Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;,
        Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;,
        Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;,
        Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;,
        Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;,
        Lsun/misc/FloatingDecimal$HexFloatPattern;,
        Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final A2BC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

.field static final A2BC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

.field static final A2BC_NOT_A_NUMBER:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

.field static final A2BC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

.field static final A2BC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

.field private static final B2AC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

.field private static final B2AC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

.field private static final B2AC_NOT_A_NUMBER:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

.field private static final B2AC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

.field private static final B2AC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

.field static final BIG_DECIMAL_EXPONENT:I = 0x144

.field static final EXP_ONE:J = 0x3ff0000000000000L

.field static final EXP_SHIFT:I = 0x34

.field static final FRACT_HOB:J = 0x10000000000000L

.field private static final INFINITY_LENGTH:I

.field private static final INFINITY_REP:Ljava/lang/String; = "Infinity"

.field static final INT_DECIMAL_DIGITS:I = 0x9

.field static final MAX_DECIMAL_DIGITS:I = 0xf

.field static final MAX_DECIMAL_EXPONENT:I = 0x134

.field static final MAX_NDIGITS:I = 0x44c

.field static final MAX_SMALL_BIN_EXP:I = 0x3e

.field static final MIN_DECIMAL_EXPONENT:I = -0x144

.field static final MIN_SMALL_BIN_EXP:I = -0x15

.field private static final NAN_LENGTH:I

.field private static final NAN_REP:Ljava/lang/String; = "NaN"

.field static final SINGLE_EXP_SHIFT:I = 0x17

.field static final SINGLE_FRACT_HOB:I = 0x800000

.field static final SINGLE_MAX_DECIMAL_DIGITS:I = 0x7

.field static final SINGLE_MAX_DECIMAL_EXPONENT:I = 0x26

.field static final SINGLE_MAX_NDIGITS:I = 0xc8

.field static final SINGLE_MIN_DECIMAL_EXPONENT:I = -0x2d

.field private static final threadLocalBinaryToASCIIBuffer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x30

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-class v0, Lsun/misc/FloatingDecimal;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/misc/FloatingDecimal;->-assertionsDisabled:Z

    const-string/jumbo v0, "Infinity"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lsun/misc/FloatingDecimal;->INFINITY_LENGTH:I

    const-string/jumbo v0, "NaN"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lsun/misc/FloatingDecimal;->NAN_LENGTH:I

    new-instance v0, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;

    const-string/jumbo v1, "Infinity"

    invoke-direct {v0, v1, v2}, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lsun/misc/FloatingDecimal;->B2AC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    new-instance v0, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;

    const-string/jumbo v1, "-Infinity"

    invoke-direct {v0, v1, v3}, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lsun/misc/FloatingDecimal;->B2AC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    new-instance v0, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;

    const-string/jumbo v1, "NaN"

    invoke-direct {v0, v1, v2}, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lsun/misc/FloatingDecimal;->B2AC_NOT_A_NUMBER:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    new-instance v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;

    new-array v1, v3, [C

    aput-char v4, v1, v2

    invoke-direct {v0, v2, v1}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;-><init>(Z[C)V

    sput-object v0, Lsun/misc/FloatingDecimal;->B2AC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    new-instance v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;

    new-array v1, v3, [C

    aput-char v4, v1, v2

    invoke-direct {v0, v3, v1}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;-><init>(Z[C)V

    sput-object v0, Lsun/misc/FloatingDecimal;->B2AC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    new-instance v0, Lsun/misc/FloatingDecimal$1;

    invoke-direct {v0}, Lsun/misc/FloatingDecimal$1;-><init>()V

    sput-object v0, Lsun/misc/FloatingDecimal;->threadLocalBinaryToASCIIBuffer:Ljava/lang/ThreadLocal;

    new-instance v0, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v0, v2, v3, v1}, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;-><init>(DF)V

    sput-object v0, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    new-instance v0, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v0, v2, v3, v1}, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;-><init>(DF)V

    sput-object v0, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    new-instance v0, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v2, v3, v1}, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;-><init>(DF)V

    sput-object v0, Lsun/misc/FloatingDecimal;->A2BC_NOT_A_NUMBER:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    new-instance v0, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;-><init>(DF)V

    sput-object v0, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    new-instance v0, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;

    const-wide/high16 v2, -0x8000000000000000L

    const/high16 v1, -0x80000000

    invoke-direct {v0, v2, v3, v1}, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;-><init>(DF)V

    sput-object v0, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendTo(DLjava/lang/Appendable;)V
    .locals 2

    invoke-static {p0, p1}, Lsun/misc/FloatingDecimal;->getBinaryToASCIIConverter(D)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    move-result-object v0

    invoke-interface {v0, p2}, Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;->appendTo(Ljava/lang/Appendable;)V

    return-void
.end method

.method public static appendTo(FLjava/lang/Appendable;)V
    .locals 1

    invoke-static {p0}, Lsun/misc/FloatingDecimal;->getBinaryToASCIIConverter(F)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    move-result-object v0

    invoke-interface {v0, p1}, Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;->appendTo(Ljava/lang/Appendable;)V

    return-void
.end method

.method private static getBinaryToASCIIBuffer()Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;
    .locals 1

    sget-object v0, Lsun/misc/FloatingDecimal;->threadLocalBinaryToASCIIBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;

    return-object v0
.end method

.method public static getBinaryToASCIIConverter(D)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lsun/misc/FloatingDecimal;->getBinaryToASCIIConverter(DZ)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    move-result-object v0

    return-object v0
.end method

.method static getBinaryToASCIIConverter(DZ)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;
    .locals 16

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    const-wide/high16 v12, -0x8000000000000000L

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v5, v12, v14

    if-eqz v5, :cond_0

    const/4 v8, 0x1

    :goto_0
    const-wide v12, 0xfffffffffffffL

    and-long v2, v6, v12

    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v12, v6

    const/16 v5, 0x34

    shr-long/2addr v12, v5

    long-to-int v1, v12

    const/16 v5, 0x7ff

    if-ne v1, v5, :cond_3

    const-wide/16 v12, 0x0

    cmp-long v5, v2, v12

    if-nez v5, :cond_2

    if-eqz v8, :cond_1

    sget-object v5, Lsun/misc/FloatingDecimal;->B2AC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    :goto_1
    return-object v5

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    sget-object v5, Lsun/misc/FloatingDecimal;->B2AC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    goto :goto_1

    :cond_2
    sget-object v5, Lsun/misc/FloatingDecimal;->B2AC_NOT_A_NUMBER:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    return-object v5

    :cond_3
    if-nez v1, :cond_6

    const-wide/16 v12, 0x0

    cmp-long v5, v2, v12

    if-nez v5, :cond_5

    if-eqz v8, :cond_4

    sget-object v5, Lsun/misc/FloatingDecimal;->B2AC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    :goto_2
    return-object v5

    :cond_4
    sget-object v5, Lsun/misc/FloatingDecimal;->B2AC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    goto :goto_2

    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v9

    add-int/lit8 v10, v9, -0xb

    shl-long/2addr v2, v10

    rsub-int/lit8 v1, v10, 0x1

    rsub-int/lit8 v4, v9, 0x40

    :goto_3
    add-int/lit16 v1, v1, -0x3ff

    invoke-static {}, Lsun/misc/FloatingDecimal;->getBinaryToASCIIBuffer()Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;

    move-result-object v0

    invoke-static {v0, v8}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-wrap1(Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;Z)V

    move/from16 v5, p2

    invoke-static/range {v0 .. v5}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-wrap0(Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;IJIZ)V

    return-object v0

    :cond_6
    const-wide/high16 v12, 0x10000000000000L

    or-long/2addr v2, v12

    const/16 v4, 0x35

    goto :goto_3
.end method

.method private static getBinaryToASCIIConverter(F)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;
    .locals 14

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    const/high16 v2, -0x80000000

    and-int/2addr v2, v6

    if-eqz v2, :cond_0

    const/4 v8, 0x1

    :goto_0
    const v2, 0x7fffff

    and-int v7, v6, v2

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v2, v6

    shr-int/lit8 v1, v2, 0x17

    const/16 v2, 0xff

    if-ne v1, v2, :cond_3

    int-to-long v2, v7

    const-wide/16 v12, 0x0

    cmp-long v2, v2, v12

    if-nez v2, :cond_2

    if-eqz v8, :cond_1

    sget-object v2, Lsun/misc/FloatingDecimal;->B2AC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    :goto_1
    return-object v2

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lsun/misc/FloatingDecimal;->B2AC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    goto :goto_1

    :cond_2
    sget-object v2, Lsun/misc/FloatingDecimal;->B2AC_NOT_A_NUMBER:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    return-object v2

    :cond_3
    if-nez v1, :cond_6

    if-nez v7, :cond_5

    if-eqz v8, :cond_4

    sget-object v2, Lsun/misc/FloatingDecimal;->B2AC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    :goto_2
    return-object v2

    :cond_4
    sget-object v2, Lsun/misc/FloatingDecimal;->B2AC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    goto :goto_2

    :cond_5
    invoke-static {v7}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v9

    add-int/lit8 v10, v9, -0x8

    shl-int/2addr v7, v10

    rsub-int/lit8 v1, v10, 0x1

    rsub-int/lit8 v4, v9, 0x20

    :goto_3
    add-int/lit8 v1, v1, -0x7f

    invoke-static {}, Lsun/misc/FloatingDecimal;->getBinaryToASCIIBuffer()Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;

    move-result-object v0

    invoke-static {v0, v8}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-wrap1(Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;Z)V

    int-to-long v2, v7

    const/16 v5, 0x1d

    shl-long/2addr v2, v5

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-wrap0(Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;IJIZ)V

    return-object v0

    :cond_6
    const/high16 v2, 0x800000

    or-int/2addr v7, v2

    const/16 v4, 0x18

    goto :goto_3
.end method

.method static getHexDigit(Ljava/lang/String;I)I
    .locals 4

    const/16 v2, 0x10

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    if-lt v0, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected failure of digit conversion of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_1
    return v0
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p0}, Lsun/misc/FloatingDecimal;->readJavaFormatString(Ljava/lang/String;)Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    move-result-object v0

    invoke-interface {v0}, Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p0}, Lsun/misc/FloatingDecimal;->readJavaFormatString(Ljava/lang/String;)Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    move-result-object v0

    invoke-interface {v0}, Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;->floatValue()F

    move-result v0

    return v0
.end method

.method static parseHexString(Ljava/lang/String;)Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;
    .locals 50

    invoke-static {}, Lsun/misc/FloatingDecimal$HexFloatPattern;->-get0()Ljava/util/regex/Pattern;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/Matcher;->matches()Z

    move-result v41

    if-nez v41, :cond_0

    new-instance v46, Ljava/lang/NumberFormatException;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "For input string: \""

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, "\""

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v46

    :cond_0
    const/16 v46, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    const-string/jumbo v46, "-"

    move-object/from16 v0, v46

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    :goto_0
    const/16 v38, 0x0

    const/16 v35, 0x0

    const/4 v10, 0x0

    const/16 v25, 0x0

    const/16 v31, 0x0

    const/16 v46, 0x4

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_2

    invoke-static {v15}, Lsun/misc/FloatingDecimal;->stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v25

    :goto_1
    invoke-static/range {v38 .. v38}, Lsun/misc/FloatingDecimal;->stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v35

    const/16 v46, 0x1

    move/from16 v0, v25

    move/from16 v1, v46

    if-lt v0, v1, :cond_4

    add-int/lit8 v46, v25, -0x1

    mul-int/lit8 v10, v46, 0x4

    :goto_2
    if-nez v35, :cond_6

    if-eqz v21, :cond_5

    sget-object v46, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    :goto_3
    return-object v46

    :cond_1
    const/16 v21, 0x0

    goto :goto_0

    :cond_2
    const/16 v46, 0x6

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lsun/misc/FloatingDecimal;->stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v46, 0x7

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v31

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v16, :cond_3

    const-string/jumbo v16, ""

    :cond_3
    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    goto :goto_1

    :cond_4
    sub-int v46, v31, v35

    add-int/lit8 v46, v46, 0x1

    mul-int/lit8 v10, v46, -0x4

    goto :goto_2

    :cond_5
    sget-object v46, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_3

    :cond_6
    const/16 v46, 0x8

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_7

    const-string/jumbo v46, "+"

    move-object/from16 v0, v18

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    :goto_4
    const/16 v46, 0x9

    :try_start_0
    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v46

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v42, v0

    if-eqz v30, :cond_b

    const-wide/16 v46, 0x1

    :goto_5
    mul-long v32, v46, v42

    int-to-long v0, v10

    move-wide/from16 v46, v0

    add-long v8, v32, v46

    const/16 v34, 0x0

    const/16 v39, 0x0

    const/16 v27, 0x0

    const-wide/16 v36, 0x0

    const/16 v46, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-static {v0, v1}, Lsun/misc/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v46

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide/16 v46, 0x1

    cmp-long v46, v22, v46

    if-nez v46, :cond_c

    const/16 v46, 0x34

    shl-long v46, v22, v46

    const-wide/16 v48, 0x0

    or-long v36, v48, v46

    const/16 v27, 0x30

    :goto_6
    const/16 v19, 0x0

    const/16 v19, 0x1

    :goto_7
    move/from16 v0, v19

    move/from16 v1, v35

    if-ge v0, v1, :cond_10

    if-ltz v27, :cond_10

    move-object/from16 v0, v38

    move/from16 v1, v19

    invoke-static {v0, v1}, Lsun/misc/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v46

    move/from16 v0, v46

    int-to-long v6, v0

    shl-long v46, v6, v27

    or-long v36, v36, v46

    add-int/lit8 v27, v27, -0x4

    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    :cond_7
    const/16 v30, 0x1

    goto :goto_4

    :catch_0
    move-exception v5

    if-eqz v21, :cond_9

    if-eqz v30, :cond_8

    sget-object v46, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    :goto_8
    return-object v46

    :cond_8
    sget-object v46, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_8

    :cond_9
    if-eqz v30, :cond_a

    sget-object v46, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_8

    :cond_a
    sget-object v46, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_8

    :cond_b
    const-wide/16 v46, -0x1

    goto :goto_5

    :cond_c
    const-wide/16 v46, 0x3

    cmp-long v46, v22, v46

    if-gtz v46, :cond_d

    const/16 v46, 0x33

    shl-long v46, v22, v46

    const-wide/16 v48, 0x0

    or-long v36, v48, v46

    const/16 v27, 0x2f

    const-wide/16 v46, 0x1

    add-long v8, v8, v46

    goto :goto_6

    :cond_d
    const-wide/16 v46, 0x7

    cmp-long v46, v22, v46

    if-gtz v46, :cond_e

    const/16 v46, 0x32

    shl-long v46, v22, v46

    const-wide/16 v48, 0x0

    or-long v36, v48, v46

    const/16 v27, 0x2e

    const-wide/16 v46, 0x2

    add-long v8, v8, v46

    goto :goto_6

    :cond_e
    const-wide/16 v46, 0xf

    cmp-long v46, v22, v46

    if-gtz v46, :cond_f

    const/16 v46, 0x31

    shl-long v46, v22, v46

    const-wide/16 v48, 0x0

    or-long v36, v48, v46

    const/16 v27, 0x2d

    const-wide/16 v46, 0x3

    add-long v8, v8, v46

    goto :goto_6

    :cond_f
    new-instance v46, Ljava/lang/AssertionError;

    const-string/jumbo v47, "Result from digit conversion too large!"

    invoke-direct/range {v46 .. v47}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v46

    :cond_10
    move/from16 v0, v19

    move/from16 v1, v35

    if-ge v0, v1, :cond_1a

    move-object/from16 v0, v38

    move/from16 v1, v19

    invoke-static {v0, v1}, Lsun/misc/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v46

    move/from16 v0, v46

    int-to-long v6, v0

    packed-switch v27, :pswitch_data_0

    new-instance v46, Ljava/lang/AssertionError;

    const-string/jumbo v47, "Unexpected shift distance remainder."

    invoke-direct/range {v46 .. v47}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v46

    :pswitch_0
    const-wide/16 v46, 0xe

    and-long v46, v46, v6

    const/16 v48, 0x1

    shr-long v46, v46, v48

    or-long v36, v36, v46

    const-wide/16 v46, 0x1

    and-long v46, v46, v6

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-eqz v46, :cond_12

    const/16 v34, 0x1

    :goto_9
    add-int/lit8 v19, v19, 0x1

    :goto_a
    move/from16 v0, v19

    move/from16 v1, v35

    if-ge v0, v1, :cond_1a

    xor-int/lit8 v46, v39, 0x1

    if-eqz v46, :cond_1a

    move-object/from16 v0, v38

    move/from16 v1, v19

    invoke-static {v0, v1}, Lsun/misc/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v46

    move/from16 v0, v46

    int-to-long v6, v0

    if-nez v39, :cond_11

    const-wide/16 v46, 0x0

    cmp-long v46, v6, v46

    if-eqz v46, :cond_19

    :cond_11
    const/16 v39, 0x1

    :goto_b
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    :cond_12
    const/16 v34, 0x0

    goto :goto_9

    :pswitch_1
    const-wide/16 v46, 0xc

    and-long v46, v46, v6

    const/16 v48, 0x2

    shr-long v46, v46, v48

    or-long v36, v36, v46

    const-wide/16 v46, 0x2

    and-long v46, v46, v6

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-eqz v46, :cond_13

    const/16 v34, 0x1

    :goto_c
    const-wide/16 v46, 0x1

    and-long v46, v46, v6

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-eqz v46, :cond_14

    const/16 v39, 0x1

    goto :goto_9

    :cond_13
    const/16 v34, 0x0

    goto :goto_c

    :cond_14
    const/16 v39, 0x0

    goto :goto_9

    :pswitch_2
    const-wide/16 v46, 0x8

    and-long v46, v46, v6

    const/16 v48, 0x3

    shr-long v46, v46, v48

    or-long v36, v36, v46

    const-wide/16 v46, 0x4

    and-long v46, v46, v6

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-eqz v46, :cond_15

    const/16 v34, 0x1

    :goto_d
    const-wide/16 v46, 0x3

    and-long v46, v46, v6

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-eqz v46, :cond_16

    const/16 v39, 0x1

    goto :goto_9

    :cond_15
    const/16 v34, 0x0

    goto :goto_d

    :cond_16
    const/16 v39, 0x0

    goto :goto_9

    :pswitch_3
    const-wide/16 v46, 0x8

    and-long v46, v46, v6

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-eqz v46, :cond_17

    const/16 v34, 0x1

    :goto_e
    const-wide/16 v46, 0x7

    and-long v46, v46, v6

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-eqz v46, :cond_18

    const/16 v39, 0x1

    goto/16 :goto_9

    :cond_17
    const/16 v34, 0x0

    goto :goto_e

    :cond_18
    const/16 v39, 0x0

    goto/16 :goto_9

    :cond_19
    const/16 v39, 0x0

    goto :goto_b

    :cond_1a
    if-eqz v21, :cond_1c

    const/high16 v12, -0x80000000

    :goto_f
    const-wide/16 v46, -0x7e

    cmp-long v46, v8, v46

    if-ltz v46, :cond_21

    const-wide/16 v46, 0x7f

    cmp-long v46, v8, v46

    if-lez v46, :cond_1d

    const/high16 v46, 0x7f800000    # Float.POSITIVE_INFINITY

    or-int v12, v12, v46

    :cond_1b
    :goto_10
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    const-wide/16 v46, 0x3ff

    cmp-long v46, v8, v46

    if-lez v46, :cond_28

    if-eqz v21, :cond_27

    sget-object v46, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    :goto_11
    return-object v46

    :cond_1c
    const/4 v12, 0x0

    goto :goto_f

    :cond_1d
    const/16 v40, 0x1c

    const-wide/16 v46, 0x1

    const/16 v48, 0x1c

    shl-long v46, v46, v48

    const-wide/16 v48, 0x1

    sub-long v46, v46, v48

    and-long v46, v46, v36

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-nez v46, :cond_20

    if-nez v34, :cond_20

    move/from16 v13, v39

    :goto_12
    const/16 v46, 0x1c

    ushr-long v46, v36, v46

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v20, v0

    and-int/lit8 v46, v20, 0x3

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_1e

    if-eqz v13, :cond_1f

    :cond_1e
    add-int/lit8 v20, v20, 0x1

    :cond_1f
    long-to-int v0, v8

    move/from16 v46, v0

    add-int/lit8 v46, v46, 0x7e

    shl-int/lit8 v46, v46, 0x17

    shr-int/lit8 v47, v20, 0x1

    add-int v46, v46, v47

    or-int v12, v12, v46

    goto :goto_10

    :cond_20
    const/4 v13, 0x1

    goto :goto_12

    :cond_21
    const-wide/16 v46, -0x96

    cmp-long v46, v8, v46

    if-ltz v46, :cond_1b

    const-wide/16 v46, -0x62

    sub-long v46, v46, v8

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v40, v0

    sget-boolean v46, Lsun/misc/FloatingDecimal;->-assertionsDisabled:Z

    if-nez v46, :cond_22

    const/16 v46, 0x1d

    move/from16 v0, v40

    move/from16 v1, v46

    if-ge v0, v1, :cond_22

    new-instance v46, Ljava/lang/AssertionError;

    invoke-direct/range {v46 .. v46}, Ljava/lang/AssertionError;-><init>()V

    throw v46

    :cond_22
    sget-boolean v46, Lsun/misc/FloatingDecimal;->-assertionsDisabled:Z

    if-nez v46, :cond_23

    const/16 v46, 0x35

    move/from16 v0, v40

    move/from16 v1, v46

    if-lt v0, v1, :cond_23

    new-instance v46, Ljava/lang/AssertionError;

    invoke-direct/range {v46 .. v46}, Ljava/lang/AssertionError;-><init>()V

    throw v46

    :cond_23
    const-wide/16 v46, 0x1

    shl-long v46, v46, v40

    const-wide/16 v48, 0x1

    sub-long v46, v46, v48

    and-long v46, v46, v36

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-nez v46, :cond_26

    if-nez v34, :cond_26

    move/from16 v13, v39

    :goto_13
    ushr-long v46, v36, v40

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v20, v0

    and-int/lit8 v46, v20, 0x3

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_24

    if-eqz v13, :cond_25

    :cond_24
    add-int/lit8 v20, v20, 0x1

    :cond_25
    shr-int/lit8 v46, v20, 0x1

    or-int v12, v12, v46

    goto/16 :goto_10

    :cond_26
    const/4 v13, 0x1

    goto :goto_13

    :cond_27
    sget-object v46, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto/16 :goto_11

    :cond_28
    const-wide/16 v46, 0x3ff

    cmp-long v46, v8, v46

    if-gtz v46, :cond_2c

    const-wide/16 v46, -0x3fe

    cmp-long v46, v8, v46

    if-ltz v46, :cond_2c

    const-wide/16 v46, 0x3ff

    add-long v46, v46, v8

    const/16 v48, 0x34

    shl-long v46, v46, v48

    const-wide/high16 v48, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long v46, v46, v48

    const-wide v48, 0xfffffffffffffL

    and-long v48, v48, v36

    or-long v36, v46, v48

    :goto_14
    const-wide/16 v46, 0x1

    and-long v46, v46, v36

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-nez v46, :cond_36

    const/16 v24, 0x1

    :goto_15
    if-eqz v24, :cond_29

    if-eqz v34, :cond_29

    if-nez v39, :cond_2a

    :cond_29
    if-nez v24, :cond_2b

    if-eqz v34, :cond_2b

    :cond_2a
    const-wide/16 v46, 0x1

    add-long v36, v36, v46

    :cond_2b
    if-eqz v21, :cond_37

    const-wide/high16 v46, -0x8000000000000000L

    or-long v46, v46, v36

    invoke-static/range {v46 .. v47}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v44

    :goto_16
    new-instance v46, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;

    move-object/from16 v0, v46

    move-wide/from16 v1, v44

    invoke-direct {v0, v1, v2, v11}, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;-><init>(DF)V

    return-object v46

    :cond_2c
    const-wide/16 v46, -0x433

    cmp-long v46, v8, v46

    if-gez v46, :cond_2e

    if-eqz v21, :cond_2d

    sget-object v46, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    :goto_17
    return-object v46

    :cond_2d
    sget-object v46, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_17

    :cond_2e
    if-nez v39, :cond_30

    move/from16 v39, v34

    :goto_18
    const/16 v34, 0x0

    long-to-int v0, v8

    move/from16 v46, v0

    move/from16 v0, v46

    add-int/lit16 v0, v0, 0x432

    move/from16 v46, v0

    add-int/lit8 v46, v46, 0x1

    rsub-int/lit8 v4, v46, 0x35

    sget-boolean v46, Lsun/misc/FloatingDecimal;->-assertionsDisabled:Z

    if-nez v46, :cond_31

    const/16 v46, 0x1

    move/from16 v0, v46

    if-lt v4, v0, :cond_2f

    const/16 v46, 0x35

    move/from16 v0, v46

    if-le v4, v0, :cond_31

    :cond_2f
    new-instance v46, Ljava/lang/AssertionError;

    invoke-direct/range {v46 .. v46}, Ljava/lang/AssertionError;-><init>()V

    throw v46

    :cond_30
    const/16 v39, 0x1

    goto :goto_18

    :cond_31
    add-int/lit8 v46, v4, -0x1

    const-wide/16 v48, 0x1

    shl-long v46, v48, v46

    and-long v46, v46, v36

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-eqz v46, :cond_34

    const/16 v34, 0x1

    :goto_19
    const/16 v46, 0x1

    move/from16 v0, v46

    if-le v4, v0, :cond_33

    add-int/lit8 v46, v4, -0x1

    const-wide/16 v48, -0x1

    shl-long v46, v48, v46

    move-wide/from16 v0, v46

    not-long v0, v0

    move-wide/from16 v28, v0

    if-nez v39, :cond_32

    and-long v46, v36, v28

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-eqz v46, :cond_35

    :cond_32
    const/16 v39, 0x1

    :cond_33
    :goto_1a
    shr-long v36, v36, v4

    const-wide v46, 0xfffffffffffffL

    and-long v46, v46, v36

    const-wide/16 v48, 0x0

    or-long v36, v48, v46

    goto/16 :goto_14

    :cond_34
    const/16 v34, 0x0

    goto :goto_19

    :cond_35
    const/16 v39, 0x0

    goto :goto_1a

    :cond_36
    const/16 v24, 0x0

    goto/16 :goto_15

    :cond_37
    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v44

    goto/16 :goto_16

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static readJavaFormatString(Ljava/lang/String;)Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v17, 0x0

    const/16 v25, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_1

    new-instance v26, Ljava/lang/NumberFormatException;

    const-string/jumbo v27, "empty String"

    invoke-direct/range {v26 .. v27}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v9

    :cond_0
    new-instance v26, Ljava/lang/NumberFormatException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "For input string: \""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v26

    :cond_1
    const/4 v15, 0x0

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v26

    packed-switch v26, :pswitch_data_0

    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v26, 0x4e

    move/from16 v0, v26

    if-ne v3, v0, :cond_2

    sub-int v26, v19, v15

    sget v27, Lsun/misc/FloatingDecimal;->NAN_LENGTH:I

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    const-string/jumbo v26, "NaN"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    if-ne v0, v15, :cond_0

    sget-object v26, Lsun/misc/FloatingDecimal;->A2BC_NOT_A_NUMBER:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    return-object v26

    :pswitch_1
    const/16 v17, 0x1

    :pswitch_2
    const/4 v15, 0x1

    const/16 v25, 0x1

    goto :goto_0

    :cond_2
    const/16 v26, 0x49

    move/from16 v0, v26

    if-ne v3, v0, :cond_4

    sub-int v26, v19, v15

    sget v27, Lsun/misc/FloatingDecimal;->INFINITY_LENGTH:I

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    const-string/jumbo v26, "Infinity"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    if-ne v0, v15, :cond_0

    if-eqz v17, :cond_3

    sget-object v26, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    :goto_1
    return-object v26

    :cond_3
    sget-object v26, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_1

    :cond_4
    const/16 v26, 0x30

    move/from16 v0, v26

    if-ne v3, v0, :cond_6

    add-int/lit8 v26, v15, 0x1

    move/from16 v0, v19

    move/from16 v1, v26

    if-le v0, v1, :cond_6

    add-int/lit8 v26, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v26, 0x78

    move/from16 v0, v26

    if-eq v4, v0, :cond_5

    const/16 v26, 0x58

    move/from16 v0, v26

    if-ne v4, v0, :cond_6

    :cond_5
    invoke-static/range {p0 .. p0}, Lsun/misc/FloatingDecimal;->parseHexString(Ljava/lang/String;)Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    move-result-object v26

    return-object v26

    :cond_6
    move/from16 v0, v19

    new-array v8, v0, [C

    const/16 v20, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v15, v0, :cond_1d

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v26, 0x30

    move/from16 v0, v26

    if-ne v3, v0, :cond_7

    add-int/lit8 v22, v22, 0x1

    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_7
    const/16 v26, 0x2e

    move/from16 v0, v26

    if-ne v3, v0, :cond_a

    if-eqz v7, :cond_8

    new-instance v26, Ljava/lang/NumberFormatException;

    const-string/jumbo v27, "multiple points"

    invoke-direct/range {v26 .. v27}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v26

    :cond_8
    move v6, v15

    if-eqz v25, :cond_9

    add-int/lit8 v6, v6, -0x1

    :cond_9
    const/4 v7, 0x1

    goto :goto_3

    :cond_a
    move/from16 v21, v20

    :goto_4
    move/from16 v0, v19

    if-ge v15, v0, :cond_f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v26, 0x31

    move/from16 v0, v26

    if-lt v3, v0, :cond_b

    const/16 v26, 0x39

    move/from16 v0, v26

    if-gt v3, v0, :cond_b

    add-int/lit8 v20, v21, 0x1

    aput-char v3, v8, v21

    const/16 v23, 0x0

    :goto_5
    add-int/lit8 v15, v15, 0x1

    move/from16 v21, v20

    goto :goto_4

    :cond_b
    const/16 v26, 0x30

    move/from16 v0, v26

    if-ne v3, v0, :cond_c

    add-int/lit8 v20, v21, 0x1

    aput-char v3, v8, v21

    add-int/lit8 v23, v23, 0x1

    goto :goto_5

    :cond_c
    const/16 v26, 0x2e

    move/from16 v0, v26

    if-ne v3, v0, :cond_f

    if-eqz v7, :cond_d

    new-instance v26, Ljava/lang/NumberFormatException;

    const-string/jumbo v27, "multiple points"

    invoke-direct/range {v26 .. v27}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v26

    :cond_d
    move v6, v15

    if-eqz v25, :cond_e

    add-int/lit8 v6, v6, -0x1

    :cond_e
    const/4 v7, 0x1

    move/from16 v20, v21

    goto :goto_5

    :cond_f
    sub-int v20, v21, v23

    if-nez v20, :cond_13

    const/16 v18, 0x1

    :goto_6
    if-eqz v18, :cond_10

    if-eqz v22, :cond_0

    :cond_10
    if-eqz v7, :cond_14

    sub-int v5, v6, v22

    :goto_7
    move/from16 v0, v19

    if-ge v15, v0, :cond_17

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v26, 0x65

    move/from16 v0, v26

    if-eq v3, v0, :cond_11

    const/16 v26, 0x45

    move/from16 v0, v26

    if-ne v3, v0, :cond_17

    :cond_11
    const/4 v13, 0x1

    const/4 v14, 0x0

    const v24, 0xccccccc

    const/4 v12, 0x0

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v26

    packed-switch v26, :pswitch_data_1

    :goto_8
    :pswitch_3
    move v10, v15

    move/from16 v16, v15

    :goto_9
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_1c

    const v26, 0xccccccc

    move/from16 v0, v26

    if-lt v14, v0, :cond_12

    const/4 v12, 0x1

    :cond_12
    add-int/lit8 v15, v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v26, 0x30

    move/from16 v0, v26

    if-lt v3, v0, :cond_15

    const/16 v26, 0x39

    move/from16 v0, v26

    if-gt v3, v0, :cond_15

    mul-int/lit8 v26, v14, 0xa

    add-int/lit8 v27, v3, -0x30

    add-int v14, v26, v27

    move/from16 v16, v15

    goto :goto_9

    :cond_13
    const/16 v18, 0x0

    goto :goto_6

    :cond_14
    add-int v5, v20, v23

    goto :goto_7

    :pswitch_4
    const/4 v13, -0x1

    :pswitch_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    :cond_15
    add-int/lit8 v15, v15, -0x1

    :goto_a
    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x144

    move/from16 v26, v0

    add-int v11, v26, v23

    if-nez v12, :cond_16

    if-le v14, v11, :cond_19

    :cond_16
    mul-int v5, v13, v11

    :goto_b
    if-eq v15, v10, :cond_0

    :cond_17
    move/from16 v0, v19

    if-ge v15, v0, :cond_18

    add-int/lit8 v26, v19, -0x1

    move/from16 v0, v26

    if-ne v15, v0, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x66

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x46

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x64

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x44

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    :cond_18
    if-eqz v18, :cond_1b

    if-eqz v17, :cond_1a

    sget-object v26, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    :goto_c
    return-object v26

    :cond_19
    mul-int v26, v13, v14

    add-int v5, v5, v26

    goto :goto_b

    :cond_1a
    sget-object v26, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_c

    :cond_1b
    new-instance v26, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;

    move-object/from16 v0, v26

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-direct {v0, v1, v5, v8, v2}, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;-><init>(ZI[CI)V
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v26

    :cond_1c
    move/from16 v15, v16

    goto :goto_a

    :cond_1d
    move/from16 v21, v20

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2b
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x30

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, ""

    return-object v1

    :cond_2
    return-object p0
.end method

.method public static toJavaFormatString(D)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Lsun/misc/FloatingDecimal;->getBinaryToASCIIConverter(D)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    move-result-object v0

    invoke-interface {v0}, Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;->toJavaFormatString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toJavaFormatString(F)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lsun/misc/FloatingDecimal;->getBinaryToASCIIConverter(F)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    move-result-object v0

    invoke-interface {v0}, Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;->toJavaFormatString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
