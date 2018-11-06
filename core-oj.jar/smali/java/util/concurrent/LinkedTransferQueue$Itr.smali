.class final Ljava/util/concurrent/LinkedTransferQueue$Itr;
.super Ljava/lang/Object;
.source "LinkedTransferQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedTransferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field private lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field final synthetic this$0:Ljava/util/concurrent/LinkedTransferQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/LinkedTransferQueue;)V
    .locals 1

    iput-object p1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue$Itr;->advance(Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    return-void
.end method

.method private advance(Ljava/util/concurrent/LinkedTransferQueue$Node;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    iput-object v5, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

    :cond_0
    :goto_0
    iput-object p1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v4, p1

    :goto_1
    if-nez v4, :cond_5

    iget-object v7, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    iget-object v6, v7, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    :goto_2
    if-nez v6, :cond_6

    :cond_1
    iput-object v8, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

    iput-object v8, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    return-void

    :cond_2
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    iput-object v8, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

    goto :goto_0

    :cond_4
    :goto_3
    iget-object v6, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v6, :cond_0

    if-eq v6, v0, :cond_0

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v3, v6, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v3, :cond_0

    if-eq v3, v6, :cond_0

    invoke-virtual {v0, v6, v3}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    goto :goto_3

    :cond_5
    iget-object v6, v4, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    goto :goto_2

    :cond_6
    if-ne v6, v4, :cond_7

    const/4 v4, 0x0

    goto :goto_1

    :cond_7
    iget-object v1, v6, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    iget-boolean v7, v6, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v7, :cond_8

    if-eqz v1, :cond_9

    if-eq v1, v6, :cond_9

    move-object v2, v1

    iput-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    iput-object v6, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

    return-void

    :cond_8
    if-eqz v1, :cond_1

    :cond_9
    if-nez v4, :cond_a

    move-object v4, v6

    goto :goto_1

    :cond_a
    iget-object v3, v6, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v3, :cond_1

    if-ne v6, v3, :cond_b

    const/4 v4, 0x0

    goto :goto_1

    :cond_b
    invoke-virtual {v4, v6, v3}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    goto :goto_1
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-nez v1, :cond_0

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedTransferQueue$Itr;->advance(Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    return-object v0
.end method

.method public final remove()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    iput-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->tryMatchData()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/LinkedTransferQueue;->unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    :cond_1
    return-void
.end method
