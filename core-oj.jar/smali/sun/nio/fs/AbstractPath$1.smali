.class Lsun/nio/fs/AbstractPath$1;
.super Ljava/lang/Object;
.source "AbstractPath.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/fs/AbstractPath;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private i:I

.field final synthetic this$0:Lsun/nio/fs/AbstractPath;


# direct methods
.method constructor <init>(Lsun/nio/fs/AbstractPath;)V
    .locals 1

    iput-object p1, p0, Lsun/nio/fs/AbstractPath$1;->this$0:Lsun/nio/fs/AbstractPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/fs/AbstractPath$1;->i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lsun/nio/fs/AbstractPath$1;->i:I

    iget-object v1, p0, Lsun/nio/fs/AbstractPath$1;->this$0:Lsun/nio/fs/AbstractPath;

    invoke-virtual {v1}, Lsun/nio/fs/AbstractPath;->getNameCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lsun/nio/fs/AbstractPath$1;->next()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/nio/file/Path;
    .locals 3

    iget v1, p0, Lsun/nio/fs/AbstractPath$1;->i:I

    iget-object v2, p0, Lsun/nio/fs/AbstractPath$1;->this$0:Lsun/nio/fs/AbstractPath;

    invoke-virtual {v2}, Lsun/nio/fs/AbstractPath;->getNameCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lsun/nio/fs/AbstractPath$1;->this$0:Lsun/nio/fs/AbstractPath;

    iget v2, p0, Lsun/nio/fs/AbstractPath$1;->i:I

    invoke-virtual {v1, v2}, Lsun/nio/fs/AbstractPath;->getName(I)Ljava/nio/file/Path;

    move-result-object v0

    iget v1, p0, Lsun/nio/fs/AbstractPath$1;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsun/nio/fs/AbstractPath$1;->i:I

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
