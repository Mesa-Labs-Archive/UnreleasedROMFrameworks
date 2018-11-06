.class Ljava/util/concurrent/ArrayBlockingQueue$Itrs;
.super Ljava/lang/Object;
.source "ArrayBlockingQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ArrayBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Itrs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;
    }
.end annotation


# static fields
.field private static final LONG_SWEEP_PROBES:I = 0x10

.field private static final SHORT_SWEEP_PROBES:I = 0x4


# instance fields
.field cycles:I

.field private head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<TE;>.Itrs.Node;"
        }
    .end annotation
.end field

.field private sweeper:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<TE;>.Itrs.Node;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/concurrent/ArrayBlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ArrayBlockingQueue;Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<TE;>.Itr;)V"
        }
    .end annotation

    iput-object p1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->register(Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V

    return-void
.end method


# virtual methods
.method doSomeSweeping(Z)V
    .locals 9

    const/4 v7, 0x0

    if-eqz p1, :cond_2

    const/16 v5, 0x10

    :goto_0
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->sweeper:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    if-nez v6, :cond_3

    const/4 v2, 0x0

    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    const/4 v4, 0x1

    :goto_1
    if-lez v5, :cond_0

    if-nez v3, :cond_5

    if-eqz v4, :cond_4

    :cond_0
    if-nez v3, :cond_1

    move-object v2, v7

    :cond_1
    iput-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->sweeper:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    return-void

    :cond_2
    const/4 v5, 0x4

    goto :goto_0

    :cond_3
    move-object v2, v6

    iget-object v3, v6, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    const/4 v4, 0x1

    :cond_5
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    iget-object v1, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_6
    const/16 v5, 0x10

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->clear()V

    iput-object v7, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    if-nez v2, :cond_7

    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    if-nez v1, :cond_8

    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object v7, v8, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    return-void

    :cond_7
    iput-object v1, v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    :cond_8
    :goto_2
    move-object v3, v1

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_9
    move-object v2, v3

    goto :goto_2
.end method

.method elementDequeued()V
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->queueIsEmpty()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->takeIndexWrapped()V

    goto :goto_0
.end method

.method queueIsEmpty()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->clear()V

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->shutdown()V

    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    goto :goto_0

    :cond_1
    iput-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object v3, v2, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    return-void
.end method

.method register(Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<TE;>.Itr;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    invoke-direct {v0, p0, p1, v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;-><init>(Ljava/util/concurrent/ArrayBlockingQueue$Itrs;Ljava/util/concurrent/ArrayBlockingQueue$Itr;Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;)V

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    return-void
.end method

.method removedAt(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    iget-object v1, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->removedAt(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->clear()V

    iput-object v5, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    if-nez v2, :cond_1

    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    :goto_1
    move-object v3, v1

    goto :goto_0

    :cond_1
    iput-object v1, v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    goto :goto_1

    :cond_2
    move-object v2, v3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    if-nez v4, :cond_4

    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object v5, v4, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    :cond_4
    return-void
.end method

.method takeIndexWrapped()V
    .locals 6

    const/4 v5, 0x0

    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    const/4 v2, 0x0

    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    iget-object v1, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->takeIndexWrapped()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->clear()V

    iput-object v5, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    if-nez v2, :cond_1

    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    :goto_1
    move-object v3, v1

    goto :goto_0

    :cond_1
    iput-object v1, v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    goto :goto_1

    :cond_2
    move-object v2, v3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    if-nez v4, :cond_4

    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object v5, v4, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    :cond_4
    return-void
.end method
