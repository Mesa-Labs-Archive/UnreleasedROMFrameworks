.class Ljava/lang/Integer$IntegerCache;
.super Ljava/lang/Object;
.source "Integer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerCache"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final cache:[Ljava/lang/Integer;

.field static final high:I

.field static final low:I = -0x80


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0x7f

    const-class v7, Ljava/lang/Integer$IntegerCache;

    invoke-virtual {v7}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    sput-boolean v7, Ljava/lang/Integer$IntegerCache;->-assertionsDisabled:Z

    const/16 v0, 0x7f

    const-string/jumbo v7, "java.lang.Integer.IntegerCache.high"

    invoke-static {v7}, Lsun/misc/VM;->getSavedProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v7, 0x7f

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    const v7, 0x7fffff7e

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    sput v0, Ljava/lang/Integer$IntegerCache;->high:I

    sget v7, Ljava/lang/Integer$IntegerCache;->high:I

    add-int/lit16 v7, v7, 0x80

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [Ljava/lang/Integer;

    sput-object v7, Ljava/lang/Integer$IntegerCache;->cache:[Ljava/lang/Integer;

    const/16 v3, -0x80

    const/4 v5, 0x0

    :goto_1
    sget-object v7, Ljava/lang/Integer$IntegerCache;->cache:[Ljava/lang/Integer;

    array-length v7, v7

    if-ge v5, v7, :cond_1

    sget-object v7, Ljava/lang/Integer$IntegerCache;->cache:[Ljava/lang/Integer;

    new-instance v8, Ljava/lang/Integer;

    add-int/lit8 v4, v3, 0x1

    invoke-direct {v8, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    move v3, v4

    goto :goto_1

    :cond_1
    sget-boolean v7, Ljava/lang/Integer$IntegerCache;->-assertionsDisabled:Z

    if-nez v7, :cond_2

    sget v7, Ljava/lang/Integer$IntegerCache;->high:I

    if-ge v7, v9, :cond_2

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_2
    return-void

    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
