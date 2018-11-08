.class public final Ljava/util/Locale$LanguageRange;
.super Ljava/lang/Object;
.source "Locale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LanguageRange"
.end annotation


# static fields
.field public static final MAX_WEIGHT:D = 1.0

.field public static final MIN_WEIGHT:D


# instance fields
.field private volatile hash:I

.field private final range:Ljava/lang/String;

.field private final weight:D


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v0, v1}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;D)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;D)V
    .locals 8

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v6, p0, Ljava/util/Locale$LanguageRange;->hash:I

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    const-wide/16 v4, 0x0

    cmpg-double v3, p2, v4

    if-ltz v3, :cond_1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, p2, v4

    if-lez v3, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "weight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const-string/jumbo v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, v6

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/util/Locale$LanguageRange;->isSubtagIllFormed(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    const/4 v1, 0x1

    :cond_4
    :goto_0
    if-eqz v1, :cond_7

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "range="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    const/4 v0, 0x1

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget-object v3, v2, v0

    invoke-static {v3, v6}, Ljava/util/Locale$LanguageRange;->isSubtagIllFormed(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iput-object p1, p0, Ljava/util/Locale$LanguageRange;->range:Ljava/lang/String;

    iput-wide p2, p0, Ljava/util/Locale$LanguageRange;->weight:D

    return-void
.end method

.method private static isSubtagIllFormed(Ljava/lang/String;Z)Z
    .locals 9

    const/16 v8, 0x7a

    const/16 v7, 0x61

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-string/jumbo v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x8

    if-le v2, v4, :cond_1

    :cond_0
    return v6

    :cond_1
    const-string/jumbo v2, "*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    if-eqz p1, :cond_5

    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_8

    aget-char v0, v1, v2

    if-lt v0, v7, :cond_3

    if-le v0, v8, :cond_4

    :cond_3
    return v6

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    array-length v4, v1

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_8

    aget-char v0, v1, v2

    const/16 v5, 0x30

    if-lt v0, v5, :cond_6

    const/16 v5, 0x39

    if-le v0, v5, :cond_7

    if-ge v0, v7, :cond_7

    :cond_6
    return v6

    :cond_7
    if-gt v0, v8, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    return v3
.end method

.method public static mapEquivalents(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lsun/util/locale/LocaleMatcher;->mapEquivalents(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lsun/util/locale/LocaleMatcher;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Locale$LanguageRange;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Locale$LanguageRange;->mapEquivalents(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Ljava/util/Locale$LanguageRange;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/Locale$LanguageRange;

    iget v3, p0, Ljava/util/Locale$LanguageRange;->hash:I

    iget v4, v0, Ljava/util/Locale$LanguageRange;->hash:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Ljava/util/Locale$LanguageRange;->range:Ljava/lang/String;

    iget-object v4, v0, Ljava/util/Locale$LanguageRange;->range:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v4, p0, Ljava/util/Locale$LanguageRange;->weight:D

    iget-wide v6, v0, Ljava/util/Locale$LanguageRange;->weight:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getRange()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/Locale$LanguageRange;->range:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()D
    .locals 2

    iget-wide v0, p0, Ljava/util/Locale$LanguageRange;->weight:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    iget v3, p0, Ljava/util/Locale$LanguageRange;->hash:I

    if-nez v3, :cond_0

    const/16 v2, 0x11

    iget-object v3, p0, Ljava/util/Locale$LanguageRange;->range:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/lit16 v2, v3, 0x275

    iget-wide v4, p0, Ljava/util/Locale$LanguageRange;->weight:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    mul-int/lit8 v3, v2, 0x25

    const/16 v4, 0x20

    ushr-long v4, v0, v4

    xor-long/2addr v4, v0

    long-to-int v4, v4

    add-int v2, v3, v4

    iput v2, p0, Ljava/util/Locale$LanguageRange;->hash:I

    :cond_0
    iget v3, p0, Ljava/util/Locale$LanguageRange;->hash:I

    return v3
.end method
