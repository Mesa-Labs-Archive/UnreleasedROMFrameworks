.class public Ljava/util/concurrent/CompletableFuture;
.super Ljava/lang/Object;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Ljava/util/concurrent/CompletionStage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/CompletableFuture$AltResult;,
        Ljava/util/concurrent/CompletableFuture$AsyncRun;,
        Ljava/util/concurrent/CompletableFuture$AsyncSupply;,
        Ljava/util/concurrent/CompletableFuture$AsynchronousCompletionTask;,
        Ljava/util/concurrent/CompletableFuture$BiAccept;,
        Ljava/util/concurrent/CompletableFuture$BiApply;,
        Ljava/util/concurrent/CompletableFuture$BiCompletion;,
        Ljava/util/concurrent/CompletableFuture$BiRelay;,
        Ljava/util/concurrent/CompletableFuture$BiRun;,
        Ljava/util/concurrent/CompletableFuture$Canceller;,
        Ljava/util/concurrent/CompletableFuture$CoCompletion;,
        Ljava/util/concurrent/CompletableFuture$Completion;,
        Ljava/util/concurrent/CompletableFuture$DelayedCompleter;,
        Ljava/util/concurrent/CompletableFuture$DelayedExecutor;,
        Ljava/util/concurrent/CompletableFuture$Delayer;,
        Ljava/util/concurrent/CompletableFuture$MinimalStage;,
        Ljava/util/concurrent/CompletableFuture$OrAccept;,
        Ljava/util/concurrent/CompletableFuture$OrApply;,
        Ljava/util/concurrent/CompletableFuture$OrRelay;,
        Ljava/util/concurrent/CompletableFuture$OrRun;,
        Ljava/util/concurrent/CompletableFuture$Signaller;,
        Ljava/util/concurrent/CompletableFuture$TaskSubmitter;,
        Ljava/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;,
        Ljava/util/concurrent/CompletableFuture$Timeout;,
        Ljava/util/concurrent/CompletableFuture$UniAccept;,
        Ljava/util/concurrent/CompletableFuture$UniApply;,
        Ljava/util/concurrent/CompletableFuture$UniCompletion;,
        Ljava/util/concurrent/CompletableFuture$UniCompose;,
        Ljava/util/concurrent/CompletableFuture$UniExceptionally;,
        Ljava/util/concurrent/CompletableFuture$UniHandle;,
        Ljava/util/concurrent/CompletableFuture$UniRelay;,
        Ljava/util/concurrent/CompletableFuture$UniRun;,
        Ljava/util/concurrent/CompletableFuture$UniWhenComplete;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TT;>;",
        "Ljava/util/concurrent/CompletionStage",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final ASYNC:I = 0x1

.field private static final ASYNC_POOL:Ljava/util/concurrent/Executor;

.field static final NESTED:I = -0x1

.field private static final NEXT:J

.field static final NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

.field private static final RESULT:J

.field static final SPINS:I

.field private static final STACK:J

.field static final SYNC:I

.field private static final U:Lsun/misc/Unsafe;

.field private static final USE_COMMON_POOL:Z


# instance fields
.field volatile result:Ljava/lang/Object;

.field volatile stack:Ljava/util/concurrent/CompletableFuture$Completion;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    sput-object v2, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v2

    if-le v2, v3, :cond_1

    move v2, v3

    :goto_0
    sput-boolean v2, Ljava/util/concurrent/CompletableFuture;->USE_COMMON_POOL:Z

    sget-boolean v2, Ljava/util/concurrent/CompletableFuture;->USE_COMMON_POOL:Z

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v2

    :goto_1
    sput-object v2, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    if-le v2, v3, :cond_0

    const/16 v4, 0x100

    :cond_0
    sput v4, Ljava/util/concurrent/CompletableFuture;->SPINS:I

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    :try_start_0
    sget-object v2, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    const-class v3, Ljava/util/concurrent/CompletableFuture;

    const-string/jumbo v4, "result"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    sget-object v2, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    const-class v3, Ljava/util/concurrent/CompletableFuture;

    const-string/jumbo v4, "stack"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/CompletableFuture;->STACK:J

    sget-object v2, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    const-class v3, Ljava/util/concurrent/CompletableFuture$Completion;

    const-string/jumbo v4, "next"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/CompletableFuture;->NEXT:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;-><init>()V

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    return-void
.end method

