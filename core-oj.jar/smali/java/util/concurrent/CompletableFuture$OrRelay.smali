.class final Ljava/util/concurrent/CompletableFuture$OrRelay;
.super Ljava/util/concurrent/CompletableFuture$BiCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OrRelay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CompletableFuture$BiCompletion",
        "<TT;TU;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture$BiCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method


# virtual methods
.method final tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture$OrRelay;->dep:Ljava/util/concurrent/CompletableFuture;

    if-eqz v2, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$OrRelay;->src:Ljava/util/concurrent/CompletableFuture;

    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture$OrRelay;->snd:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/CompletableFuture;->orRelay(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    return-object v4

    :cond_1
    iput-object v4, p0, Ljava/util/concurrent/CompletableFuture$OrRelay;->src:Ljava/util/concurrent/CompletableFuture;

    iput-object v4, p0, Ljava/util/concurrent/CompletableFuture$OrRelay;->snd:Ljava/util/concurrent/CompletableFuture;

    iput-object v4, p0, Ljava/util/concurrent/CompletableFuture$OrRelay;->dep:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v2, v0, v1, p1}, Ljava/util/concurrent/CompletableFuture;->postFire(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    return-object v3
.end method
