.class final Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceValuesToLongTask"
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final basis:J

.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/LongBinaryOperator;

.field result:J

.field rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/ToLongFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToLongFunction",
            "<-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
            "<TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask",
            "<TK;TV;>;",
            "Ljava/util/function/ToLongFunction",
            "<-TV;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;

    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->transformer:Ljava/util/function/ToLongFunction;

    iput-wide p8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->basis:J

    iput-object p10, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->reducer:Ljava/util/function/LongBinaryOperator;

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->transformer:Ljava/util/function/ToLongFunction;

    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->reducer:Ljava/util/function/LongBinaryOperator;

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-wide v10, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->basis:J

    move-object/from16 v0, p0

    iget v14, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->baseIndex:I

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->batch:I

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->baseLimit:I

    add-int v2, v6, v14

    ushr-int/lit8 v5, v2, 0x1

    if-le v5, v14, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->addToPendingCount(I)V

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;

    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->batch:I

    ushr-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->batch:I

    move-object/from16 v0, p0

    iput v5, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->baseLimit:I

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v12}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v15

    if-eqz v15, :cond_1

    iget-object v2, v15, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v9, v2}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-interface {v12, v10, v11, v2, v3}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v10

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iput-wide v10, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->result:J

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v13

    :goto_2
    if-eqz v13, :cond_3

    move-object/from16 v17, v13

    check-cast v17, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;

    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;

    move-object/from16 v16, v0

    :goto_3
    if-eqz v16, :cond_2

    move-object/from16 v0, v17

    iget-wide v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->result:J

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->result:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-interface {v12, v2, v3, v0, v1}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v2

    move-object/from16 v0, v17

    iput-wide v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->result:J

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;

    goto :goto_3

    :cond_2
    invoke-virtual {v13}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v13

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final getRawResult()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->result:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->getRawResult()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
