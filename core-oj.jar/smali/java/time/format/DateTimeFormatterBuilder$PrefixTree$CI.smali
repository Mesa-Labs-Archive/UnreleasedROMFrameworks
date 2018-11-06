.class Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;
.super Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CI"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-void
.end method


# virtual methods
.method protected isEqual(CC)Z
    .locals 1

    invoke-static {p1, p2}, Ljava/time/format/DateTimeParseContext;->charEqualsIgnoreCase(CC)Z

    move-result v0

    return v0
.end method

.method protected newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;
    .locals 1

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;

    invoke-direct {v0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-object v0
.end method

.method protected bridge synthetic newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;->newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;

    move-result-object v0

    return-object v0
.end method

.method protected prefixOf(Ljava/lang/CharSequence;II)Z
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;->key:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v5, p3, p2

    if-le v0, v5, :cond_0

    return v7

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    move v1, v0

    move v2, p2

    :goto_0
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_2

    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;->key:Ljava/lang/String;

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 p2, v2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;->isEqual(CC)Z

    move-result v5

    if-nez v5, :cond_1

    return v7

    :cond_1
    move v4, v3

    move v1, v0

    move v2, p2

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    return v5
.end method
