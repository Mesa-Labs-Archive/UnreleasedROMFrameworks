.class final Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceValuesToIntTask"
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

.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/IntBinaryOperator;

.field result:I

.field rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/ToIntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToIntFunction",
            "<-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
            "<TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask",
            "<TK;TV;>;",
            "Ljava/util/function/ToIntFunction",
            "<-TV;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->transformer:Ljava/util/function/ToIntFunction;

    iput p8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->basis:I

    iput-object p9, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 15

    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->transformer:Ljava/util/function/ToIntFunction;

    if-eqz v7, :cond_3

    iget-object v9, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    if-eqz v9, :cond_3

    iget v8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->basis:I

    iget v11, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->baseIndex:I

    :goto_0
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->batch:I

    if-lez v0, :cond_0

    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->baseLimit:I

    add-int v0, v4, v11

    ushr-int/lit8 v3, v0, 0x1

    if-le v3, v11, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->addToPendingCount(I)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->batch:I

    ushr-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->batch:I

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->baseLimit:I

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v12

    if-eqz v12, :cond_1

    iget-object v0, v12, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v7, v0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v9, v8, v0}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v8

    goto :goto_1

    :cond_1
    iput v8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->result:I

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v10

    :goto_2
    if-eqz v10, :cond_3

    move-object v14, v10

    check-cast v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    iget-object v13, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    :goto_3
    if-eqz v13, :cond_2

    iget v0, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->result:I

    iget v1, v13, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->result:I

    invoke-interface {v9, v0, v1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    iput v0, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->result:I

    iget-object v13, v13, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    iput-object v13, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

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

    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->result:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->getRawResult()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
