.class final Ljava/util/concurrent/CompletableFuture$UniHandle;
.super Ljava/util/concurrent/CompletableFuture$UniCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UniHandle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CompletableFuture$UniCompletion",
        "<TT;TV;>;"
    }
.end annotation


# instance fields
.field fn:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction",
            "<-TT;",
            "Ljava/lang/Throwable;",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;",
            "Ljava/util/function/BiFunction",
            "<-TT;",
            "Ljava/lang/Throwable;",
            "+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture$UniCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    iput-object p4, p0, Ljava/util/concurrent/CompletableFuture$UniHandle;->fn:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method final tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture$UniHandle;->dep:Ljava/util/concurrent/CompletableFuture;

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniHandle;->src:Ljava/util/concurrent/CompletableFuture;

    iget-object v4, p0, Ljava/util/concurrent/CompletableFuture$UniHandle;->fn:Ljava/util/function/BiFunction;

    if-lez p1, :cond_1

    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v0, v4, v2}, Ljava/util/concurrent/CompletableFuture;->uniHandle(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture$UniHandle;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :cond_0
    return-object v3

    :cond_1
    move-object v2, p0

    goto :goto_0

    :cond_2
    iput-object v3, p0, Ljava/util/concurrent/CompletableFuture$UniHandle;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object v3, p0, Ljava/util/concurrent/CompletableFuture$UniHandle;->src:Ljava/util/concurrent/CompletableFuture;

    iput-object v3, p0, Ljava/util/concurrent/CompletableFuture$UniHandle;->fn:Ljava/util/function/BiFunction;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/CompletableFuture;->postFire(Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    return-object v2
.end method