.method public static varargs allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/concurrent/CompletableFuture;->andTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method static andTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;II)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    if-le p1, p2, :cond_1

    sget-object v5, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    iput-object v5, v3, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    add-int v5, p1, p2

    ushr-int/lit8 v4, v5, 0x1

    if-ne p1, v4, :cond_3

    aget-object v0, p0, p1

    :goto_1
    if-eqz v0, :cond_2

    if-ne p1, p2, :cond_4

    move-object v1, v0

    :goto_2
    if-nez v1, :cond_6

    :cond_2
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    :cond_3
    invoke-static {p0, p1, v4}, Ljava/util/concurrent/CompletableFuture;->andTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v4, 0x1

    if-ne p2, v5, :cond_5

    aget-object v1, p0, p2

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v4, 0x1

    invoke-static {p0, v5, p2}, Ljava/util/concurrent/CompletableFuture;->andTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    goto :goto_2

    :cond_6
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/CompletableFuture;->biRelay(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v2, Ljava/util/concurrent/CompletableFuture$BiRelay;

    invoke-direct {v2, v3, v0, v1}, Ljava/util/concurrent/CompletableFuture$BiRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/CompletableFuture;->bipush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/concurrent/CompletableFuture$BiRelay;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    goto :goto_0
.end method

.method public static varargs anyOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/concurrent/CompletableFuture;->orTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method static asyncRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v1, Ljava/util/concurrent/CompletableFuture$AsyncRun;

    invoke-direct {v1, v0, p1}, Ljava/util/concurrent/CompletableFuture$AsyncRun;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static asyncSupplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Supplier",
            "<TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v1, Ljava/util/concurrent/CompletableFuture$AsyncSupply;

    invoke-direct {v1, v0, p1}, Ljava/util/concurrent/CompletableFuture$AsyncSupply;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Supplier;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private biAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    if-nez p1, :cond_2

    invoke-virtual {v2, p0, v4, p3, v1}, Ljava/util/concurrent/CompletableFuture;->biAccept(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture$BiAccept;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v0, Ljava/util/concurrent/CompletableFuture$BiAccept;

    move-object v1, p1

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/CompletableFuture$BiAccept;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)V

    invoke-virtual {p0, v4, v0}, Ljava/util/concurrent/CompletableFuture;->bipush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture$BiAccept;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    :cond_3
    return-object v2
.end method

.method private biApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TT;-TU;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    if-nez p1, :cond_2

    invoke-virtual {v2, p0, v4, p3, v1}, Ljava/util/concurrent/CompletableFuture;->biApply(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture$BiApply;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v0, Ljava/util/concurrent/CompletableFuture$BiApply;

    move-object v1, p1

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/CompletableFuture$BiApply;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;)V

    invoke-virtual {p0, v4, v0}, Ljava/util/concurrent/CompletableFuture;->bipush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture$BiApply;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    :cond_3
    return-object v2
.end method

.method private biRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    if-nez p1, :cond_2

    invoke-virtual {v2, p0, v4, p3, v1}, Ljava/util/concurrent/CompletableFuture;->biRun(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture$BiRun;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v0, Ljava/util/concurrent/CompletableFuture$BiRun;

    move-object v1, p1

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/CompletableFuture$BiRun;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v4, v0}, Ljava/util/concurrent/CompletableFuture;->bipush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture$BiRun;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    :cond_3
    return-object v2
.end method

.method public static completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    :cond_0
    invoke-direct {v0, p0}, Ljava/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static completedStage(Ljava/lang/Object;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CompletableFuture$MinimalStage;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    :cond_0
    invoke-direct {v0, p0}, Ljava/util/concurrent/CompletableFuture$MinimalStage;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static delayedExecutor(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Executor;
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;

    sget-object v1, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static delayedExecutor(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 2

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method static encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    instance-of v1, p0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/util/concurrent/CompletionException;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    new-instance p0, Ljava/util/concurrent/CompletableFuture$AltResult;

    new-instance v1, Ljava/util/concurrent/CompletionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    :cond_0
    return-object p0
.end method

.method static encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    instance-of v1, p0, Ljava/util/concurrent/CompletionException;

    if-nez v1, :cond_1

    new-instance v0, Ljava/util/concurrent/CompletionException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :cond_0
    new-instance v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    invoke-direct {v1, p0}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    :cond_1
    instance-of v1, p1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-ne p0, v1, :cond_0

    return-object p1
.end method

.method static encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;
    .locals 2

    new-instance v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    instance-of v0, p0, Ljava/util/concurrent/CompletionException;

    if-eqz v0, :cond_0

    :goto_0
    invoke-direct {v1, p0}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletionException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    invoke-direct {v1, p0}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static failedStage(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture$MinimalStage;

    new-instance v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    invoke-direct {v1, p0}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletableFuture$MinimalStage;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V
    .locals 4

    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->NEXT:J

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private orAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;>(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;",
            "Ljava/util/function/Consumer",
            "<-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    if-nez p1, :cond_2

    invoke-virtual {v2, p0, v4, p3, v1}, Ljava/util/concurrent/CompletableFuture;->orAccept(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture$OrAccept;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v0, Ljava/util/concurrent/CompletableFuture$OrAccept;

    move-object v1, p1

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/CompletableFuture$OrAccept;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v4, v0}, Ljava/util/concurrent/CompletableFuture;->orpush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture$OrAccept;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    :cond_3
    return-object v2
.end method

.method private orApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;",
            "Ljava/util/function/Function",
            "<-TT;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    if-nez p1, :cond_2

    invoke-virtual {v2, p0, v4, p3, v1}, Ljava/util/concurrent/CompletableFuture;->orApply(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$OrApply;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v0, Ljava/util/concurrent/CompletableFuture$OrApply;

    move-object v1, p1

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/CompletableFuture$OrApply;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V

    invoke-virtual {p0, v4, v0}, Ljava/util/concurrent/CompletableFuture;->orpush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture$OrApply;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    :cond_3
    return-object v2
.end method

.method private orRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    if-nez p1, :cond_2

    invoke-virtual {v2, p0, v4, p3, v1}, Ljava/util/concurrent/CompletableFuture;->orRun(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture$OrRun;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v0, Ljava/util/concurrent/CompletableFuture$OrRun;

    move-object v1, p1

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/CompletableFuture$OrRun;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v4, v0}, Ljava/util/concurrent/CompletableFuture;->orpush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture$OrRun;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    :cond_3
    return-object v2
.end method

.method static orTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;II)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    if-gt p1, p2, :cond_5

    add-int v5, p1, p2

    ushr-int/lit8 v4, v5, 0x1

    if-ne p1, v4, :cond_1

    aget-object v0, p0, p1

    :goto_0
    if-eqz v0, :cond_0

    if-ne p1, p2, :cond_2

    move-object v1, v0

    :goto_1
    if-nez v1, :cond_4

    :cond_0
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    :cond_1
    invoke-static {p0, p1, v4}, Ljava/util/concurrent/CompletableFuture;->orTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v4, 0x1

    if-ne p2, v5, :cond_3

    aget-object v1, p0, p2

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v4, 0x1

    invoke-static {p0, v5, p2}, Ljava/util/concurrent/CompletableFuture;->orTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/CompletableFuture;->orRelay(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v2, Ljava/util/concurrent/CompletableFuture$OrRelay;

    invoke-direct {v2, v3, v0, v1}, Ljava/util/concurrent/CompletableFuture$OrRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/CompletableFuture;->orpush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/concurrent/CompletableFuture$OrRelay;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    :cond_5
    return-object v3
.end method

.method private static reportGet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    :cond_0
    instance-of v3, p0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v3, :cond_4

    check-cast p0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    return-object v4

    :cond_1
    instance-of v3, v2, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_2

    check-cast v2, Ljava/util/concurrent/CancellationException;

    throw v2

    :cond_2
    instance-of v3, v2, Ljava/util/concurrent/CompletionException;

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v2, v0

    :cond_3
    new-instance v3, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v3, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_4
    move-object v1, p0

    return-object p0
.end method

.method private static reportJoin(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v3, 0x0

    instance-of v2, p0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v2, :cond_3

    check-cast p0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/util/concurrent/CancellationException;

    throw v1

    :cond_1
    instance-of v2, v1, Ljava/util/concurrent/CompletionException;

    if-eqz v2, :cond_2

    check-cast v1, Ljava/util/concurrent/CompletionException;

    throw v1

    :cond_2
    new-instance v2, Ljava/util/concurrent/CompletionException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    move-object v0, p0

    return-object p0
.end method

.method public static runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->asyncRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->asyncRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method static screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1

    sget-boolean v0, Ljava/util/concurrent/CompletableFuture;->USE_COMMON_POOL:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v0

    if-ne p0, v0, :cond_0

    sget-object v0, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    return-object p0
.end method

.method public static supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->asyncSupplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->asyncSupplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method private timedGet(J)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_a

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    add-long v6, v2, p1

    const-wide/16 v2, 0x0

    cmp-long v1, v6, v2

    if-nez v1, :cond_2

    const-wide/16 v4, 0x1

    :goto_0
    const/4 v0, 0x0

    const/4 v9, 0x0

    :cond_1
    :goto_1
    iget-object v10, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v10, :cond_5

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/concurrent/CompletableFuture$Signaller;

    const/4 v1, 0x1

    move-wide/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/CompletableFuture$Signaller;-><init>(ZJJ)V

    goto :goto_1

    :cond_2
    move-wide v4, v6

    goto :goto_0

    :cond_3
    if-nez v9, :cond_4

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v9

    goto :goto_1

    :cond_4
    iget-wide v2, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->nanos:J

    const-wide/16 v12, 0x0

    cmp-long v1, v2, v12

    if-gtz v1, :cond_8

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    const/4 v1, 0x0

    iput-object v1, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    :cond_6
    if-eqz v10, :cond_9

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    :goto_3
    if-nez v10, :cond_7

    if-eqz v0, :cond_a

    iget-boolean v1, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz v1, :cond_a

    :cond_7
    return-object v10

    :cond_8
    :try_start_0
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinPool;->managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    iget-boolean v1, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz v1, :cond_1

    goto :goto_2

    :catch_0
    move-exception v8

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->cleanStack()V

    goto :goto_3

    :cond_a
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1
.end method

.method private uniAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer",
            "<-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    if-nez p1, :cond_1

    invoke-virtual {v1, p0, p2, v2}, Ljava/util/concurrent/CompletableFuture;->uniAccept(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture$UniAccept;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :cond_1
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniAccept;

    invoke-direct {v0, p1, v1, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniAccept;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture$UniAccept;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    :cond_2
    return-object v1
.end method

.method private uniApplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Function",
            "<-TT;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    if-nez p1, :cond_1

    invoke-virtual {v1, p0, p2, v2}, Ljava/util/concurrent/CompletableFuture;->uniApply(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$UniApply;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :cond_1
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniApply;

    invoke-direct {v0, p1, v1, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniApply;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture$UniApply;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    :cond_2
    return-object v1
.end method

.method private uniAsMinimalStage()Ljava/util/concurrent/CompletableFuture$MinimalStage;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture$MinimalStage",
            "<TT;>;"
        }
    .end annotation

    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/util/concurrent/CompletableFuture$MinimalStage;

    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/CompletableFuture$MinimalStage;-><init>(Ljava/lang/Object;)V

    return-object v3

    :cond_0
    new-instance v1, Ljava/util/concurrent/CompletableFuture$MinimalStage;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture$MinimalStage;-><init>()V

    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v0, v1, p0}, Ljava/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CompletableFuture$UniRelay;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    return-object v1
.end method

.method private uniComposeStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Function",
            "<-TT;+",
            "Ljava/util/concurrent/CompletionStage",
            "<TV;>;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    const/4 v9, 0x0

    if-nez p2, :cond_0

    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    if-nez p1, :cond_4

    iget-object v5, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v5, :cond_4

    instance-of v9, v5, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v9, :cond_2

    move-object v9, v5

    check-cast v9, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v8, v9, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v8, :cond_1

    invoke-static {v8, v5}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    return-object v2

    :cond_1
    const/4 v5, 0x0

    :cond_2
    move-object v7, v5

    :try_start_0
    invoke-interface {p2, v7}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/CompletionStage;

    invoke-interface {v9}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    iget-object v6, v4, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v6, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/concurrent/CompletableFuture;->completeRelay(Ljava/lang/Object;)Z

    :goto_0
    return-object v2

    :cond_3
    new-instance v1, Ljava/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v1, v2, v4}, Ljava/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/util/concurrent/CompletableFuture$UniRelay;->tryFire(I)Ljava/util/concurrent/CompletableFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {v3}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;

    move-result-object v9

    iput-object v9, v2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    return-object v2

    :cond_4
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniCompose;

    invoke-direct {v0, p1, v2, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniCompose;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    invoke-virtual {v0, v9}, Ljava/util/concurrent/CompletableFuture$UniCompose;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    return-object v2
.end method

.method private uniCopyStage()Ljava/util/concurrent/CompletableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->completeRelay(Ljava/lang/Object;)Z

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v0, v1, p0}, Ljava/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CompletableFuture$UniRelay;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    goto :goto_0
.end method

.method private uniExceptionallyStage(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function",
            "<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v2}, Ljava/util/concurrent/CompletableFuture;->uniExceptionally(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$UniExceptionally;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniExceptionally;

    invoke-direct {v0, v1, p0, p1}, Ljava/util/concurrent/CompletableFuture$UniExceptionally;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture$UniExceptionally;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    :cond_1
    return-object v1
.end method

.method private uniHandleStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/BiFunction",
            "<-TT;",
            "Ljava/lang/Throwable;",
            "+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    if-nez p1, :cond_1

    invoke-virtual {v1, p0, p2, v2}, Ljava/util/concurrent/CompletableFuture;->uniHandle(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture$UniHandle;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :cond_1
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniHandle;

    invoke-direct {v0, p1, v1, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniHandle;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture$UniHandle;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    :cond_2
    return-object v1
.end method

.method private uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    if-nez p1, :cond_1

    invoke-virtual {v1, p0, p2, v2}, Ljava/util/concurrent/CompletableFuture;->uniRun(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture$UniRun;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :cond_1
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniRun;

    invoke-direct {v0, p1, v1, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniRun;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture$UniRun;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    :cond_2
    return-object v1
.end method

.method private uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    if-nez p1, :cond_1

    invoke-virtual {v1, p0, p2, v2}, Ljava/util/concurrent/CompletableFuture;->uniWhenComplete(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture$UniWhenComplete;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :cond_1
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;

    invoke-direct {v0, p1, v1, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    :cond_2
    return-object v1
.end method

.method private waitingGet(Z)Ljava/lang/Object;
    .locals 11

    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x0

    sget v9, Ljava/util/concurrent/CompletableFuture;->SPINS:I

    :cond_0
    :goto_0
    iget-object v8, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v8, :cond_4

    if-lez v9, :cond_1

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->nextSecondarySeed()I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/util/concurrent/CompletableFuture$Signaller;

    move v1, p1

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/CompletableFuture$Signaller;-><init>(ZJJ)V

    goto :goto_0

    :cond_2
    if-nez v7, :cond_3

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v7

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinPool;->managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v1, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    :cond_4
    if-eqz v0, :cond_5

    iput-object v10, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    iget-boolean v1, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz v1, :cond_5

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->cleanStack()V

    :cond_5
    :goto_2
    if-eqz v8, :cond_6

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    :cond_6
    return-object v8

    :catch_0
    move-exception v6

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    goto :goto_1

    :cond_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2
.end method


# virtual methods
.method public acceptEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TT;>;",
            "Ljava/util/function/Consumer",
            "<-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic acceptEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->acceptEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TT;>;",
            "Ljava/util/function/Consumer",
            "<-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TT;>;",
            "Ljava/util/function/Consumer",
            "<-TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public applyToEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TT;>;",
            "Ljava/util/function/Function",
            "<-TT;TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic applyToEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->applyToEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TT;>;",
            "Ljava/util/function/Function",
            "<-TT;TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TT;>;",
            "Ljava/util/function/Function",
            "<-TT;TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method final biAccept(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture$BiAccept;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TR;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TS;>;",
            "Ljava/util/function/BiConsumer",
            "<-TR;-TS;>;",
            "Ljava/util/concurrent/CompletableFuture$BiAccept",
            "<TR;TS;>;)Z"
        }
    .end annotation

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    return v7

    :cond_1
    if-eqz p2, :cond_0

    iget-object v3, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    iget-object v6, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v6, :cond_2

    instance-of v6, v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v6, :cond_4

    move-object v6, v1

    check-cast v6, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v5, v6, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v5, :cond_3

    invoke-virtual {p0, v5, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    const/4 v6, 0x1

    return v6

    :cond_3
    const/4 v1, 0x0

    :cond_4
    instance-of v6, v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v6, :cond_6

    move-object v6, v3

    check-cast v6, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v5, v6, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v5, :cond_5

    invoke-virtual {p0, v5, v3}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :cond_6
    if-eqz p4, :cond_7

    :try_start_0
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$BiAccept;->claim()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_7

    return v7

    :cond_7
    move-object v2, v1

    move-object v4, v3

    invoke-interface {p3, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method final biApply(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture$BiApply;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TR;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TS;>;",
            "Ljava/util/function/BiFunction",
            "<-TR;-TS;+TT;>;",
            "Ljava/util/concurrent/CompletableFuture$BiApply",
            "<TR;TS;TT;>;)Z"
        }
    .end annotation

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    return v7

    :cond_1
    if-eqz p2, :cond_0

    iget-object v3, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    iget-object v6, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v6, :cond_2

    instance-of v6, v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v6, :cond_4

    move-object v6, v1

    check-cast v6, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v5, v6, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v5, :cond_3

    invoke-virtual {p0, v5, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    const/4 v6, 0x1

    return v6

    :cond_3
    const/4 v1, 0x0

    :cond_4
    instance-of v6, v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v6, :cond_6

    move-object v6, v3

    check-cast v6, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v5, v6, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v5, :cond_5

    invoke-virtual {p0, v5, v3}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :cond_6
    if-eqz p4, :cond_7

    :try_start_0
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$BiApply;->claim()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_7

    return v7

    :cond_7
    move-object v2, v1

    move-object v4, v3

    invoke-interface {p3, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method biRelay(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    const/4 v3, 0x0

    return v3

    :cond_1
    if-eqz p2, :cond_0

    iget-object v1, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v3, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v3, :cond_2

    instance-of v3, v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v3, :cond_3

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v2, v3, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    invoke-virtual {p0, v2, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    const/4 v3, 0x1

    return v3

    :cond_3
    instance-of v3, v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v3, :cond_4

    move-object v3, v1

    check-cast v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v2, v3, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z

    goto :goto_0
.end method

.method final biRun(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture$BiRun;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/CompletableFuture$BiRun",
            "<**>;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    return v5

    :cond_1
    if-eqz p2, :cond_0

    iget-object v2, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    iget-object v4, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v4, :cond_2

    instance-of v4, v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v4, :cond_3

    move-object v4, v1

    check-cast v4, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v3, v4, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    invoke-virtual {p0, v3, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    const/4 v4, 0x1

    return v4

    :cond_3
    instance-of v4, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v4, :cond_4

    move-object v4, v2

    check-cast v4, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v3, v4, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    invoke-virtual {p0, v3, v2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_5

    :try_start_0
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$BiRun;->claim()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    return v5

    :cond_5
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method final bipush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/util/concurrent/CompletableFuture$BiCompletion",
            "<***>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    :goto_0
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_0

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-static {p2, v3}, Ljava/util/concurrent/CompletableFuture;->lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    if-eq p1, p0, :cond_2

    iget-object v2, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    move-object v0, p2

    :goto_1
    iget-object v2, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    invoke-static {v0, v3}, Ljava/util/concurrent/CompletableFuture;->lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/concurrent/CompletableFuture$CoCompletion;

    invoke-direct {v0, p2}, Ljava/util/concurrent/CompletableFuture$CoCompletion;-><init>(Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public cancel(Z)Z
    .locals 3

    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-direct {v1, v2}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->isCancelled()Z

    move-result v1

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method final casStack(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)Z
    .locals 6

    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->STACK:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final cleanStack()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, v1, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture$Completion;->isLive()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    move-object v1, v2

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/CompletableFuture;->casStack(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)Z

    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    goto :goto_0

    :cond_1
    iput-object v2, v0, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture$Completion;->isLive()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public complete(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    return v0
.end method

.method public completeAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/CompletableFuture;->completeAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public completeAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/CompletableFuture$AsyncSupply;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/CompletableFuture$AsyncSupply;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Supplier;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public completeExceptionally(Ljava/lang/Throwable;)Z
    .locals 2

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    new-instance v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    invoke-direct {v1, p1}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    return v0
.end method

.method final completeNull()Z
    .locals 6

    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    sget-object v5, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public completeOnTimeout(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/CompletableFuture$Canceller;

    new-instance v1, Ljava/util/concurrent/CompletableFuture$DelayedCompleter;

    invoke-direct {v1, p0, p1}, Ljava/util/concurrent/CompletableFuture$DelayedCompleter;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Object;)V

    invoke-static {v1, p2, p3, p4}, Ljava/util/concurrent/CompletableFuture$Delayer;->delay(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletableFuture$Canceller;-><init>(Ljava/util/concurrent/Future;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    :cond_1
    return-object p0
.end method

.method final completeRelay(Ljava/lang/Object;)Z
    .locals 6

    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final completeThrowable(Ljava/lang/Throwable;)Z
    .locals 6

    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;

    move-result-object v5

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z
    .locals 6

    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    invoke-static {p1, p2}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final completeValue(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    if-nez p1, :cond_0

    sget-object v5, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    :goto_0
    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    move-object v5, p1

    goto :goto_0
.end method

.method public copy()Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;->uniCopyStage()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public defaultExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method encodeOutcome(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;

    move-result-object p1

    goto :goto_0
.end method

.method final encodeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    :cond_0
    return-object p1
.end method

.method public exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function",
            "<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/CompletableFuture;->uniExceptionallyStage(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/concurrent/CompletableFuture;->waitingGet(Z)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->reportGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v2, :cond_0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/CompletableFuture;->timedGet(J)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->reportGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public getNow(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->reportJoin(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method

.method public getNumberOfDependents()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    goto :goto_0

    :cond_0
    return v0
.end method

.method public handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction",
            "<-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniHandleStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public handleAsync(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction",
            "<-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniHandleStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public handleAsync(Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction",
            "<-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniHandleStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handleAsync(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->handleAsync(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handleAsync(Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->handleAsync(Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method final internalComplete(Ljava/lang/Object;)Z
    .locals 6

    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCancelled()Z
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    instance-of v1, v1, Ljava/util/concurrent/CancellationException;

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCompletedExceptionally()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    instance-of v2, v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v2, :cond_0

    sget-object v2, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isDone()Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public join()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/util/concurrent/CompletableFuture;->waitingGet(Z)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->reportJoin(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public minimalCompletionStage()Ljava/util/concurrent/CompletionStage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletionStage",
            "<TT;>;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;->uniAsMinimalStage()Ljava/util/concurrent/CompletableFuture$MinimalStage;

    move-result-object v0

    return-object v0
.end method

.method public newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    return-object v0
.end method

.method public obtrudeException(Ljava/lang/Throwable;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    return-void
.end method

.method public obtrudeValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    :cond_0
    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    return-void
.end method

.method final orAccept(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture$OrAccept;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:TR;>(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TR;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TS;>;",
            "Ljava/util/function/Consumer",
            "<-TR;>;",
            "Ljava/util/concurrent/CompletableFuture$OrAccept",
            "<TR;TS;>;)Z"
        }
    .end annotation

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v6

    :cond_1
    iget-object v2, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v2, :cond_2

    iget-object v2, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    :cond_2
    if-eqz p3, :cond_0

    iget-object v5, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v5, :cond_4

    if-eqz p4, :cond_3

    :try_start_0
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$OrAccept;->claim()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    return v6

    :cond_3
    instance-of v5, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v5, :cond_6

    move-object v0, v2

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    move-object v5, v0

    iget-object v4, v5, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v4, :cond_5

    invoke-virtual {p0, v4, v2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    const/4 v5, 0x1

    return v5

    :cond_5
    const/4 v2, 0x0

    :cond_6
    move-object v3, v2

    invoke-interface {p3, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method final orApply(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$OrApply;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:TR;>(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TR;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TS;>;",
            "Ljava/util/function/Function",
            "<-TR;+TT;>;",
            "Ljava/util/concurrent/CompletableFuture$OrApply",
            "<TR;TS;TT;>;)Z"
        }
    .end annotation

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v6

    :cond_1
    iget-object v2, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v2, :cond_2

    iget-object v2, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    :cond_2
    if-eqz p3, :cond_0

    iget-object v5, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v5, :cond_4

    if-eqz p4, :cond_3

    :try_start_0
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$OrApply;->claim()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    return v6

    :cond_3
    instance-of v5, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v5, :cond_6

    move-object v0, v2

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    move-object v5, v0

    iget-object v4, v5, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v4, :cond_5

    invoke-virtual {p0, v4, v2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    const/4 v5, 0x1

    return v5

    :cond_5
    const/4 v2, 0x0

    :cond_6
    move-object v3, v2

    invoke-interface {p3, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method final orRelay(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :cond_2
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeRelay(Ljava/lang/Object;)Z

    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method final orRun(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture$OrRun;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/CompletableFuture$OrRun",
            "<**>;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v5

    :cond_1
    iget-object v2, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v2, :cond_2

    iget-object v2, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    :cond_2
    if-eqz p3, :cond_0

    iget-object v4, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v4, :cond_4

    if-eqz p4, :cond_3

    :try_start_0
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$OrRun;->claim()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    return v5

    :cond_3
    instance-of v4, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v4, :cond_5

    move-object v0, v2

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    move-object v4, v0

    iget-object v3, v4, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v3, :cond_5

    invoke-virtual {p0, v3, v2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    const/4 v4, 0x1

    return v4

    :cond_5
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method public orTimeout(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/CompletableFuture$Canceller;

    new-instance v1, Ljava/util/concurrent/CompletableFuture$Timeout;

    invoke-direct {v1, p0}, Ljava/util/concurrent/CompletableFuture$Timeout;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v1, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture$Delayer;->delay(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletableFuture$Canceller;-><init>(Ljava/util/concurrent/Future;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    :cond_1
    return-object p0
.end method

.method final orpush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/util/concurrent/CompletableFuture$BiCompletion",
            "<***>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    :goto_0
    if-eqz p1, :cond_0

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_2

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_2

    if-eq p1, p0, :cond_2

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_2

    new-instance v0, Ljava/util/concurrent/CompletableFuture$CoCompletion;

    invoke-direct {v0, p2}, Ljava/util/concurrent/CompletableFuture$CoCompletion;-><init>(Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    :goto_1
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_2

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-static {v0, v2}, Ljava/util/concurrent/CompletableFuture;->lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_1

    :cond_1
    invoke-static {p2, v2}, Ljava/util/concurrent/CompletableFuture;->lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method final postComplete()V
    .locals 6

    const/4 v5, 0x0

    move-object v1, p0

    :cond_0
    :goto_0
    iget-object v2, v1, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    if-nez v2, :cond_1

    if-eq v1, p0, :cond_5

    move-object v1, p0

    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    if-eqz v2, :cond_5

    :cond_1
    iget-object v3, v2, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/CompletableFuture;->casStack(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_3

    if-eq v1, p0, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->pushStack(Ljava/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_0

    :cond_2
    iput-object v5, v2, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    :cond_3
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CompletableFuture$Completion;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v1, p0

    goto :goto_0

    :cond_4
    move-object v1, v0

    goto :goto_0

    :cond_5
    return-void
.end method

.method final postFire(Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;I)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    if-eqz v0, :cond_1

    if-ltz p2, :cond_0

    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->cleanStack()V

    :cond_1
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    if-eqz v0, :cond_4

    if-gez p2, :cond_3

    return-object p0

    :cond_2
    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    :cond_4
    return-object v1
.end method

.method final postFire(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;I)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    if-eqz p2, :cond_1

    iget-object v0, p2, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    if-eqz v0, :cond_1

    if-ltz p3, :cond_0

    iget-object v0, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/CompletableFuture;->cleanStack()V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p3}, Ljava/util/concurrent/CompletableFuture;->postFire(Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p2}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    goto :goto_0
.end method

.method final push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture$UniCompletion",
            "<**>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Ljava/util/concurrent/CompletableFuture;->lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final pushStack(Ljava/util/concurrent/CompletableFuture$Completion;)V
    .locals 1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public runAfterBoth(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic runAfterBoth(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->runAfterBoth(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public runAfterEither(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic runAfterEither(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->runAfterEither(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenAcceptBoth(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TU;>;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenAcceptBoth(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenAcceptBoth(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TU;>;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TU;>;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniApplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenApplyAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniApplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniApplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenApplyAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TT;-TU;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TT;-TU;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TT;-TU;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniComposeStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenComposeAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniComposeStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniComposeStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenComposeAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenComposeAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenRunAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenRunAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public toCompletableFuture()Ljava/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v2, :cond_2

    if-nez v0, :cond_1

    const-string/jumbo v3, "[Not completed]"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[Not completed, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " dependents]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    instance-of v3, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v3, :cond_3

    check-cast v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v3, v2, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    const-string/jumbo v3, "[Completed exceptionally]"

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "[Completed normally]"

    goto :goto_1
.end method

.method final tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z
    .locals 6

    iget-object v4, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    invoke-static {p1, v4}, Ljava/util/concurrent/CompletableFuture;->lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V

    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->STACK:J

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final uniAccept(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture$UniAccept;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TS;>;",
            "Ljava/util/function/Consumer",
            "<-TS;>;",
            "Ljava/util/concurrent/CompletableFuture$UniAccept",
            "<TS;>;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    return v5

    :cond_1
    if-eqz p2, :cond_0

    iget-object v4, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v4, :cond_2

    instance-of v4, v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v4, :cond_4

    move-object v4, v1

    check-cast v4, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v3, v4, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    invoke-virtual {p0, v3, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    const/4 v4, 0x1

    return v4

    :cond_3
    const/4 v1, 0x0

    :cond_4
    if-eqz p3, :cond_5

    :try_start_0
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniAccept;->claim()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    return v5

    :cond_5
    move-object v2, v1

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method final uniApply(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$UniApply;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TS;>;",
            "Ljava/util/function/Function",
            "<-TS;+TT;>;",
            "Ljava/util/concurrent/CompletableFuture$UniApply",
            "<TS;TT;>;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    return v5

    :cond_1
    if-eqz p2, :cond_0

    iget-object v4, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v4, :cond_2

    instance-of v4, v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v4, :cond_4

    move-object v4, v1

    check-cast v4, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v3, v4, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    invoke-virtual {p0, v3, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    const/4 v4, 0x1

    return v4

    :cond_3
    const/4 v1, 0x0

    :cond_4
    if-eqz p3, :cond_5

    :try_start_0
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniApply;->claim()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    return v5

    :cond_5
    move-object v2, v1

    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method final uniCompose(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$UniCompose;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TS;>;",
            "Ljava/util/function/Function",
            "<-TS;+",
            "Ljava/util/concurrent/CompletionStage",
            "<TT;>;>;",
            "Ljava/util/concurrent/CompletableFuture$UniCompose",
            "<TS;TT;>;)Z"
        }
    .end annotation

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v3, :cond_1

    :cond_0
    return v7

    :cond_1
    if-eqz p2, :cond_0

    iget-object v6, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v6, :cond_2

    instance-of v6, v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v6, :cond_4

    move-object v6, v3

    check-cast v6, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v5, v6, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v5, :cond_3

    invoke-virtual {p0, v5, v3}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    const/4 v6, 0x1

    return v6

    :cond_3
    const/4 v3, 0x0

    :cond_4
    if-eqz p3, :cond_5

    :try_start_0
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniCompose;->claim()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5

    return v7

    :cond_5
    move-object v4, v3

    invoke-interface {p2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/CompletionStage;

    invoke-interface {v6}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    iget-object v6, v2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v6, :cond_6

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->uniRelay(Ljava/util/concurrent/CompletableFuture;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    :cond_6
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v0, p0, v2}, Ljava/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/CompletableFuture$UniRelay;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    iget-object v6, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_2

    return v7

    :catch_0
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method final uniExceptionally(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$UniExceptionally;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;",
            "Ljava/util/function/Function",
            "<-",
            "Ljava/lang/Throwable;",
            "+TT;>;",
            "Ljava/util/concurrent/CompletableFuture$UniExceptionally",
            "<TT;>;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v2, :cond_1

    :cond_0
    return v5

    :cond_1
    if-eqz p2, :cond_0

    iget-object v4, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v4, :cond_3

    :try_start_0
    instance-of v4, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v4, :cond_4

    move-object v0, v2

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    move-object v4, v0

    iget-object v3, v4, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniExceptionally;->claim()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    return v5

    :cond_2
    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    const/4 v4, 0x1

    return v4

    :cond_4
    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method final uniHandle(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture$UniHandle;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TS;>;",
            "Ljava/util/function/BiFunction",
            "<-TS;",
            "Ljava/lang/Throwable;",
            "+TT;>;",
            "Ljava/util/concurrent/CompletableFuture$UniHandle",
            "<TS;TT;>;)Z"
        }
    .end annotation

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    return v6

    :cond_1
    if-eqz p2, :cond_0

    iget-object v5, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v5, :cond_3

    if-eqz p3, :cond_2

    :try_start_0
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniHandle;->claim()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    return v6

    :cond_2
    instance-of v5, v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v5, :cond_4

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v4, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2, v2, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    const/4 v5, 0x1

    return v5

    :cond_4
    const/4 v4, 0x0

    move-object v3, v1

    move-object v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_1
.end method

.method final uniRelay(Ljava/util/concurrent/CompletableFuture;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeRelay(Ljava/lang/Object;)Z

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method final uniRun(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture$UniRun;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/CompletableFuture$UniRun",
            "<*>;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    return v4

    :cond_1
    if-eqz p2, :cond_0

    iget-object v3, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v3, :cond_2

    instance-of v3, v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v3, :cond_3

    move-object v3, v1

    check-cast v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v2, v3, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    const/4 v3, 0x1

    return v3

    :cond_3
    if-eqz p3, :cond_4

    :try_start_0
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniRun;->claim()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    return v4

    :cond_4
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method final uniWhenComplete(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture$UniWhenComplete;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/CompletableFuture$UniWhenComplete",
            "<TT;>;)Z"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v2, :cond_1

    :cond_0
    return v7

    :cond_1
    if-eqz p2, :cond_0

    iget-object v6, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v6, :cond_5

    if-eqz p3, :cond_2

    :try_start_0
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;->claim()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    return v7

    :cond_2
    instance-of v6, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v6, :cond_3

    move-object v0, v2

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    move-object v6, v0

    iget-object v5, v6, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p2, v3, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v5, :cond_4

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v8

    :cond_3
    move-object v4, v2

    move-object v3, v2

    goto :goto_0

    :catch_0
    move-exception v1

    if-nez v5, :cond_6

    move-object v5, v1

    :cond_4
    :goto_1
    invoke-virtual {p0, v5, v2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    :cond_5
    return v8

    :cond_6
    if-eq v5, v1, :cond_4

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method
