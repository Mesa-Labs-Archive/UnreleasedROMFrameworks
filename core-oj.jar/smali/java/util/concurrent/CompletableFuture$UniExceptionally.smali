.class final Ljava/util/concurrent/CompletableFuture$UniExceptionally;
.super Ljava/util/concurrent/CompletableFuture$UniCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UniExceptionally"
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
.field fn:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function",
            "<-",
            "Ljava/lang/Throwable;",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;",
            "Ljava/util/function/Function",
            "<-",
            "Ljava/lang/Throwable;",
            "+TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture$UniCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    iput-object p3, p0, Ljava/util/concurrent/CompletableFuture$UniExceptionally;->fn:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method final tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture$UniExceptionally;->dep:Ljava/util/concurrent/CompletableFuture;

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniExceptionally;->src:Ljava/util/concurrent/CompletableFuture;

    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture$UniExceptionally;->fn:Ljava/util/function/Function;

    invoke-virtual {v1, v0, v2, p0}, Ljava/util/concurrent/CompletableFuture;->uniExceptionally(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$UniExceptionally;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    return-object v3

    :cond_1
    iput-object v3, p0, Ljava/util/concurrent/CompletableFuture$UniExceptionally;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object v3, p0, Ljava/util/concurrent/CompletableFuture$UniExceptionally;->src:Ljava/util/concurrent/CompletableFuture;

    iput-object v3, p0, Ljava/util/concurrent/CompletableFuture$UniExceptionally;->fn:Ljava/util/function/Function;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/CompletableFuture;->postFire(Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    return-object v2
.end method
