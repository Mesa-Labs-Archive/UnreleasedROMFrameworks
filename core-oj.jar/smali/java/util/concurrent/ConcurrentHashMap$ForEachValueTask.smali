.class final Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachValueTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
        "<TK;TV;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final action:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
            "<TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/function/Consumer",
            "<-TV;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->action:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 9

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->action:Ljava/util/function/Consumer;

    if-eqz v6, :cond_2

    iget v7, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->baseIndex:I

    :goto_0
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->batch:I

    if-lez v0, :cond_0

    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->baseLimit:I

    add-int v0, v4, v7

    ushr-int/lit8 v3, v0, 0x1

    if-le v3, v7, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->addToPendingCount(I)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->batch:I

    ushr-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->batch:I

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->baseLimit:I

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v0, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v6, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->propagateCompletion()V

    :cond_2
    return-void
.end method
