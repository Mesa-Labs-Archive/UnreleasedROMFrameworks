.class final Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceKeysToIntTask"
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final basis:I

.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/IntBinaryOperator;

.field result:I

.field rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/ToIntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToIntFunction",
            "<-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
            "<TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask",
            "<TK;TV;>;",
            "Ljava/util/function/ToIntFunction",
            "<-TK;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->transformer:Ljava/util/function/ToIntFunction;

    iput p8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->basis:I

    iput-object p9, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 15

    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->transformer:Ljava/util/function/ToIntFunction;

    if-eqz v7, :cond_3

    iget-object v9, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    if-eqz v9, :cond_3

    iget v8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->basis:I

    iget v11, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->baseIndex:I

    :goto_0
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->batch:I

    if-lez v0, :cond_0

    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->baseLimit:I

    add-int v0, v4, v11

    ushr-int/lit8 v3, v0, 0x1

    if-le v3, v11, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->addToPendingCount(I)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->batch:I

    ushr-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->batch:I

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->baseLimit:I

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v12

    if-eqz v12, :cond_1

    iget-object v0, v12, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v7, v0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v9, v8, v0}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v8

    goto :goto_1

    :cond_1
    iput v8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->result:I

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v10

    :goto_2
    if-eqz v10, :cond_3

    move-object v14, v10

    check-cast v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    iget-object v13, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    :goto_3
    if-eqz v13, :cond_2

    iget v0, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->result:I

    iget v1, v13, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->result:I

    invoke-interface {v9, v0, v1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    iput v0, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->result:I

    iget-object v13, v13, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    iput-object v13, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    goto :goto_3

    :cond_2
    invoke-virtual {v10}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v10

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final getRawResult()Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->result:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->getRawResult()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
