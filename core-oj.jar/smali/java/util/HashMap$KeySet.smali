.class final Ljava/util/HashMap$KeySet;
.super Ljava/util/AbstractSet;
.source "HashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Ljava/util/HashMap$KeySet;->this$0:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Ljava/util/HashMap$KeySet;->this$0:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Ljava/util/HashMap$KeySet;->this$0:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    iget-object v4, p0, Ljava/util/HashMap$KeySet;->this$0:Ljava/util/HashMap;

    iget v4, v4, Ljava/util/HashMap;->size:I

    if-lez v4, :cond_3

    iget-object v4, p0, Ljava/util/HashMap$KeySet;->this$0:Ljava/util/HashMap;

    iget-object v3, v4, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    if-eqz v3, :cond_3

    iget-object v4, p0, Ljava/util/HashMap$KeySet;->this$0:Ljava/util/HashMap;

    iget v2, v4, Ljava/util/HashMap;->modCount:I

    const/4 v1, 0x0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Ljava/util/HashMap$KeySet;->this$0:Ljava/util/HashMap;

    iget v4, v4, Ljava/util/HashMap;->modCount:I

    if-ne v4, v2, :cond_2

    aget-object v0, v3, v1

    :goto_1
    if-eqz v0, :cond_1

    iget-object v4, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, v0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Ljava/util/HashMap$KeySet;->this$0:Ljava/util/HashMap;

    iget v4, v4, Ljava/util/HashMap;->modCount:I

    if-eq v4, v2, :cond_3

    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    :cond_3
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap$KeyIterator;

    iget-object v1, p0, Ljava/util/HashMap$KeySet;->this$0:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap$KeyIterator;-><init>(Ljava/util/HashMap;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Ljava/util/HashMap$KeySet;->this$0:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return v5

    :cond_0
    move v5, v4

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Ljava/util/HashMap$KeySet;->this$0:Ljava/util/HashMap;

    iget v0, v0, Ljava/util/HashMap;->size:I

    return v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TK;>;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/util/HashMap$KeySpliterator;

    iget-object v1, p0, Ljava/util/HashMap$KeySet;->this$0:Ljava/util/HashMap;

    const/4 v3, -0x1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/HashMap$KeySpliterator;-><init>(Ljava/util/HashMap;IIII)V

    return-object v0
.end method
