.class Ljava/util/concurrent/Helpers;
.super Ljava/lang/Object;
.source "Helpers.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static collectionToString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v5, v0

    if-nez v5, :cond_0

    const-string/jumbo v6, "[]"

    return-object v6

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v2, v0, v3

    if-ne v2, p0, :cond_1

    const-string/jumbo v4, "(this Collection)"

    :goto_1
    aput-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/util/concurrent/Helpers;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-static {v0, v5, v1}, Ljava/util/concurrent/Helpers;->toString([Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method static mapEntryToString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    invoke-static {p0}, Ljava/util/concurrent/Helpers;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1}, Ljava/util/concurrent/Helpers;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int v5, v2, v4

    add-int/lit8 v5, v5, 0x1

    new-array v0, v5, [C

    invoke-virtual {v1, v6, v2, v0, v6}, Ljava/lang/String;->getChars(II[CI)V

    const/16 v5, 0x3d

    aput-char v5, v0, v2

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v6, v4, v0, v5}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method

.method private static objectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "null"

    :cond_1
    return-object v0
.end method

.method static toString([Ljava/lang/Object;II)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    mul-int/lit8 v6, p1, 0x2

    add-int/2addr v6, p2

    new-array v0, v6, [C

    const/16 v6, 0x5b

    aput-char v6, v0, v7

    const/4 v2, 0x1

    const/4 v1, 0x0

    move v3, v2

    :goto_0
    if-ge v1, p1, :cond_0

    if-lez v1, :cond_1

    add-int/lit8 v2, v3, 0x1

    const/16 v6, 0x2c

    aput-char v6, v0, v3

    add-int/lit8 v3, v2, 0x1

    const/16 v6, 0x20

    aput-char v6, v0, v2

    move v2, v3

    :goto_1
    aget-object v5, p0, v1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v5, v7, v4, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    const/16 v6, 0x5d

    aput-char v6, v0, v3

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([C)V

    return-object v6

    :cond_1
    move v2, v3

    goto :goto_1
.end method
