.class final Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReduceEntriesTask"
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
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field result:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;Ljava/util/function/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
            "<TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask",
            "<TK;TV;>;",
            "Ljava/util/function/BiFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->reducer:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->reducer:Ljava/util/function/BiFunction;

    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget v10, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->baseIndex:I

    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->batch:I

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->baseLimit:I

    add-int v1, v5, v10

    ushr-int/lit8 v4, v1, 0x1

    if-le v4, v10, :cond_0

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->addToPendingCount(I)V

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->batch:I

    ushr-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->batch:I

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->baseLimit:I

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;Ljava/util/function/BiFunction;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v11

    if-eqz v11, :cond_2

    if-nez v12, :cond_1

    move-object v12, v11

    goto :goto_1

    :cond_1
    invoke-interface {v8, v12, v11}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iput-object v12, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v9

    :goto_2
    if-eqz v9, :cond_6

    move-object v15, v9

    check-cast v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    iget-object v13, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    :goto_3
    if-eqz v13, :cond_5

    iget-object v14, v13, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    if-eqz v14, :cond_3

    iget-object v0, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    :goto_4
    iput-object v14, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    :cond_3
    iget-object v13, v13, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    iput-object v13, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    goto :goto_3

    :cond_4
    move-object/from16 v0, v16

    invoke-interface {v8, v0, v14}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v14, v1

    goto :goto_4

    :cond_5
    invoke-virtual {v9}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v9

    goto :goto_2

    :cond_6
    return-void
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->getRawResult()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final getRawResult()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    return-object v0
.end method
