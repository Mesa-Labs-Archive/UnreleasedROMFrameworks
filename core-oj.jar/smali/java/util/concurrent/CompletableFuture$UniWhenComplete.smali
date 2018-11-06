.class final Ljava/util/concurrent/CompletableFuture$UniWhenComplete;
.super Ljava/util/concurrent/CompletableFuture$UniCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UniWhenComplete"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CompletableFuture$UniCompletion",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field fn:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer",
            "<-TT;-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture$UniCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    iput-object p4, p0, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;->fn:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method final tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;->dep:Ljava/util/concurrent/CompletableFuture;

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;->src:Ljava/util/concurrent/CompletableFuture;

    iget-object v4, p0, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;->fn:Ljava/util/function/BiConsumer;

    if-lez p1, :cond_1

    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v0, v4, v2}, Ljava/util/concurrent/CompletableFuture;->uniWhenComplete(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture$UniWhenComplete;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :cond_0
    return-object v3

    :cond_1
    move-object v2, p0

    goto :goto_0

    :cond_2
    iput-object v3, p0, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object v3, p0, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;->src:Ljava/util/concurrent/CompletableFuture;

    iput-object v3, p0, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;->fn:Ljava/util/function/BiConsumer;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/CompletableFuture;->postFire(Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    return-object v2
.end method
