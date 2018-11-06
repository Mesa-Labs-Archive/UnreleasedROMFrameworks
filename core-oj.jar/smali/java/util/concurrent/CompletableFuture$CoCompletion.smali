.class final Ljava/util/concurrent/CompletableFuture$CoCompletion;
.super Ljava/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CoCompletion"
.end annotation


# instance fields
.field base:Ljava/util/concurrent/CompletableFuture$BiCompletion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture$BiCompletion",
            "<***>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/CompletableFuture$BiCompletion;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture$BiCompletion",
            "<***>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava/util/concurrent/CompletableFuture$BiCompletion;

    return-void
.end method


# virtual methods
.method final isLive()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava/util/concurrent/CompletableFuture$BiCompletion;

    if-eqz v0, :cond_0

    iget-object v2, v0, Ljava/util/concurrent/CompletableFuture$BiCompletion;->dep:Ljava/util/concurrent/CompletableFuture;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method final tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava/util/concurrent/CompletableFuture$BiCompletion;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture$BiCompletion;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-object v2

    :cond_1
    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava/util/concurrent/CompletableFuture$BiCompletion;

    return-object v1
.end method
