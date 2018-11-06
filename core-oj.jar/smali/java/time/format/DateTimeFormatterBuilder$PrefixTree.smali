.class Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrefixTree"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;,
        Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;
    }
.end annotation


# instance fields
.field protected c0:C

.field protected child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

.field protected key:Ljava/lang/String;

.field protected sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

.field protected value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    iput-object p2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    iput-object p3, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0xffff

    iput-char v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-void
.end method

.method private add0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->prefixLength(Ljava/lang/String;)I

    move-result v3

    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v3, v5, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    :goto_0
    if-eqz v0, :cond_1

    iget-char v5, v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {v0, v4, p2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->add0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    return v5

    :cond_0
    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4, p2, v8}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v0

    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    iput-object v5, v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    return v9

    :cond_2
    iput-object p2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    return v9

    :cond_3
    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-virtual {p0, v5, v6, v7}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v1

    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    iput-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, p2, v8}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v2

    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    iput-object v2, v5, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    iput-object v8, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    :goto_1
    return v9

    :cond_4
    iput-object p2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    goto :goto_1
.end method

.method public static newTree(Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1, v2, v2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1, v2, v2, v2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;)V

    return-object v0
.end method

.method public static newTree(Ljava/util/Set;Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/time/format/DateTimeParseContext;",
            ")",
            "Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;"
        }
    .end annotation

    invoke-static {p1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->newTree(Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v2

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0, v0}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->add0(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private prefixLength(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->add0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public copyTree()Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->copyTree()Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v1

    iput-object v1, v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    :cond_0
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->copyTree()Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v1

    iput-object v1, v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    :cond_1
    return-object v0
.end method

.method protected isEqual(CC)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public match(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->prefixOf(Ljava/lang/CharSequence;II)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p2, v2

    if-eq p2, p3, :cond_4

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    :cond_1
    iget-char v2, v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->match(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    return-object v2

    :cond_3
    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-nez v0, :cond_1

    :cond_4
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    return-object v2
.end method

.method public match(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v3, v1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->prefixOf(Ljava/lang/CharSequence;II)Z

    move-result v4

    if-nez v4, :cond_0

    return-object v5

    :cond_0
    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v4, :cond_3

    if-eq v3, v1, :cond_3

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    :cond_1
    iget-char v4, v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->match(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    return-object v2

    :cond_2
    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-nez v0, :cond_1

    :cond_3
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    return-object v4
.end method

.method protected newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .locals 1

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-direct {v0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-object v0
.end method

.method protected prefixOf(Ljava/lang/CharSequence;II)Z
    .locals 8

    const/4 v7, 0x0

    instance-of v5, p1, Ljava/lang/String;

    if-eqz v5, :cond_0

    check-cast p1, Ljava/lang/String;

    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {p1, v5, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    return v5

    :cond_0
    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v5, p3, p2

    if-le v0, v5, :cond_1

    return v7

    :cond_1
    const/4 v3, 0x0

    move v4, v3

    move v1, v0

    move v2, p2

    :goto_0
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_3

    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 p2, v2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result v5

    if-nez v5, :cond_2

    return v7

    :cond_2
    move v4, v3

    move v1, v0

    move v2, p2

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    return v5
.end method

.method protected toKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
