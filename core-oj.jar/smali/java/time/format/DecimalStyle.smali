.class public final Ljava/time/format/DecimalStyle;
.super Ljava/lang/Object;
.source "DecimalStyle.java"


# static fields
.field private static final CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/time/format/DecimalStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final STANDARD:Ljava/time/format/DecimalStyle;


# instance fields
.field private final decimalSeparator:C

.field private final negativeSign:C

.field private final positiveSign:C

.field private final zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/time/format/DecimalStyle;

    const/16 v1, 0x30

    const/16 v2, 0x2b

    const/16 v3, 0x2d

    const/16 v4, 0x2e

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/time/format/DecimalStyle;-><init>(CCCC)V

    sput-object v0, Ljava/time/format/DecimalStyle;->STANDARD:Ljava/time/format/DecimalStyle;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljava/time/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>(CCCC)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    iput-char p2, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    iput-char p3, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    iput-char p4, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    return-void
.end method

.method private static create(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;
    .locals 6

    invoke-static {p0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v4

    const/16 v3, 0x2b

    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v1

    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v0

    const/16 v5, 0x30

    if-ne v4, v5, :cond_0

    const/16 v5, 0x2d

    if-ne v1, v5, :cond_0

    const/16 v5, 0x2e

    if-ne v0, v5, :cond_0

    sget-object v5, Ljava/time/format/DecimalStyle;->STANDARD:Ljava/time/format/DecimalStyle;

    return-object v5

    :cond_0
    new-instance v5, Ljava/time/format/DecimalStyle;

    invoke-direct {v5, v4, v3, v1, v0}, Ljava/time/format/DecimalStyle;-><init>(CCCC)V

    return-object v5
.end method

.method public static getAvailableLocales()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static of(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;
    .locals 2

    const-string/jumbo v1, "locale"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v1, Ljava/time/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/format/DecimalStyle;

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/time/format/DecimalStyle;->create(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;

    move-result-object v0

    sget-object v1, Ljava/time/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/time/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/format/DecimalStyle;

    :cond_0
    return-object v0
.end method

.method public static ofDefaultLocale()Ljava/time/format/DecimalStyle;
    .locals 1

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/time/format/DecimalStyle;->of(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method convertNumberToI18N(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-char v3, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    const/16 v4, 0x30

    if-ne v3, v4, :cond_0

    return-object p1

    :cond_0
    iget-char v3, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    add-int/lit8 v1, v3, -0x30

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-char v3, v0, v2

    add-int/2addr v3, v1

    int-to-char v3, v3

    aput-char v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method convertToDigit(C)I
    .locals 2

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    sub-int v0, p1, v1

    if-ltz v0, :cond_0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Ljava/time/format/DecimalStyle;

    if-eqz v3, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/time/format/DecimalStyle;

    iget-char v3, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    iget-char v4, v0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    if-ne v3, v4, :cond_2

    iget-char v3, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    iget-char v4, v0, Ljava/time/format/DecimalStyle;->positiveSign:C

    if-ne v3, v4, :cond_2

    iget-char v3, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    iget-char v4, v0, Ljava/time/format/DecimalStyle;->negativeSign:C

    if-ne v3, v4, :cond_2

    iget-char v3, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    iget-char v4, v0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    if-ne v3, v4, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    return v2
.end method

.method public getDecimalSeparator()C
    .locals 1

    iget-char v0, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    return v0
.end method

.method public getNegativeSign()C
    .locals 1

    iget-char v0, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    return v0
.end method

.method public getPositiveSign()C
    .locals 1

    iget-char v0, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    return v0
.end method

.method public getZeroDigit()C
    .locals 1

    iget-char v0, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-char v0, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    add-int/2addr v0, v1

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    add-int/2addr v0, v1

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DecimalStyle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withDecimalSeparator(C)Ljava/time/format/DecimalStyle;
    .locals 4

    iget-char v0, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/time/format/DecimalStyle;

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    iget-char v2, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    iget-char v3, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/time/format/DecimalStyle;-><init>(CCCC)V

    return-object v0
.end method

.method public withNegativeSign(C)Ljava/time/format/DecimalStyle;
    .locals 4

    iget-char v0, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/time/format/DecimalStyle;

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    iget-char v2, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    iget-char v3, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/time/format/DecimalStyle;-><init>(CCCC)V

    return-object v0
.end method

.method public withPositiveSign(C)Ljava/time/format/DecimalStyle;
    .locals 4

    iget-char v0, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/time/format/DecimalStyle;

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    iget-char v2, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    iget-char v3, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    invoke-direct {v0, v1, p1, v2, v3}, Ljava/time/format/DecimalStyle;-><init>(CCCC)V

    return-object v0
.end method

.method public withZeroDigit(C)Ljava/time/format/DecimalStyle;
    .locals 4

    iget-char v0, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/time/format/DecimalStyle;

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    iget-char v2, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    iget-char v3, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/time/format/DecimalStyle;-><init>(CCCC)V

    return-object v0
.end method
