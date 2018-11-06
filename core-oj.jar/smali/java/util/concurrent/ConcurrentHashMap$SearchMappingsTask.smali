.class final Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SearchMappingsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
        "<TK;TV;TU;>;"
    }
.end annotation


# instance fields
.field final result:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<TU;>;"
        }
    .end annotation
.end field

.field final searchFunction:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiFunction;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
            "<TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TU;>;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<TU;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->searchFunction:Ljava/util/function/BiFunction;

    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 12

    const/4 v11, 0x0

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->searchFunction:Ljava/util/function/BiFunction;

    if-eqz v6, :cond_2

    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v7, :cond_2

    iget v8, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->baseIndex:I

    :goto_0
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->batch:I

    if-lez v0, :cond_1

    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->baseLimit:I

    add-int v0, v4, v8

    ushr-int/lit8 v3, v0, 0x1

    if-le v3, v8, :cond_1

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->addToPendingCount(I)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->batch:I

    ushr-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->batch:I

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->baseLimit:I

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiFunction;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v9

    if-nez v9, :cond_3

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->propagateCompletion()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v1, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v6, v0, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v7, v11, v10}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->quietlyCompleteRoot()V

    goto :goto_1
.end method

.method public final getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
