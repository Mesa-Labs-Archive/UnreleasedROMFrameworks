.class Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;
.super Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LENIENT"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;)V

    return-void
.end method

.method private isLenientChar(C)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-eq p1, v1, :cond_0

    const/16 v1, 0x5f

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x2f

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public match(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x0

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v9, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->key:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v3, 0x0

    move v4, v3

    move v7, v6

    :goto_0
    if-ge v4, v5, :cond_2

    if-ge v7, v1, :cond_2

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-direct {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->isLenientChar(C)Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    :cond_0
    iget-object v9, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->key:Ljava/lang/String;

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v6, v7, 0x1

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-virtual {p0, v9, v10}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->isEqual(CC)Z

    move-result v9

    if-nez v9, :cond_1

    return-object v11

    :cond_1
    move v4, v3

    move v7, v6

    goto :goto_0

    :cond_2
    if-eq v4, v5, :cond_3

    return-object v11

    :cond_3
    iget-object v9, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v9, :cond_7

    if-eq v7, v1, :cond_7

    move v8, v7

    :goto_1
    if-ge v8, v1, :cond_4

    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-direct {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->isLenientChar(C)Z

    move-result v9

    if-eqz v9, :cond_4

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    if-ge v8, v1, :cond_7

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    :cond_5
    iget-char v9, v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-virtual {p0, v9, v10}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->isEqual(CC)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p2, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->match(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    return-object v2

    :cond_6
    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-nez v0, :cond_5

    :cond_7
    invoke-virtual {p2, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    iget-object v9, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->value:Ljava/lang/String;

    return-object v9
.end method

.method protected newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;
    .locals 1

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;

    invoke-direct {v0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-object v0
.end method

.method protected bridge synthetic newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;

    move-result-object v0

    return-object v0
.end method

.method protected toKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->isLenientChar(C)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->isLenientChar(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method
