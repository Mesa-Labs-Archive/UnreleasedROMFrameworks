.class Ljava/util/Formatter$FormatSpecifier;
.super Ljava/lang/Object;
.source "Formatter.java"

# interfaces
.implements Ljava/util/Formatter$FormatString;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatSpecifier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic $assertionsDisabled:Z

.field private c:C

.field private dt:Z

.field private f:Ljava/util/Formatter$Flags;

.field private index:I

.field private precision:I

.field final synthetic this$0:Ljava/util/Formatter;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/util/Formatter$FormatSpecifier;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    return-void
.end method

.method constructor <init>(Ljava/util/Formatter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    sget-object v1, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    iput-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    const/4 v0, 0x1

    invoke-direct {p0, p2}, Ljava/util/Formatter$FormatSpecifier;->index(Ljava/lang/String;)I

    invoke-direct {p0, p3}, Ljava/util/Formatter$FormatSpecifier;->flags(Ljava/lang/String;)Ljava/util/Formatter$Flags;

    invoke-direct {p0, p4}, Ljava/util/Formatter$FormatSpecifier;->width(Ljava/lang/String;)I

    invoke-direct {p0, p5}, Ljava/util/Formatter$FormatSpecifier;->precision(Ljava/lang/String;)I

    if-eqz p6, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    const-string/jumbo v1, "T"

    invoke-virtual {p6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v2, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-static {v1, v2}, Ljava/util/Formatter$Flags;->-wrap0(Ljava/util/Formatter$Flags;Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    :cond_0
    invoke-direct {p0, p7}, Ljava/util/Formatter$FormatSpecifier;->conversion(Ljava/lang/String;)C

    iget-boolean v1, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkDateTime()V

    :goto_0
    return-void

    :cond_1
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v1}, Ljava/util/Formatter$Conversion;->isGeneral(C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkGeneral()V

    goto :goto_0

    :cond_2
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v1}, Ljava/util/Formatter$Conversion;->isCharacter(C)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkCharacter()V

    goto :goto_0

    :cond_3
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v1}, Ljava/util/Formatter$Conversion;->isInteger(C)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkInteger()V

    goto :goto_0

    :cond_4
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v1}, Ljava/util/Formatter$Conversion;->isFloat(C)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkFloat()V

    goto :goto_0

    :cond_5
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v1}, Ljava/util/Formatter$Conversion;->isText(C)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkText()V

    goto :goto_0

    :cond_6
    new-instance v1, Ljava/util/UnknownFormatConversionException;

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private addDot([C)[C
    .locals 3

    const/4 v2, 0x0

    move-object v0, p1

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2e

    aput-char v2, v0, v1

    return-object v0
.end method

.method private addZeros([CI)[C
    .locals 11

    const/16 v10, 0x2e

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_0

    aget-char v6, p1, v0

    if-ne v6, v10, :cond_2

    :cond_0
    const/4 v2, 0x0

    array-length v6, p1

    if-ne v0, v6, :cond_1

    const/4 v2, 0x1

    :cond_1
    array-length v6, p1

    sub-int v9, v6, v0

    if-eqz v2, :cond_3

    move v6, v7

    :goto_1
    sub-int v3, v9, v6

    sget-boolean v6, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v6, :cond_4

    if-le v3, p2, :cond_4

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v6, v8

    goto :goto_1

    :cond_4
    if-ne v3, p2, :cond_5

    return-object p1

    :cond_5
    array-length v6, p1

    add-int/2addr v6, p2

    sub-int/2addr v6, v3

    if-eqz v2, :cond_7

    :goto_2
    add-int/2addr v6, v8

    new-array v5, v6, [C

    array-length v6, p1

    invoke-static {p1, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy([CI[CII)V

    array-length v4, p1

    if-eqz v2, :cond_6

    array-length v6, p1

    aput-char v10, v5, v6

    add-int/lit8 v4, v4, 0x1

    :cond_6
    move v1, v4

    :goto_3
    array-length v6, v5

    if-ge v1, v6, :cond_8

    const/16 v6, 0x30

    aput-char v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move v8, v7

    goto :goto_2

    :cond_8
    return-object v5
.end method

.method private adjustWidth(ILjava/util/Formatter$Flags;Z)I
    .locals 2

    move v0, p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    if-eqz p3, :cond_0

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {p2, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    :cond_0
    return v0
.end method

.method private varargs checkBadFlags([Ljava/util/Formatter$Flags;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->failMismatch(Ljava/util/Formatter$Flags;C)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkCharacter()V
    .locals 4

    const/4 v3, -0x1

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-eq v0, v3, :cond_0

    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0

    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private checkDateTime()V
    .locals 4

    const/4 v3, -0x1

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-eq v0, v3, :cond_0

    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0

    :cond_0
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/util/Formatter$DateTime;->isValid(C)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/UnknownFormatConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private checkFloat()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkNumeric()V

    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x61

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    goto :goto_0

    :cond_2
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x65

    if-ne v0, v1, :cond_3

    new-array v0, v3, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    goto :goto_0

    :cond_3
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    new-array v0, v3, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    goto :goto_0
.end method

.method private checkGeneral()V
    .locals 3

    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x62

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x68

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter$FormatSpecifier;->failMismatch(Ljava/util/Formatter$Flags;C)V

    :cond_1
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    return-void
.end method

.method private checkInteger()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkNumeric()V

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0

    :cond_0
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    new-array v0, v3, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    :goto_0
    return-void

    :cond_1
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_2

    new-array v0, v3, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    goto :goto_0

    :cond_2
    new-array v0, v3, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    goto :goto_0
.end method

.method private checkNumeric()V
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/util/IllegalFormatWidthException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    throw v0

    :cond_0
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-gez v0, :cond_1

    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0

    :cond_1
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    new-instance v0, Ljava/util/IllegalFormatFlagsException;

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-void
.end method

.method private checkText()V
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0

    :cond_0
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    sparse-switch v0, :sswitch_data_0

    sget-boolean v0, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :sswitch_0
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v0}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v0

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v0}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v0

    sget-object v1, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/util/IllegalFormatFlagsException;

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-eq v0, v2, :cond_2

    new-instance v0, Ljava/util/IllegalFormatWidthException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    throw v0

    :cond_2
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v0}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v0

    sget-object v1, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v1

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/util/IllegalFormatFlagsException;

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_0
        0x6e -> :sswitch_1
    .end sparse-switch
.end method

.method private conversion()C
    .locals 1

    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    return v0
.end method

.method private conversion(Ljava/lang/String;)C
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    iget-boolean v0, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    if-nez v0, :cond_2

    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/util/Formatter$Conversion;->isValid(C)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/UnknownFormatConversionException;

    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-static {v0, v1}, Ljava/util/Formatter$Flags;->-wrap0(Ljava/util/Formatter$Flags;Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    :cond_1
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/util/Formatter$Conversion;->isText(C)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x2

    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    :cond_2
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    return v0
.end method

.method private failConversion(CLjava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/util/IllegalFormatConversionException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    throw v0
.end method

.method private failMismatch(Ljava/util/Formatter$Flags;C)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/FormatFlagsConversionMismatchException;

    invoke-direct {v1, v0, p2}, Ljava/util/FormatFlagsConversionMismatchException;-><init>(Ljava/lang/String;C)V

    throw v1
.end method

.method private flags(Ljava/lang/String;)Ljava/util/Formatter$Flags;
    .locals 2

    invoke-static {p1}, Ljava/util/Formatter$Flags;->parse(Ljava/lang/String;)Ljava/util/Formatter$Flags;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PREVIOUS:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    :cond_0
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    return-object v0
.end method

.method private getZero(Ljava/util/Locale;)C
    .locals 2

    if-eqz p1, :cond_0

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-virtual {v1}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v1

    return v1

    :cond_0
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v1}, Ljava/util/Formatter;->-get3(Ljava/util/Formatter;)C

    move-result v1

    return v1
.end method

.method private hexDouble(DI)Ljava/lang/String;
    .locals 31

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isFinite(D)Z

    move-result v25

    if-eqz v25, :cond_0

    const-wide/16 v26, 0x0

    cmpl-double v25, p1, v26

    if-nez v25, :cond_1

    :cond_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    return-object v25

    :cond_1
    if-eqz p3, :cond_0

    const/16 v25, 0xd

    move/from16 v0, p3

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    sget-boolean v25, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v25, :cond_3

    const/16 v25, 0x1

    move/from16 v0, p3

    move/from16 v1, v25

    if-lt v0, v1, :cond_2

    const/16 v25, 0xc

    move/from16 v0, p3

    move/from16 v1, v25

    if-le v0, v1, :cond_3

    :cond_2
    new-instance v25, Ljava/lang/AssertionError;

    invoke-direct/range {v25 .. v25}, Ljava/lang/AssertionError;-><init>()V

    throw v25

    :cond_3
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->getExponent(D)I

    move-result v7

    const/16 v25, -0x3ff

    move/from16 v0, v25

    if-ne v7, v0, :cond_5

    const/16 v24, 0x1

    :goto_0
    if-eqz v24, :cond_6

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    const/16 v25, 0x36

    move-wide/from16 v0, v26

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Ljava/lang/Math;->scalb(DI)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/util/Formatter;->-set0(D)D

    invoke-static {}, Ljava/util/Formatter;->-get2()D

    move-result-wide v26

    mul-double p1, p1, v26

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->getExponent(D)I

    move-result v7

    sget-boolean v25, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v25, :cond_6

    const/16 v25, -0x3fe

    move/from16 v0, v25

    if-lt v7, v0, :cond_4

    const/16 v25, 0x3ff

    move/from16 v0, v25

    if-le v7, v0, :cond_6

    :cond_4
    new-instance v25, Ljava/lang/AssertionError;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v25

    :cond_5
    const/16 v24, 0x0

    goto :goto_0

    :cond_6
    mul-int/lit8 v25, p3, 0x4

    add-int/lit8 v11, v25, 0x1

    rsub-int/lit8 v20, v11, 0x35

    sget-boolean v25, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v25, :cond_8

    const/16 v25, 0x1

    move/from16 v0, v20

    move/from16 v1, v25

    if-lt v0, v1, :cond_7

    const/16 v25, 0x35

    move/from16 v0, v20

    move/from16 v1, v25

    if-lt v0, v1, :cond_8

    :cond_7
    new-instance v25, Ljava/lang/AssertionError;

    invoke-direct/range {v25 .. v25}, Ljava/lang/AssertionError;-><init>()V

    throw v25

    :cond_8
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    const-wide v26, 0x7fffffffffffffffL

    and-long v26, v26, v4

    shr-long v12, v26, v20

    const-wide/16 v26, -0x1

    shl-long v26, v26, v20

    move-wide/from16 v0, v26

    not-long v0, v0

    move-wide/from16 v26, v0

    and-long v18, v4, v26

    const-wide/16 v26, 0x1

    and-long v26, v26, v12

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-nez v25, :cond_c

    const/4 v10, 0x1

    :goto_1
    add-int/lit8 v25, v20, -0x1

    const-wide/16 v26, 0x1

    shl-long v26, v26, v25

    and-long v26, v26, v18

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-eqz v25, :cond_d

    const/4 v15, 0x1

    :goto_2
    const/16 v25, 0x1

    move/from16 v0, v20

    move/from16 v1, v25

    if-le v0, v1, :cond_f

    add-int/lit8 v25, v20, -0x1

    const-wide/16 v26, 0x1

    shl-long v26, v26, v25

    move-wide/from16 v0, v26

    not-long v0, v0

    move-wide/from16 v26, v0

    and-long v26, v26, v18

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-eqz v25, :cond_e

    const/16 v21, 0x1

    :goto_3
    if-eqz v10, :cond_9

    if-eqz v15, :cond_9

    if-nez v21, :cond_a

    :cond_9
    if-nez v10, :cond_b

    if-eqz v15, :cond_b

    :cond_a
    const-wide/16 v26, 0x1

    add-long v12, v12, v26

    :cond_b
    const-wide/high16 v26, -0x8000000000000000L

    and-long v22, v4, v26

    shl-long v26, v12, v20

    or-long v12, v22, v26

    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v25

    if-eqz v25, :cond_10

    const-string/jumbo v25, "1.0p1024"

    return-object v25

    :cond_c
    const/4 v10, 0x0

    goto :goto_1

    :cond_d
    const/4 v15, 0x0

    goto :goto_2

    :cond_e
    const/16 v21, 0x0

    goto :goto_3

    :cond_f
    const/16 v21, 0x0

    goto :goto_3

    :cond_10
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    if-nez v24, :cond_11

    return-object v14

    :cond_11
    const/16 v25, 0x70

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v8, v0, :cond_13

    sget-boolean v25, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v25, :cond_12

    new-instance v25, Ljava/lang/AssertionError;

    invoke-direct/range {v25 .. v25}, Ljava/lang/AssertionError;-><init>()V

    throw v25

    :cond_12
    const/16 v25, 0x0

    return-object v25

    :cond_13
    add-int/lit8 v25, v8, 0x1

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    add-int/lit8 v9, v25, -0x36

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "p"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    return-object v25
.end method

.method private index(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->index:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    goto :goto_0
.end method

.method private justify(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x20

    iget v4, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    return-object p1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v5, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    iget v4, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v3, v4, v5

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 2

    if-nez p2, :cond_2

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;
    .locals 6

    const/16 v0, 0xa

    invoke-static {p2, p3, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;
    .locals 15

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->getZero(Ljava/util/Locale;)C

    move-result v12

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v3, 0x0

    move-object/from16 v0, p2

    array-length v11, v0

    move v6, v11

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v11, :cond_1

    aget-char v13, p2, v9

    const/16 v14, 0x2e

    if-ne v13, v14, :cond_7

    move v6, v9

    :cond_1
    if-ge v6, v11, :cond_3

    if-eqz p5, :cond_2

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    :cond_2
    const/16 v3, 0x2e

    :cond_3
    :goto_1
    sget-object v13, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v13

    if-eqz v13, :cond_5

    if-eqz p5, :cond_4

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    :cond_4
    const/16 v7, 0x2c

    const/4 v8, 0x3

    :cond_5
    :goto_2
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v11, :cond_c

    if-ne v9, v6, :cond_b

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    :cond_6
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_8
    invoke-static/range {p5 .. p5}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v5

    invoke-virtual {v5}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v3

    goto :goto_1

    :cond_9
    invoke-static/range {p5 .. p5}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v5

    invoke-virtual {v5}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v7

    invoke-static/range {p5 .. p5}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    check-cast v4, Ljava/text/DecimalFormat;

    invoke-virtual {v4}, Ljava/text/DecimalFormat;->getGroupingSize()I

    move-result v8

    invoke-virtual {v4}, Ljava/text/DecimalFormat;->isGroupingUsed()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-virtual {v4}, Ljava/text/DecimalFormat;->getGroupingSize()I

    move-result v13

    if-nez v13, :cond_5

    :cond_a
    const/4 v7, 0x0

    goto :goto_2

    :cond_b
    aget-char v2, p2, v9

    add-int/lit8 v13, v2, -0x30

    add-int/2addr v13, v12

    int-to-char v13, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_6

    add-int/lit8 v13, v6, -0x1

    if-eq v9, v13, :cond_6

    sub-int v13, v6, v9

    rem-int/2addr v13, v8

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    const/4 v13, -0x1

    move/from16 v0, p4

    if-eq v0, v13, :cond_d

    sget-object v13, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v10, 0x0

    :goto_5
    sub-int v13, p4, v11

    if-ge v10, v13, :cond_d

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_d
    return-object p1
.end method

.method private precision(Ljava/lang/String;)I
    .locals 3

    const/4 v1, -0x1

    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-gez v1, :cond_0

    new-instance v1, Ljava/util/IllegalFormatPrecisionException;

    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-direct {v1, v2}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    return v1
.end method

.method private print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    packed-switch p3, :pswitch_data_0

    :pswitch_0
    :try_start_0
    sget-boolean v4, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v34

    new-instance v4, Ljava/util/IllegalFormatConversionException;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move/from16 v0, p3

    invoke-direct {v4, v0, v5}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    throw v4

    :pswitch_1
    :try_start_1
    sget-object v4, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v25

    move/from16 v0, v25

    int-to-long v6, v0

    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    const/4 v5, 0x0

    const/4 v9, 0x2

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    return-object p1

    :pswitch_2
    sget-object v4, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v25

    move/from16 v0, v25

    int-to-long v6, v0

    sget-object v8, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    const/4 v5, 0x0

    const/4 v9, 0x2

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    sget-object v4, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v25

    move/from16 v0, v25

    int-to-long v6, v0

    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    const/4 v5, 0x0

    const/4 v9, 0x2

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_4
    sget-object v4, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v25

    move/from16 v0, v25

    int-to-long v6, v0

    sget-object v8, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    const/4 v5, 0x0

    const/4 v9, 0x2

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_5
    sget-object v4, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v25

    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move/from16 v0, v25

    int-to-long v6, v0

    const/4 v5, 0x0

    const/4 v9, 0x2

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_6
    sget-object v4, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v4

    const v5, 0xf4240

    mul-int v25, v4, v5

    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move/from16 v0, v25

    int-to-long v6, v0

    const/4 v5, 0x0

    const/16 v9, 0x9

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_7
    sget-object v4, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v25

    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move/from16 v0, v25

    int-to-long v6, v0

    const/4 v5, 0x0

    const/4 v9, 0x3

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_8
    sget-object v4, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    const-wide/16 v10, 0x3e8

    mul-long/2addr v4, v10

    sget-object v9, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v10

    add-long v6, v4, v10

    sget-object v8, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v5, 0x0

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_9
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v23, v0

    const-string/jumbo v4, "AM"

    const/4 v5, 0x0

    aput-object v4, v23, v5

    const-string/jumbo v4, "PM"

    const/4 v5, 0x1

    aput-object v4, v23, v5

    if-eqz p4, :cond_2

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p4

    if-eq v0, v4, :cond_2

    invoke-static/range {p4 .. p4}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v23

    :cond_2
    sget-object v4, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v4

    aget-object v31, v23, v4

    if-eqz p4, :cond_3

    :goto_1
    move-object/from16 v0, v31

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_1

    :pswitch_a
    sget-object v4, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v6

    sget-object v8, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v5, 0x0

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_b
    sget-object v4, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v25

    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move/from16 v0, v25

    int-to-long v12, v0

    const/4 v11, 0x0

    const/4 v15, 0x2

    move-object/from16 v10, p0

    move-object v14, v8

    move-object/from16 v16, p4

    invoke-direct/range {v10 .. v16}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_c
    sget-object v4, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v25

    if-gez v25, :cond_5

    const/16 v29, 0x1

    :goto_2
    if-eqz v29, :cond_6

    const/16 v4, 0x2d

    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v29, :cond_4

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    :cond_4
    div-int/lit8 v28, v25, 0x3c

    div-int/lit8 v4, v28, 0x3c

    mul-int/lit8 v4, v4, 0x64

    rem-int/lit8 v5, v28, 0x3c

    add-int v30, v4, v5

    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move/from16 v0, v30

    int-to-long v12, v0

    const/4 v11, 0x0

    const/4 v15, 0x4

    move-object/from16 v10, p0

    move-object v14, v8

    move-object/from16 v16, p4

    invoke-direct/range {v10 .. v16}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_5
    const/16 v29, 0x0

    goto :goto_2

    :cond_6
    const/16 v4, 0x2b

    goto :goto_3

    :pswitch_d
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/time/ZoneId;

    if-nez v35, :cond_7

    new-instance v4, Ljava/util/IllegalFormatConversionException;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move/from16 v0, p3

    invoke-direct {v4, v0, v5}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    throw v4

    :cond_7
    move-object/from16 v0, v35

    instance-of v4, v0, Ljava/time/ZoneOffset;

    if-nez v4, :cond_9

    sget-object v4, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static/range {p2 .. p2}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object v26

    invoke-virtual/range {v35 .. v35}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual/range {v35 .. v35}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/time/zone/ZoneRules;->isDaylightSavings(Ljava/time/Instant;)Z

    move-result v5

    if-nez p4, :cond_8

    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    :cond_8
    const/4 v9, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v9, v0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_9
    invoke-virtual/range {v35 .. v35}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_e
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v4

    rem-int/lit8 v4, v4, 0x7

    add-int/lit8 v25, v4, 0x1

    if-nez p4, :cond_a

    sget-object v27, Ljava/util/Locale;->US:Ljava/util/Locale;

    :goto_4
    invoke-static/range {v27 .. v27}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v24

    const/16 v4, 0x41

    move/from16 v0, p3

    if-ne v0, v4, :cond_b

    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v25

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_a
    move-object/from16 v27, p4

    goto :goto_4

    :cond_b
    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v25

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_f
    sget-object v4, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v4

    add-int/lit8 v25, v4, -0x1

    if-nez p4, :cond_c

    sget-object v27, Ljava/util/Locale;->US:Ljava/util/Locale;

    :goto_5
    invoke-static/range {v27 .. v27}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v24

    const/16 v4, 0x42

    move/from16 v0, p3

    if-ne v0, v4, :cond_d

    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v25

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_c
    move-object/from16 v27, p4

    goto :goto_5

    :cond_d
    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v25

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_10
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v25

    const/4 v15, 0x2

    sparse-switch p3, :sswitch_data_0

    :goto_6
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move/from16 v0, v25

    int-to-long v12, v0

    const/4 v11, 0x0

    move-object/from16 v10, p0

    move-object v14, v8

    move-object/from16 v16, p4

    invoke-direct/range {v10 .. v16}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :sswitch_0
    div-int/lit8 v25, v25, 0x64

    goto :goto_6

    :sswitch_1
    rem-int/lit8 v25, v25, 0x64

    goto :goto_6

    :sswitch_2
    const/4 v15, 0x4

    goto :goto_6

    :pswitch_11
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v25

    const/16 v4, 0x64

    move/from16 v0, p3

    if-ne v0, v4, :cond_e

    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    :goto_7
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v17, 0x0

    const/16 v21, 0x2

    move-object/from16 v16, p0

    move-object/from16 v20, v8

    move-object/from16 v22, p4

    invoke-direct/range {v16 .. v22}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_e
    sget-object v8, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    goto :goto_7

    :pswitch_12
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v25

    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v17, 0x0

    const/16 v21, 0x3

    move-object/from16 v16, p0

    move-object/from16 v20, v8

    move-object/from16 v22, p4

    invoke-direct/range {v16 .. v22}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_13
    sget-object v4, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v25

    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v17, 0x0

    const/16 v21, 0x2

    move-object/from16 v16, p0

    move-object/from16 v20, v8

    move-object/from16 v22, p4

    invoke-direct/range {v16 .. v22}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_14
    const/16 v32, 0x3a

    const/16 v4, 0x48

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/16 v4, 0x4d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    const/16 v4, 0x54

    move/from16 v0, p3

    if-ne v0, v4, :cond_1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0x53

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    goto/16 :goto_0

    :pswitch_15
    const/16 v32, 0x3a

    const/16 v4, 0x49

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/16 v4, 0x4d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/16 v4, 0x53

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    const/16 v5, 0x20

    invoke-interface {v4, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x70

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz p4, :cond_f

    :goto_8
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_f
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_8

    :pswitch_16
    const/16 v32, 0x20

    const/16 v4, 0x61

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/16 v4, 0x62

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/16 v4, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/16 v4, 0x54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/16 v4, 0x5a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/16 v4, 0x59

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    goto/16 :goto_0

    :pswitch_17
    const/16 v32, 0x2f

    const/16 v4, 0x6d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/16 v4, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/16 v4, 0x79

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    goto/16 :goto_0

    :pswitch_18
    const/16 v32, 0x2d

    const/16 v4, 0x59

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/16 v4, 0x6d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/16 v4, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_17
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_14
        :pswitch_b
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_16
        :pswitch_11
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_12
        :pswitch_2
        :pswitch_4
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_15
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_c
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_0
        0x59 -> :sswitch_2
        0x79 -> :sswitch_1
    .end sparse-switch
.end method

.method private print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    packed-switch p3, :pswitch_data_0

    :pswitch_0
    sget-boolean v4, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :pswitch_1
    const/16 v4, 0xb

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    const/16 v4, 0x49

    move/from16 v0, p3

    if-eq v0, v4, :cond_1

    const/16 v4, 0x6c

    move/from16 v0, p3

    if-ne v0, v4, :cond_3

    :cond_1
    if-eqz v25, :cond_2

    const/16 v4, 0xc

    move/from16 v0, v25

    if-ne v0, v4, :cond_6

    :cond_2
    const/16 v25, 0xc

    :cond_3
    :goto_0
    const/16 v4, 0x48

    move/from16 v0, p3

    if-eq v0, v4, :cond_4

    const/16 v4, 0x49

    move/from16 v0, p3

    if-ne v0, v4, :cond_7

    :cond_4
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    :goto_1
    move/from16 v0, v25

    int-to-long v6, v0

    const/4 v5, 0x0

    const/4 v9, 0x2

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    return-object p1

    :cond_6
    rem-int/lit8 v25, v25, 0xc

    goto :goto_0

    :cond_7
    sget-object v8, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    goto :goto_1

    :pswitch_2
    const/16 v4, 0xc

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move/from16 v0, v25

    int-to-long v6, v0

    const/4 v5, 0x0

    const/4 v9, 0x2

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_3
    const/16 v4, 0xe

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const v5, 0xf4240

    mul-int v25, v4, v5

    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move/from16 v0, v25

    int-to-long v6, v0

    const/4 v5, 0x0

    const/16 v9, 0x9

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_4
    const/16 v4, 0xe

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move/from16 v0, v25

    int-to-long v6, v0

    const/4 v5, 0x0

    const/4 v9, 0x3

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sget-object v8, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v5, 0x0

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_6
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v23, v0

    const-string/jumbo v4, "AM"

    const/4 v5, 0x0

    aput-object v4, v23, v5

    const-string/jumbo v4, "PM"

    const/4 v5, 0x1

    aput-object v4, v23, v5

    if-eqz p4, :cond_8

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p4

    if-eq v0, v4, :cond_8

    invoke-static/range {p4 .. p4}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v23

    :cond_8
    const/16 v4, 0x9

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    aget-object v30, v23, v4

    if-eqz p4, :cond_9

    :goto_3
    move-object/from16 v0, v30

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_9
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_3

    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v10, 0x3e8

    div-long v6, v4, v10

    sget-object v8, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v5, 0x0

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :pswitch_8
    const/16 v4, 0xd

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move/from16 v0, v25

    int-to-long v12, v0

    const/4 v11, 0x0

    const/4 v15, 0x2

    move-object/from16 v10, p0

    move-object v14, v8

    move-object/from16 v16, p4

    invoke-direct/range {v10 .. v16}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :pswitch_9
    const/16 v4, 0xf

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0x10

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int v25, v4, v5

    if-gez v25, :cond_b

    const/16 v28, 0x1

    :goto_4
    if-eqz v28, :cond_c

    const/16 v4, 0x2d

    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v28, :cond_a

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    :cond_a
    const v4, 0xea60

    div-int v27, v25, v4

    div-int/lit8 v4, v27, 0x3c

    mul-int/lit8 v4, v4, 0x64

    rem-int/lit8 v5, v27, 0x3c

    add-int v29, v4, v5

    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move/from16 v0, v29

    int-to-long v12, v0

    const/4 v11, 0x0

    const/4 v15, 0x4

    move-object/from16 v10, p0

    move-object v14, v8

    move-object/from16 v16, p4

    invoke-direct/range {v10 .. v16}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_b
    const/16 v28, 0x0

    goto :goto_4

    :cond_c
    const/16 v4, 0x2b

    goto :goto_5

    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v33

    const/16 v4, 0x10

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    :goto_6
    if-nez p4, :cond_d

    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    :cond_d
    const/4 v5, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v5, v1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_e
    const/4 v4, 0x0

    goto :goto_6

    :pswitch_b
    const/4 v4, 0x7

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    if-nez p4, :cond_f

    sget-object v26, Ljava/util/Locale;->US:Ljava/util/Locale;

    :goto_7
    invoke-static/range {v26 .. v26}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v24

    const/16 v4, 0x41

    move/from16 v0, p3

    if-ne v0, v4, :cond_10

    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v25

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_f
    move-object/from16 v26, p4

    goto :goto_7

    :cond_10
    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v25

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :pswitch_c
    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    if-nez p4, :cond_11

    sget-object v26, Ljava/util/Locale;->US:Ljava/util/Locale;

    :goto_8
    invoke-static/range {v26 .. v26}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v24

    const/16 v4, 0x42

    move/from16 v0, p3

    if-ne v0, v4, :cond_12

    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v25

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_11
    move-object/from16 v26, p4

    goto :goto_8

    :cond_12
    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v25

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :pswitch_d
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    const/4 v15, 0x2

    sparse-switch p3, :sswitch_data_0

    :goto_9
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move/from16 v0, v25

    int-to-long v12, v0

    const/4 v11, 0x0

    move-object/from16 v10, p0

    move-object v14, v8

    move-object/from16 v16, p4

    invoke-direct/range {v10 .. v16}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :sswitch_0
    div-int/lit8 v25, v25, 0x64

    goto :goto_9

    :sswitch_1
    rem-int/lit8 v25, v25, 0x64

    goto :goto_9

    :sswitch_2
    const/4 v15, 0x4

    goto :goto_9

    :pswitch_e
    const/4 v4, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    const/16 v4, 0x64

    move/from16 v0, p3

    if-ne v0, v4, :cond_13

    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    :goto_a
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v17, 0x0

    const/16 v21, 0x2

    move-object/from16 v16, p0

    move-object/from16 v20, v8

    move-object/from16 v22, p4

    invoke-direct/range {v16 .. v22}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_13
    sget-object v8, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    goto :goto_a

    :pswitch_f
    const/4 v4, 0x6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v17, 0x0

    const/16 v21, 0x3

    move-object/from16 v16, p0

    move-object/from16 v20, v8

    move-object/from16 v22, p4

    invoke-direct/range {v16 .. v22}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :pswitch_10
    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v25, v4, 0x1

    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v17, 0x0

    const/16 v21, 0x2

    move-object/from16 v16, p0

    move-object/from16 v20, v8

    move-object/from16 v22, p4

    invoke-direct/range {v16 .. v22}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :pswitch_11
    const/16 v31, 0x3a

    const/16 v4, 0x48

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/16 v4, 0x4d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    const/16 v4, 0x54

    move/from16 v0, p3

    if-ne v0, v4, :cond_5

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0x53

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    goto/16 :goto_2

    :pswitch_12
    const/16 v31, 0x3a

    const/16 v4, 0x49

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/16 v4, 0x4d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/16 v4, 0x53

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    const/16 v5, 0x20

    invoke-interface {v4, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x70

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz p4, :cond_14

    :goto_b
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_14
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_b

    :pswitch_13
    const/16 v31, 0x20

    const/16 v4, 0x61

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/16 v4, 0x62

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/16 v4, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/16 v4, 0x54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/16 v4, 0x5a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/16 v4, 0x59

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    goto/16 :goto_2

    :pswitch_14
    const/16 v31, 0x2f

    const/16 v4, 0x6d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/16 v4, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/16 v4, 0x79

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    goto/16 :goto_2

    :pswitch_15
    const/16 v31, 0x2d

    const/16 v4, 0x59

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/16 v4, 0x6d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/16 v4, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_14
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_11
        :pswitch_8
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_13
        :pswitch_e
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_f
        :pswitch_1
        :pswitch_1
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_12
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_9
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_0
        0x59 -> :sswitch_2
        0x79 -> :sswitch_1
    .end sparse-switch
.end method

.method private print(BLjava/util/Locale;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p1

    if-gez p1, :cond_1

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x6f

    if-eq v2, v3, :cond_0

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x78

    if-ne v2, v3, :cond_1

    :cond_0
    const-wide/16 v2, 0x100

    add-long/2addr v0, v2

    sget-boolean v2, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :cond_1
    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    return-void
.end method

.method private print(DLjava/util/Locale;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x0

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    const/4 v8, 0x1

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-direct {p0, v1, v8}, Ljava/util/Formatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v5, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    iget-char v6, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    iget v7, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;DLjava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V

    :goto_1
    invoke-direct {p0, v1, v8}, Ljava/util/Formatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    :goto_2
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "INFINITY"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "Infinity"

    goto :goto_3

    :cond_3
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "NAN"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "NaN"

    goto :goto_4
.end method

.method private print(FLjava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    float-to-double v0, p1

    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(DLjava/util/Locale;)V

    return-void
.end method

.method private print(ILjava/util/Locale;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p1

    if-gez p1, :cond_1

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x6f

    if-eq v2, v3, :cond_0

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x78

    if-ne v2, v3, :cond_1

    :cond_0
    const-wide v2, 0x100000000L

    add-long/2addr v0, v2

    sget-boolean v2, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :cond_1
    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    return-void
.end method

.method private print(JLjava/util/Locale;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x64

    if-ne v0, v3, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gez v0, :cond_1

    const/4 v8, 0x1

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gez v0, :cond_2

    const/16 v0, 0xa

    invoke-static {p1, p2, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    :goto_1
    invoke-direct {p0, v1, v8}, Ljava/util/Formatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-direct {p0, v0, v4, v8}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v4

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v8}, Ljava/util/Formatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    :cond_0
    :goto_2
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, 0xa

    invoke-static {p1, p2, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    goto :goto_1

    :cond_3
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x6f

    if-ne v0, v3, :cond_7

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    sget-object v3, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    sget-object v3, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    const/4 v4, 0x2

    aput-object v3, v0, v4

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    :goto_3
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x0

    :goto_4
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    sub-int/2addr v0, v7

    if-ge v6, v0, :cond_6

    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    goto :goto_3

    :cond_6
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x78

    if-ne v0, v3, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    sget-object v3, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    sget-object v3, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    const/4 v4, 0x2

    aput-object v3, v0, v4

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v7, v0, 0x2

    :goto_5
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "0X"

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v6, 0x0

    :goto_7
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    sub-int/2addr v0, v7

    if-ge v6, v0, :cond_b

    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_9
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    goto :goto_5

    :cond_a
    const-string/jumbo v0, "0x"

    goto :goto_6

    :cond_b
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    :cond_c
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method private print(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get1(Ljava/util/Formatter;)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get1(Ljava/util/Formatter;)Ljava/util/Locale;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method private print(Ljava/lang/StringBuilder;DLjava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x65

    move/from16 v0, p6

    if-ne v0, v4, :cond_8

    const/4 v4, -0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_2

    const/16 v21, 0x6

    :goto_0
    sget-object v4, Lsun/misc/FormattedFloatingDecimal$Form;->SCIENTIFIC:Lsun/misc/FormattedFloatingDecimal$Form;

    move-wide/from16 v0, p2

    move/from16 v2, v21

    invoke-static {v0, v1, v2, v4}, Lsun/misc/FormattedFloatingDecimal;->valueOf(DILsun/misc/FormattedFloatingDecimal$Form;)Lsun/misc/FormattedFloatingDecimal;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lsun/misc/FormattedFloatingDecimal;->getMantissa()[C

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v4, v1}, Ljava/util/Formatter$FormatSpecifier;->addZeros([CI)[C

    move-result-object v6

    sget-object v4, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Ljava/util/Formatter$FormatSpecifier;->addDot([C)[C

    move-result-object v6

    :cond_0
    const-wide/16 v4, 0x0

    cmpl-double v4, p2, v4

    if-nez v4, :cond_3

    const/4 v4, 0x3

    new-array v15, v4, [C

    fill-array-data v15, :array_0

    :goto_1
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    array-length v5, v15

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p8

    invoke-direct {v0, v4, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v8

    :cond_1
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p5

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_4

    move-object/from16 v23, p4

    :goto_2
    invoke-static/range {v23 .. v23}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v20

    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, v20

    iget-object v4, v0, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Ljava/util/Formatter$Flags;->dup()Ljava/util/Formatter$Flags;

    move-result-object v4

    sget-object v5, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->remove(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    move-result-object v12

    const/4 v4, 0x0

    aget-char v24, v15, v4

    sget-boolean v4, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v4, :cond_6

    const/16 v4, 0x2b

    move/from16 v0, v24

    if-eq v0, v4, :cond_6

    const/16 v4, 0x2d

    move/from16 v0, v24

    if-eq v0, v4, :cond_6

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_2
    move/from16 v21, p7

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {v17 .. v17}, Lsun/misc/FormattedFloatingDecimal;->getExponent()[C

    move-result-object v15

    goto :goto_1

    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v23

    goto :goto_2

    :cond_5
    move-object/from16 v0, v20

    iget-object v4, v0, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_6
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v4, v15

    add-int/lit8 v4, v4, -0x1

    new-array v11, v4, [C

    array-length v4, v15

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static {v15, v5, v11, v7, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    const/4 v10, 0x0

    const/4 v13, -0x1

    move-object/from16 v9, p0

    move-object/from16 v14, p4

    invoke-direct/range {v9 .. v14}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_4
    return-void

    :cond_8
    const/16 v4, 0x66

    move/from16 v0, p6

    if-ne v0, v4, :cond_c

    const/4 v4, -0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_b

    const/16 v21, 0x6

    :goto_5
    sget-object v4, Lsun/misc/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

    move-wide/from16 v0, p2

    move/from16 v2, v21

    invoke-static {v0, v1, v2, v4}, Lsun/misc/FormattedFloatingDecimal;->valueOf(DILsun/misc/FormattedFloatingDecimal$Form;)Lsun/misc/FormattedFloatingDecimal;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lsun/misc/FormattedFloatingDecimal;->getMantissa()[C

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v4, v1}, Ljava/util/Formatter$FormatSpecifier;->addZeros([CI)[C

    move-result-object v6

    sget-object v4, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v21, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Ljava/util/Formatter$FormatSpecifier;->addDot([C)[C

    move-result-object v6

    :cond_9
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p8

    invoke-direct {v0, v4, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v8

    :cond_a
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p5

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_b
    move/from16 v21, p7

    goto :goto_5

    :cond_c
    const/16 v4, 0x67

    move/from16 v0, p6

    if-ne v0, v4, :cond_16

    move/from16 v21, p7

    const/4 v4, -0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_10

    const/16 v21, 0x6

    :cond_d
    :goto_6
    const-wide/16 v4, 0x0

    cmpl-double v4, p2, v4

    if-nez v4, :cond_11

    const/4 v15, 0x0

    const/4 v4, 0x1

    new-array v6, v4, [C

    const/16 v4, 0x30

    const/4 v5, 0x0

    aput-char v4, v6, v5

    const/16 v16, 0x0

    :goto_7
    if-eqz v15, :cond_12

    add-int/lit8 v21, v21, -0x1

    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v6, v1}, Ljava/util/Formatter$FormatSpecifier;->addZeros([CI)[C

    move-result-object v6

    sget-object v4, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_e

    if-nez v21, :cond_e

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Ljava/util/Formatter$FormatSpecifier;->addDot([C)[C

    move-result-object v6

    :cond_e
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_f

    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    array-length v5, v15

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p8

    invoke-direct {v0, v4, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v8

    :cond_f
    :goto_9
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p5

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    if-eqz v15, :cond_7

    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/16 v4, 0x45

    :goto_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Ljava/util/Formatter$Flags;->dup()Ljava/util/Formatter$Flags;

    move-result-object v4

    sget-object v5, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->remove(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    move-result-object v12

    const/4 v4, 0x0

    aget-char v24, v15, v4

    sget-boolean v4, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v4, :cond_15

    const/16 v4, 0x2b

    move/from16 v0, v24

    if-eq v0, v4, :cond_15

    const/16 v4, 0x2d

    move/from16 v0, v24

    if-eq v0, v4, :cond_15

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_10
    if-nez p7, :cond_d

    const/16 v21, 0x1

    goto/16 :goto_6

    :cond_11
    sget-object v4, Lsun/misc/FormattedFloatingDecimal$Form;->GENERAL:Lsun/misc/FormattedFloatingDecimal$Form;

    move-wide/from16 v0, p2

    move/from16 v2, v21

    invoke-static {v0, v1, v2, v4}, Lsun/misc/FormattedFloatingDecimal;->valueOf(DILsun/misc/FormattedFloatingDecimal$Form;)Lsun/misc/FormattedFloatingDecimal;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lsun/misc/FormattedFloatingDecimal;->getExponent()[C

    move-result-object v15

    invoke-virtual/range {v17 .. v17}, Lsun/misc/FormattedFloatingDecimal;->getMantissa()[C

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Lsun/misc/FormattedFloatingDecimal;->getExponentRounded()I

    move-result v16

    goto/16 :goto_7

    :cond_12
    add-int/lit8 v4, v16, 0x1

    sub-int v21, v21, v4

    goto/16 :goto_8

    :cond_13
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p8

    invoke-direct {v0, v4, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v8

    goto :goto_9

    :cond_14
    const/16 v4, 0x65

    goto :goto_a

    :cond_15
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v4, v15

    add-int/lit8 v4, v4, -0x1

    new-array v11, v4, [C

    array-length v4, v15

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static {v15, v5, v11, v7, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    const/4 v10, 0x0

    const/4 v13, -0x1

    move-object/from16 v9, p0

    move-object/from16 v14, p4

    invoke-direct/range {v9 .. v14}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_16
    const/16 v4, 0x61

    move/from16 v0, p6

    if-ne v0, v4, :cond_7

    move/from16 v21, p7

    const/4 v4, -0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_18

    const/16 v21, 0x0

    :cond_17
    :goto_b
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Formatter$FormatSpecifier;->hexDouble(DI)Ljava/lang/String;

    move-result-object v22

    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v26

    if-eqz v26, :cond_19

    const-string/jumbo v4, "0X"

    :goto_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/16 v18, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    move/from16 v0, v18

    if-ge v0, v4, :cond_1a

    const/16 v4, 0x30

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v18, v18, 0x1

    goto :goto_d

    :cond_18
    if-nez p7, :cond_17

    const/16 v21, 0x1

    goto :goto_b

    :cond_19
    const-string/jumbo v4, "0x"

    goto :goto_c

    :cond_1a
    const/16 v4, 0x70

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    const/4 v4, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v27

    if-eqz v26, :cond_1b

    new-instance v25, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toCharArray()[C

    move-result-object v27

    :cond_1b
    if-eqz v21, :cond_1c

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->addZeros([CI)[C

    move-result-object v27

    :cond_1c
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    if-eqz v26, :cond_1d

    const/16 v4, 0x50

    :goto_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v19, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_1d
    const/16 v4, 0x70

    goto :goto_e

    nop

    :array_0
    .array-data 2
        0x2bs
        0x30s
        0x30s
    .end array-data
.end method

.method private print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V
    .locals 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x65

    move/from16 v0, p5

    if-ne v0, v4, :cond_9

    const/4 v4, -0x1

    move/from16 v0, p6

    if-ne v0, v4, :cond_4

    const/16 v19, 0x6

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->scale()I

    move-result v35

    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->precision()I

    move-result v34

    const/16 v33, 0x0

    add-int/lit8 v4, v34, -0x1

    move/from16 v0, v19

    if-le v0, v4, :cond_5

    move/from16 v29, v34

    add-int/lit8 v4, v34, -0x1

    sub-int v33, v19, v4

    :goto_1
    new-instance v32, Ljava/math/MathContext;

    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/math/MathContext;-><init>(I)V

    new-instance v39, Ljava/math/BigDecimal;

    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, v39

    move/from16 v1, v35

    move-object/from16 v2, v32

    invoke-direct {v0, v4, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    new-instance v28, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;

    invoke-virtual/range {v39 .. v39}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual/range {v39 .. v39}, Ljava/math/BigDecimal;->scale()I

    move-result v5

    sget-object v7, Ljava/util/Formatter$BigDecimalLayoutForm;->SCIENTIFIC:Ljava/util/Formatter$BigDecimalLayoutForm;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v5, v7}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;-><init>(Ljava/util/Formatter$FormatSpecifier;Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V

    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mantissa()[C

    move-result-object v6

    const/4 v4, 0x1

    move/from16 v0, v34

    if-eq v0, v4, :cond_0

    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->hasDot()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    :cond_0
    if-gtz v33, :cond_1

    sget-object v4, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Ljava/util/Formatter$FormatSpecifier;->addDot([C)[C

    move-result-object v6

    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v6, v1}, Ljava/util/Formatter$FormatSpecifier;->trailingZeros([CI)[C

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exponent()[C

    move-result-object v31

    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    move-object/from16 v0, v31

    array-length v5, v0

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p7

    invoke-direct {v0, v4, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v8

    :cond_3
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p4

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x45

    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/util/Formatter$Flags;->dup()Ljava/util/Formatter$Flags;

    move-result-object v4

    sget-object v5, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->remove(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    move-result-object v12

    const/4 v4, 0x0

    aget-char v36, v31, v4

    sget-boolean v4, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v4, :cond_7

    const/16 v4, 0x2b

    move/from16 v0, v36

    if-eq v0, v4, :cond_7

    const/16 v4, 0x2d

    move/from16 v0, v36

    if-eq v0, v4, :cond_7

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_4
    move/from16 v19, p6

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v29, v19, 0x1

    goto/16 :goto_1

    :cond_6
    const/16 v4, 0x65

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    aget-char v4, v31, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, v31

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    new-array v11, v4, [C

    move-object/from16 v0, v31

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v31

    invoke-static {v0, v5, v11, v7, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    const/4 v10, 0x0

    const/4 v13, -0x1

    move-object/from16 v9, p0

    move-object/from16 v14, p3

    invoke-direct/range {v9 .. v14}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_3
    return-void

    :cond_9
    const/16 v4, 0x66

    move/from16 v0, p5

    if-ne v0, v4, :cond_10

    const/4 v4, -0x1

    move/from16 v0, p6

    if-ne v0, v4, :cond_d

    const/16 v19, 0x6

    :goto_4
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->scale()I

    move-result v35

    move/from16 v0, v35

    move/from16 v1, v19

    if-le v0, v1, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->precision()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v35

    if-gt v0, v1, :cond_e

    sget-object v4, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p2

    :cond_a
    :goto_5
    new-instance v28, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;

    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->scale()I

    move-result v5

    sget-object v7, Ljava/util/Formatter$BigDecimalLayoutForm;->DECIMAL_FLOAT:Ljava/util/Formatter$BigDecimalLayoutForm;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v5, v7}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;-><init>(Ljava/util/Formatter$FormatSpecifier;Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V

    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mantissa()[C

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale()I

    move-result v4

    move/from16 v0, v19

    if-ge v4, v0, :cond_f

    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale()I

    move-result v4

    sub-int v33, v19, v4

    :goto_6
    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale()I

    move-result v4

    if-nez v4, :cond_c

    sget-object v4, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-nez v4, :cond_b

    if-lez v33, :cond_c

    :cond_b
    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mantissa()[C

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Ljava/util/Formatter$FormatSpecifier;->addDot([C)[C

    move-result-object v6

    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v6, v1}, Ljava/util/Formatter$FormatSpecifier;->trailingZeros([CI)[C

    move-result-object v6

    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p7

    invoke-direct {v0, v4, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v17

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object v15, v6

    move-object/from16 v16, p4

    move-object/from16 v18, p3

    invoke-direct/range {v13 .. v18}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_d
    move/from16 v19, p6

    goto/16 :goto_4

    :cond_e
    sub-int v4, v35, v19

    sub-int v29, v29, v4

    new-instance v40, Ljava/math/BigDecimal;

    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    new-instance v5, Ljava/math/MathContext;

    move/from16 v0, v29

    invoke-direct {v5, v0}, Ljava/math/MathContext;-><init>(I)V

    move-object/from16 v0, v40

    move/from16 v1, v35

    invoke-direct {v0, v4, v1, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    move-object/from16 p2, v40

    goto/16 :goto_5

    :cond_f
    const/16 v33, 0x0

    goto :goto_6

    :cond_10
    const/16 v4, 0x67

    move/from16 v0, p5

    if-ne v0, v4, :cond_15

    move/from16 v19, p6

    const/4 v4, -0x1

    move/from16 v0, p6

    if-ne v0, v4, :cond_13

    const/16 v19, 0x6

    :cond_11
    :goto_7
    const-wide/16 v4, 0x1

    const/4 v7, 0x4

    invoke-static {v4, v5, v7}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v37

    const-wide/16 v4, 0x1

    move/from16 v0, v19

    neg-int v7, v0

    invoke-static {v4, v5, v7}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v38

    sget-object v4, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_14

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_14

    :cond_12
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    neg-int v4, v4

    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    add-int v30, v4, v5

    sub-int v4, v19, v30

    add-int/lit8 v19, v4, -0x1

    const/16 v18, 0x66

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move/from16 v20, p7

    invoke-direct/range {v13 .. v20}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V

    goto/16 :goto_3

    :cond_13
    if-nez p6, :cond_11

    const/16 v19, 0x1

    goto :goto_7

    :cond_14
    add-int/lit8 v26, v19, -0x1

    const/16 v25, 0x65

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v22, p2

    move-object/from16 v23, p3

    move-object/from16 v24, p4

    move/from16 v27, p7

    invoke-direct/range {v20 .. v27}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V

    goto/16 :goto_3

    :cond_15
    const/16 v4, 0x61

    move/from16 v0, p5

    if-ne v0, v4, :cond_8

    sget-boolean v4, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v4, :cond_8

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method

.method private print(Ljava/math/BigDecimal;Ljava/util/Locale;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x61

    if-ne v0, v3, :cond_0

    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-direct {p0, v1, v7}, Ljava/util/Formatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    iget-char v5, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    iget v6, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V

    invoke-direct {p0, v1, v7}, Ljava/util/Formatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private print(Ljava/math/BigInteger;Ljava/util/Locale;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, -0x1

    const/16 v4, 0x30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ne v0, v11, :cond_1

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct {p0, v1, v8}, Ljava/util/Formatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x64

    if-ne v0, v3, :cond_2

    invoke-virtual {v10}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-direct {p0, v0, v4, v8}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v4

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ne v0, v11, :cond_c

    const/4 v0, 0x1

    :goto_2
    invoke-direct {p0, v1, v0}, Ljava/util/Formatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x6f

    if-ne v0, v3, :cond_6

    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int v7, v0, v3

    if-eqz v8, :cond_3

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v7, v7, 0x1

    :cond_3
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v6, 0x0

    :goto_3
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    sub-int/2addr v0, v7

    if-ge v6, v0, :cond_5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x78

    if-ne v0, v3, :cond_0

    const/16 v0, 0x10

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int v7, v0, v3

    if-eqz v8, :cond_7

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v7, v7, 0x1

    :cond_7
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 v7, v7, 0x2

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "0X"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v6, 0x0

    :goto_5
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    sub-int/2addr v0, v7

    if-ge v6, v0, :cond_a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    const-string/jumbo v0, "0x"

    goto :goto_4

    :cond_a
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    :cond_b
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method private print(Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1, p1, p2, p3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v2}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method private print(Ljava/util/Calendar;CLjava/util/Locale;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1, p1, p2, p3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v2}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method private print(SLjava/util/Locale;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p1

    if-gez p1, :cond_1

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x6f

    if-eq v2, v3, :cond_0

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x78

    if-ne v2, v3, :cond_1

    :cond_0
    const-wide/32 v2, 0x10000

    add-long/2addr v0, v2

    sget-boolean v2, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :cond_1
    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    return-void
.end method

.method private printBoolean(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private printCharacter(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string/jumbo v4, "null"

    invoke-direct {p0, v4}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    instance-of v4, p1, Ljava/lang/Character;

    if-eqz v4, :cond_1

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-direct {p0, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    return-void

    :cond_1
    instance-of v4, p1, Ljava/lang/Byte;

    if-eqz v4, :cond_3

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v3, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/util/IllegalFormatCodePointException;

    invoke-direct {v4, v0}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    throw v4

    :cond_3
    instance-of v4, p1, Ljava/lang/Short;

    if-eqz v4, :cond_5

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v3, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/util/IllegalFormatCodePointException;

    invoke-direct {v4, v2}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    throw v4

    :cond_5
    instance-of v4, p1, Ljava/lang/Integer;

    if-eqz v4, :cond_7

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v3, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_6
    new-instance v4, Ljava/util/IllegalFormatCodePointException;

    invoke-direct {v4, v1}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    throw v4

    :cond_7
    iget-char v4, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v4, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    goto :goto_0
.end method

.method private printDateTime(Ljava/lang/Object;Ljava/util/Locale;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string/jumbo v1, "null"

    invoke-direct {p0, v1}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_2

    if-nez p2, :cond_1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    :goto_0
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :goto_1
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/util/Calendar;CLjava/util/Locale;)V

    return-void

    :cond_1
    move-object v1, p2

    goto :goto_0

    :cond_2
    instance-of v1, p1, Ljava/util/Date;

    if-eqz v1, :cond_4

    if-nez p2, :cond_3

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    :goto_2
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    check-cast p1, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_1

    :cond_3
    move-object v1, p2

    goto :goto_2

    :cond_4
    instance-of v1, p1, Ljava/util/Calendar;

    if-eqz v1, :cond_5

    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    goto :goto_1

    :cond_5
    instance-of v1, p1, Ljava/time/temporal/TemporalAccessor;

    if-eqz v1, :cond_6

    check-cast p1, Ljava/time/temporal/TemporalAccessor;

    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, p1, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)V

    return-void

    :cond_6
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v1, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    goto :goto_1
.end method

.method private printFloat(Ljava/lang/Object;Ljava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(FLjava/util/Locale;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(DLjava/util/Locale;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/math/BigDecimal;

    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/math/BigDecimal;Ljava/util/Locale;)V

    goto :goto_0

    :cond_3
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    goto :goto_0
.end method

.method private printHashCode(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private printInteger(Ljava/lang/Object;Ljava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(BLjava/util/Locale;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(SLjava/util/Locale;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(ILjava/util/Locale;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/math/BigInteger;

    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/math/BigInteger;Ljava/util/Locale;)V

    goto :goto_0

    :cond_5
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    goto :goto_0
.end method

.method private printString(Ljava/lang/Object;Ljava/util/Locale;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v2, p1, Ljava/util/Formattable;

    if-eqz v2, :cond_1

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-virtual {v0}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v2

    if-eq v2, p2, :cond_0

    new-instance v1, Ljava/util/Formatter;

    invoke-virtual {v0}, Ljava/util/Formatter;->out()Ljava/lang/Appendable;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    move-object v0, v1

    :cond_0
    check-cast p1, Ljava/util/Formattable;

    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v2}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v2

    iget v3, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    iget v4, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-interface {p1, v0, v2, v3, v4}, Ljava/util/Formattable;->formatTo(Ljava/util/Formatter;III)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    const/16 v3, 0x73

    invoke-direct {p0, v2, v3}, Ljava/util/Formatter$FormatSpecifier;->failMismatch(Ljava/util/Formatter$Flags;C)V

    :cond_2
    if-nez p1, :cond_3

    const-string/jumbo v2, "null"

    invoke-direct {p0, v2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-object p1
.end method

.method private trailingZeros([CI)[C
    .locals 4

    const/4 v3, 0x0

    move-object v1, p1

    if-lez p2, :cond_0

    array-length v2, p1

    add-int/2addr v2, p2

    new-array v1, v2, [C

    array-length v2, p1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    array-length v0, p1

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/16 v2, 0x30

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private width(Ljava/lang/String;)I
    .locals 3

    const/4 v1, -0x1

    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-gez v1, :cond_0

    new-instance v1, Ljava/util/IllegalFormatWidthException;

    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-direct {v1, v2}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    return v1
.end method


# virtual methods
.method flags()Ljava/util/Formatter$Flags;
    .locals 1

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    return-object v0
.end method

.method public index()I
    .locals 1

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    return v0
.end method

.method precision()I
    .locals 1

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    return v0
.end method

.method public print(Ljava/lang/Object;Ljava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printDateTime(Ljava/lang/Object;Ljava/util/Locale;)V

    return-void

    :cond_0
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    sparse-switch v0, :sswitch_data_0

    sget-boolean v0, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :sswitch_0
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printInteger(Ljava/lang/Object;Ljava/util/Locale;)V

    :cond_1
    :goto_0
    return-void

    :sswitch_1
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printFloat(Ljava/lang/Object;Ljava/util/Locale;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifier;->printCharacter(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifier;->printBoolean(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printString(Ljava/lang/Object;Ljava/util/Locale;)V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifier;->printHashCode(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    const/16 v1, 0x25

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_7
        0x43 -> :sswitch_2
        0x61 -> :sswitch_1
        0x62 -> :sswitch_3
        0x63 -> :sswitch_2
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
        0x67 -> :sswitch_1
        0x68 -> :sswitch_5
        0x6e -> :sswitch_6
        0x6f -> :sswitch_0
        0x73 -> :sswitch_4
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v4, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "%"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v2}, Ljava/util/Formatter$Flags;->dup()Ljava/util/Formatter$Flags;

    move-result-object v2

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->remove(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    if-lez v2, :cond_0

    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-eq v2, v4, :cond_1

    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-eq v2, v4, :cond_2

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v2, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x54

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_4
    const/16 v2, 0x74

    goto :goto_0

    :cond_5
    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    goto :goto_1
.end method

.method width()I
    .locals 1

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    return v0
.end method
