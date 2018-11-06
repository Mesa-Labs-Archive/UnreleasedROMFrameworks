.class final Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceKeysToDoubleTask"
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
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final basis:D

.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/DoubleBinaryOperator;

.field result:D

.field rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/ToDoubleFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToDoubleFunction",
            "<-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
            "<TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask",
            "<TK;TV;>;",
            "Ljava/util/function/ToDoubleFunction",
            "<-TK;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->transformer:Ljava/util/function/ToDoubleFunction;

    iput-wide p8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->basis:D

    iput-object p10, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->reducer:Ljava/util/function/DoubleBinaryOperator;

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->transformer:Ljava/util/function/ToDoubleFunction;

    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->reducer:Ljava/util/function/DoubleBinaryOperator;

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-wide v10, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->basis:D

    move-object/from16 v0, p0

    iget v14, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->baseIndex:I

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->batch:I

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->baseLimit:I

    add-int v2, v6, v14

    ushr-int/lit8 v5, v2, 0x1

    if-le v5, v14, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->addToPendingCount(I)V

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->batch:I

    ushr-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->batch:I

    move-object/from16 v0, p0

    iput v5, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->baseLimit:I

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v12}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v15

    if-eqz v15, :cond_1

    iget-object v2, v15, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v9, v2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-interface {v12, v10, v11, v2, v3}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v10

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iput-wide v10, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->result:D

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v13

    :goto_2
    if-eqz v13, :cond_3

    move-object/from16 v17, v13

    check-cast v17, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    move-object/from16 v16, v0

    :goto_3
    if-eqz v16, :cond_2

    move-object/from16 v0, v17

    iget-wide v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->result:D

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->result:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-interface {v12, v2, v3, v0, v1}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v2

    move-object/from16 v0, v17

    iput-wide v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->result:D

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    goto :goto_3

    :cond_2
    invoke-virtual {v13}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v13

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final getRawResult()Ljava/lang/Double;
    .locals 2

    iget-wide v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->result:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->getRawResult()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
