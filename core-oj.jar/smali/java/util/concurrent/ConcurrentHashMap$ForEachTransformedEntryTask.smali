.class final Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachTransformedEntryTask"
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
            "<-TU;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
            "<TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/function/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+TU;>;",
            "Ljava/util/function/Consumer",
            "<-TU;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->transformer:Ljava/util/function/Function;

    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->action:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 11

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->transformer:Ljava/util/function/Function;

    if-eqz v6, :cond_2

    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->action:Ljava/util/function/Consumer;

    if-eqz v7, :cond_2

    iget v8, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->baseIndex:I

    :goto_0
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->batch:I

    if-lez v0, :cond_0

    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->baseLimit:I

    add-int v0, v4, v8

    ushr-int/lit8 v3, v0, 0x1

    if-le v3, v8, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->addToPendingCount(I)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->batch:I

    ushr-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->batch:I

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->baseLimit:I

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-interface {v6, v9}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface {v7, v10}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->propagateCompletion()V

    :cond_2
    return-void
.end method
