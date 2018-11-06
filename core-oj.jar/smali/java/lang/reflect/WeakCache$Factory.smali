.class final Ljava/lang/reflect/WeakCache$Factory;
.super Ljava/lang/Object;
.source "WeakCache.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/WeakCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier",
        "<TV;>;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic $assertionsDisabled:Z

.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final parameter:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private final subKey:Ljava/lang/Object;

.field final synthetic this$0:Ljava/lang/reflect/WeakCache;

.field private final valuesMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/function/Supplier",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/lang/reflect/WeakCache$Factory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/lang/reflect/WeakCache$Factory;->-assertionsDisabled:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/WeakCache;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TP;",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/function/Supplier",
            "<TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Ljava/lang/reflect/WeakCache$Factory;->this$0:Ljava/lang/reflect/WeakCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljava/lang/reflect/WeakCache$Factory;->key:Ljava/lang/Object;

    iput-object p3, p0, Ljava/lang/reflect/WeakCache$Factory;->parameter:Ljava/lang/Object;

    iput-object p4, p0, Ljava/lang/reflect/WeakCache$Factory;->subKey:Ljava/lang/Object;

    iput-object p5, p0, Ljava/lang/reflect/WeakCache$Factory;->valuesMap:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public declared-synchronized get()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Ljava/lang/reflect/WeakCache$Factory;->valuesMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v4, p0, Ljava/lang/reflect/WeakCache$Factory;->subKey:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Supplier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, p0, :cond_0

    monitor-exit p0

    return-object v5

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Ljava/lang/reflect/WeakCache$Factory;->this$0:Ljava/lang/reflect/WeakCache;

    invoke-static {v3}, Ljava/lang/reflect/WeakCache;->-get1(Ljava/lang/reflect/WeakCache;)Ljava/util/function/BiFunction;

    move-result-object v3

    iget-object v4, p0, Ljava/lang/reflect/WeakCache$Factory;->key:Ljava/lang/Object;

    iget-object v5, p0, Ljava/lang/reflect/WeakCache$Factory;->parameter:Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    if-nez v2, :cond_1

    :try_start_2
    iget-object v3, p0, Ljava/lang/reflect/WeakCache$Factory;->valuesMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v4, p0, Ljava/lang/reflect/WeakCache$Factory;->subKey:Ljava/lang/Object;

    invoke-interface {v3, v4, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    sget-boolean v3, Ljava/lang/reflect/WeakCache$Factory;->-assertionsDisabled:Z

    if-nez v3, :cond_2

    if-nez v2, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :catchall_1
    move-exception v3

    :try_start_3
    iget-object v4, p0, Ljava/lang/reflect/WeakCache$Factory;->valuesMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v5, p0, Ljava/lang/reflect/WeakCache$Factory;->subKey:Ljava/lang/Object;

    invoke-interface {v4, v5, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    throw v3

    :cond_2
    new-instance v0, Ljava/lang/reflect/WeakCache$CacheValue;

    invoke-direct {v0, v2}, Ljava/lang/reflect/WeakCache$CacheValue;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Ljava/lang/reflect/WeakCache$Factory;->valuesMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v4, p0, Ljava/lang/reflect/WeakCache$Factory;->subKey:Ljava/lang/Object;

    invoke-interface {v3, v4, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/lang/reflect/WeakCache$Factory;->this$0:Ljava/lang/reflect/WeakCache;

    invoke-static {v3}, Ljava/lang/reflect/WeakCache;->-get0(Ljava/lang/reflect/WeakCache;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v0, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_3
    :try_start_4
    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "Should not reach here"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
