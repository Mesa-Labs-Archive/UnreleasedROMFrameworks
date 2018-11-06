.class abstract Ljava/util/HashMap$HashIterator;
.super Ljava/lang/Object;
.source "HashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "HashIterator"
.end annotation


# instance fields
.field current:Ljava/util/HashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field expectedModCount:I

.field index:I

.field next:Ljava/util/HashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v1, p1, Ljava/util/HashMap;->modCount:I

    iput v1, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    iget-object v0, p1, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    iput-object v2, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$Node;

    iput-object v2, p0, Ljava/util/HashMap$HashIterator;->current:Ljava/util/HashMap$Node;

    iput v3, p0, Ljava/util/HashMap$HashIterator;->index:I

    if-eqz v0, :cond_1

    iget v1, p1, Ljava/util/HashMap;->size:I

    if-lez v1, :cond_1

    :cond_0
    iget v1, p0, Ljava/util/HashMap$HashIterator;->index:I

    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget v1, p0, Ljava/util/HashMap$HashIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/HashMap$HashIterator;->index:I

    aget-object v1, v0, v1

    iput-object v1, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$Node;

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final nextNode()Ljava/util/HashMap$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$Node;

    iget-object v2, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    iget v2, v2, Ljava/util/HashMap;->modCount:I

    iget v3, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    :cond_0
    if-nez v0, :cond_1

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    :cond_1
    iput-object v0, p0, Ljava/util/HashMap$HashIterator;->current:Ljava/util/HashMap$Node;

    iget-object v2, v0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    iput-object v2, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$Node;

    if-nez v2, :cond_3

    iget-object v2, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    iget-object v1, v2, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    if-eqz v1, :cond_3

    :cond_2
    iget v2, p0, Ljava/util/HashMap$HashIterator;->index:I

    array-length v3, v1

    if-ge v2, v3, :cond_3

    iget v2, p0, Ljava/util/HashMap$HashIterator;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/HashMap$HashIterator;->index:I

    aget-object v2, v1, v2

    iput-object v2, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$Node;

    if-eqz v2, :cond_2

    :cond_3
    return-object v0
.end method

.method public final remove()V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v6, p0, Ljava/util/HashMap$HashIterator;->current:Ljava/util/HashMap$Node;

    if-nez v6, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    iget v0, v0, Ljava/util/HashMap;->modCount:I

    iget v1, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    iput-object v3, p0, Ljava/util/HashMap$HashIterator;->current:Ljava/util/HashMap$Node;

    iget-object v2, v6, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    iget v0, v0, Ljava/util/HashMap;->modCount:I

    iput v0, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    return-void
.end method
