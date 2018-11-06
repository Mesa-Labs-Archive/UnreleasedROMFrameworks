.class Ljava/nio/file/CopyMoveHelper$CopyOptions;
.super Ljava/lang/Object;
.source "CopyMoveHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/file/CopyMoveHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CopyOptions"
.end annotation


# instance fields
.field copyAttributes:Z

.field followLinks:Z

.field replaceExisting:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Ljava/nio/file/CopyMoveHelper$CopyOptions;->replaceExisting:Z

    iput-boolean v0, p0, Ljava/nio/file/CopyMoveHelper$CopyOptions;->copyAttributes:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/file/CopyMoveHelper$CopyOptions;->followLinks:Z

    return-void
.end method

.method static varargs parse([Ljava/nio/file/CopyOption;)Ljava/nio/file/CopyMoveHelper$CopyOptions;
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    new-instance v1, Ljava/nio/file/CopyMoveHelper$CopyOptions;

    invoke-direct {v1}, Ljava/nio/file/CopyMoveHelper$CopyOptions;-><init>()V

    array-length v4, p0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v0, p0, v2

    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    if-ne v0, v5, :cond_0

    iput-boolean v6, v1, Ljava/nio/file/CopyMoveHelper$CopyOptions;->replaceExisting:Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v5, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    if-ne v0, v5, :cond_1

    iput-boolean v3, v1, Ljava/nio/file/CopyMoveHelper$CopyOptions;->followLinks:Z

    goto :goto_1

    :cond_1
    sget-object v5, Ljava/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljava/nio/file/StandardCopyOption;

    if-ne v0, v5, :cond_2

    iput-boolean v6, v1, Ljava/nio/file/CopyMoveHelper$CopyOptions;->copyAttributes:Z

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_3
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' is not a recognized copy option"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    return-object v1
.end method
