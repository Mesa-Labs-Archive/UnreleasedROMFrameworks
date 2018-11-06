.class final Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceValuesTask"
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
.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask",
            "<TK;TV;TU;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction",
            "<-TU;-TU;+TU;>;"
        }
    .end annotation
.end field

.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask",
            "<TK;TV;TU;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function",
            "<-TV;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
            "<TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask",
            "<TK;TV;TU;>;",
            "Ljava/util/function/Function",
            "<-TV;+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TU;-TU;+TU;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;

    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->transformer:Ljava/util/function/Function;

    iput-object p8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->reducer:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->transformer:Ljava/util/function/Function;

    if-eqz v8, :cond_7

    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->reducer:Ljava/util/function/BiFunction;

    if-eqz v9, :cond_7

    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->baseIndex:I

    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->batch:I

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->baseLimit:I

    add-int v1, v5, v11

    ushr-int/lit8 v4, v1, 0x1

    if-le v4, v11, :cond_0

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->addToPendingCount(I)V

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;

    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->batch:I

    ushr-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->batch:I

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->baseLimit:I

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v12

    if-eqz v12, :cond_3

    iget-object v1, v12, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v8, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_1

    if-nez v13, :cond_2

    move-object/from16 v13, v18

    goto :goto_1

    :cond_2
    move-object/from16 v0, v18

    invoke-interface {v9, v13, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iput-object v13, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->result:Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v10

    :goto_2
    if-eqz v10, :cond_7

    move-object/from16 v16, v10

    check-cast v16, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;

    move-object/from16 v0, v16

    iget-object v14, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;

    :goto_3
    if-eqz v14, :cond_6

    iget-object v15, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->result:Ljava/lang/Object;

    if-eqz v15, :cond_4

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    :goto_4
    move-object/from16 v0, v16

    iput-object v15, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->result:Ljava/lang/Object;

    :cond_4
    iget-object v14, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;

    move-object/from16 v0, v16

    iput-object v14, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;

    goto :goto_3

    :cond_5
    move-object/from16 v0, v17

    invoke-interface {v9, v0, v15}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    goto :goto_4

    :cond_6
    invoke-virtual {v10}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v10

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->result:Ljava/lang/Object;

    return-object v0
.end method
