.class public Lsun/nio/fs/Globs;
.super Ljava/lang/Object;
.source "Globs.java"


# static fields
.field private static EOL:C = '\u0000'

.field private static final globMetaChars:Ljava/lang/String; = "\\*?[{"

.field private static final regexMetaChars:Ljava/lang/String; = ".^$+{[]|()"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-char v0, Lsun/nio/fs/Globs;->EOL:C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isGlobMeta(C)Z
    .locals 2

    const-string/jumbo v0, "\\*?[{"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isRegexMeta(C)Z
    .locals 2

    const-string/jumbo v0, ".^$+{[]|()"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static next(Ljava/lang/String;I)C
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    sget-char v0, Lsun/nio/fs/Globs;->EOL:C

    return v0
.end method

.method private static toRegexPattern(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 11

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "^"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_19

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {v0}, Lsun/nio/fs/Globs;->isRegexMeta(C)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v8, 0x5c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v3, v8, :cond_1

    new-instance v8, Ljava/util/regex/PatternSyntaxException;

    const-string/jumbo v9, "No character to escape"

    add-int/lit8 v10, v3, -0x1

    invoke-direct {v8, v9, p0, v10}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    :cond_1
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lsun/nio/fs/Globs;->isGlobMeta(C)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v6}, Lsun/nio/fs/Globs;->isRegexMeta(C)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    const/16 v8, 0x5c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_1
    if-eqz p1, :cond_4

    const-string/jumbo v8, "\\\\"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v2, v3

    goto :goto_0

    :cond_4
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_2
    if-eqz p1, :cond_7

    const-string/jumbo v8, "[[^\\\\]&&["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-static {p0, v3}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v8

    const/16 v9, 0x5e

    if-ne v8, v9, :cond_8

    const-string/jumbo v8, "\\^"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    :cond_5
    :goto_3
    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_6

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x5d

    if-ne v0, v8, :cond_9

    move v2, v3

    :cond_6
    const/16 v8, 0x5d

    if-eq v0, v8, :cond_12

    new-instance v8, Ljava/util/regex/PatternSyntaxException;

    const-string/jumbo v9, "Missing \']"

    add-int/lit8 v10, v2, -0x1

    invoke-direct {v8, v9, p0, v10}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    :cond_7
    const-string/jumbo v8, "[[^/]&&["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    invoke-static {p0, v3}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v8

    const/16 v9, 0x21

    if-ne v8, v9, :cond_1b

    const/16 v8, 0x5e

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    :goto_5
    invoke-static {p0, v2}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_5

    const/16 v8, 0x2d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    const/16 v8, 0x2f

    if-eq v0, v8, :cond_a

    if-eqz p1, :cond_b

    const/16 v8, 0x5c

    if-ne v0, v8, :cond_b

    :cond_a
    new-instance v8, Ljava/util/regex/PatternSyntaxException;

    const-string/jumbo v9, "Explicit \'name separator\' in class"

    add-int/lit8 v10, v3, -0x1

    invoke-direct {v8, v9, p0, v10}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    :cond_b
    const/16 v8, 0x5c

    if-eq v0, v8, :cond_c

    const/16 v8, 0x5b

    if-ne v0, v8, :cond_e

    :cond_c
    :goto_6
    const/16 v8, 0x5c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v8, 0x2d

    if-ne v0, v8, :cond_11

    if-nez v1, :cond_f

    new-instance v8, Ljava/util/regex/PatternSyntaxException;

    const-string/jumbo v9, "Invalid range"

    add-int/lit8 v10, v3, -0x1

    invoke-direct {v8, v9, p0, v10}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    :cond_e
    const/16 v8, 0x26

    if-ne v0, v8, :cond_d

    invoke-static {p0, v3}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v8

    const/16 v9, 0x26

    if-ne v8, v9, :cond_d

    goto :goto_6

    :cond_f
    add-int/lit8 v2, v3, 0x1

    invoke-static {p0, v3}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v0

    sget-char v8, Lsun/nio/fs/Globs;->EOL:C

    if-eq v0, v8, :cond_6

    const/16 v8, 0x5d

    if-eq v0, v8, :cond_6

    if-ge v0, v5, :cond_10

    new-instance v8, Ljava/util/regex/PatternSyntaxException;

    const-string/jumbo v9, "Invalid range"

    add-int/lit8 v10, v2, -0x3

    invoke-direct {v8, v9, p0, v10}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    :cond_10
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_11
    const/4 v1, 0x1

    move v5, v0

    move v2, v3

    goto/16 :goto_4

    :cond_12
    const-string/jumbo v8, "]]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :sswitch_3
    if-eqz v4, :cond_13

    new-instance v8, Ljava/util/regex/PatternSyntaxException;

    const-string/jumbo v9, "Cannot nest groups"

    add-int/lit8 v10, v3, -0x1

    invoke-direct {v8, v9, p0, v10}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    :cond_13
    const-string/jumbo v8, "(?:(?:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    move v2, v3

    goto/16 :goto_0

    :sswitch_4
    if-eqz v4, :cond_14

    const-string/jumbo v8, "))"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :goto_7
    move v2, v3

    goto/16 :goto_0

    :cond_14
    const/16 v8, 0x7d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    :sswitch_5
    if-eqz v4, :cond_15

    const-string/jumbo v8, ")|(?:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    move v2, v3

    goto/16 :goto_0

    :cond_15
    const/16 v8, 0x2c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :sswitch_6
    invoke-static {p0, v3}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v8

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_16

    const-string/jumbo v8, ".*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    goto/16 :goto_0

    :cond_16
    if-eqz p1, :cond_17

    const-string/jumbo v8, "[^\\\\]*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v8, "[^/]*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    goto/16 :goto_0

    :sswitch_7
    if-eqz p1, :cond_18

    const-string/jumbo v8, "[^\\\\]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    move v2, v3

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v8, "[^/]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_19
    if-eqz v4, :cond_1a

    new-instance v8, Ljava/util/regex/PatternSyntaxException;

    const-string/jumbo v9, "Missing \'}"

    add-int/lit8 v10, v2, -0x1

    invoke-direct {v8, v9, p0, v10}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    :cond_1a
    const/16 v8, 0x24

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_1b
    move v2, v3

    goto/16 :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_6
        0x2c -> :sswitch_5
        0x2f -> :sswitch_1
        0x3f -> :sswitch_7
        0x5b -> :sswitch_2
        0x5c -> :sswitch_0
        0x7b -> :sswitch_3
        0x7d -> :sswitch_4
    .end sparse-switch
.end method

.method static toUnixRegexPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsun/nio/fs/Globs;->toRegexPattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static toWindowsRegexPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lsun/nio/fs/Globs;->toRegexPattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
