.class final Ljava/util/concurrent/CompletableFuture$OrAccept;
.super Ljava/util/concurrent/CompletableFuture$BiCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OrAccept"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:TT;>",
        "Ljava/util/concurrent/CompletableFuture$BiCompletion",
        "<TT;TU;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field fn:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/CompletableFuture$BiCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    iput-object p5, p0, Ljava/util/concurrent/CompletableFuture$OrAccept;->fn:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method final tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture$OrAccept;->dep:Ljava/util/concurrent/CompletableFuture;

    if-eqz v2, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$OrAccept;->src:Ljava/util/concurrent/CompletableFuture;

    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture$OrAccept;->snd:Ljava/util/concurrent/CompletableFuture;

    iget-object v5, p0, Ljava/util/concurrent/CompletableFuture$OrAccept;->fn:Ljava/util/function/Consumer;

    if-lez p1, :cond_1

    move-object v3, v4

    :goto_0
    invoke-virtual {v2, v0, v1, v5, v3}, Ljava/util/concurrent/CompletableFuture;->orAccept(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture$OrAccept;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    :cond_0
    return-object v4

    :cond_1
    move-object v3, p0

    goto :goto_0

    :cond_2
    iput-object v4, p0, Ljava/util/concurrent/CompletableFuture$OrAccept;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object v4, p0, Ljava/util/concurrent/CompletableFuture$OrAccept;->src:Ljava/util/concurrent/CompletableFuture;

    iput-object v4, p0, Ljava/util/concurrent/CompletableFuture$OrAccept;->snd:Ljava/util/concurrent/CompletableFuture;

    iput-object v4, p0, Ljava/util/concurrent/CompletableFuture$OrAccept;->fn:Ljava/util/function/Consumer;

    invoke-virtual {v2, v0, v1, p1}, Ljava/util/concurrent/CompletableFuture;->postFire(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    return-object v3
.end method
