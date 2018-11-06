.class final Ljava/lang/reflect/WeakCache;
.super Ljava/lang/Object;
.source "WeakCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/reflect/WeakCache$CacheKey;,
        Ljava/lang/reflect/WeakCache$CacheValue;,
        Ljava/lang/reflect/WeakCache$Factory;,
        Ljava/lang/reflect/WeakCache$LookupValue;,
        Ljava/lang/reflect/WeakCache$Value;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/function/Supplier",
            "<TV;>;>;>;"
        }
    .end annotation
.end field

.field private final refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final reverseMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/function/Supplier",
            "<TV;>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final subKeyFactory:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction",
            "<TK;TP;*>;"
        }
    .end annotation
.end field

.field private final valueFactory:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction",
            "<TK;TP;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Ljava/lang/reflect/WeakCache;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    iget-object v0, p0, Ljava/lang/reflect/WeakCache;->reverseMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic -get1(Ljava/lang/reflect/WeakCache;)Ljava/util/function/BiFunction;
    .locals 1

    iget-object v0, p0, Ljava/lang/reflect/WeakCache;->valueFactory:Ljava/util/function/BiFunction;

    return-object v0
.end method

.method public constructor <init>(Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<TK;TP;*>;",
            "Ljava/util/function/BiFunction",
            "<TK;TP;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljava/lang/reflect/WeakCache;->refQueue:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljava/lang/reflect/WeakCache;->map:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljava/lang/reflect/WeakCache;->reverseMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/BiFunction;

    iput-object v0, p0, Ljava/lang/reflect/WeakCache;->subKeyFactory:Ljava/util/function/BiFunction;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/BiFunction;

    iput-object v0, p0, Ljava/lang/reflect/WeakCache;->valueFactory:Ljava/util/function/BiFunction;

    return-void
.end method

.method private expungeStaleEntries()V
    .locals 3

    :goto_0
    iget-object v1, p0, Ljava/lang/reflect/WeakCache;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/WeakCache$CacheKey;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/lang/reflect/WeakCache;->map:Ljava/util/concurrent/ConcurrentMap;

    iget-object v2, p0, Ljava/lang/reflect/WeakCache;->reverseMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/WeakCache$CacheKey;->expungeFrom(Ljava/util/concurrent/ConcurrentMap;Ljava/util/concurrent/ConcurrentMap;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/reflect/WeakCache;->expungeStaleEntries()V

    iget-object v0, p0, Ljava/lang/reflect/WeakCache;->reverseMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Ljava/lang/reflect/WeakCache$LookupValue;

    invoke-direct {v1, p1}, Ljava/lang/reflect/WeakCache$LookupValue;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TP;)TV;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/reflect/WeakCache;->expungeStaleEntries()V

    iget-object v1, p0, Ljava/lang/reflect/WeakCache;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {p1, v1}, Ljava/lang/reflect/WeakCache$CacheKey;->valueOf(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/Object;

    move-result-object v6

    iget-object v1, p0, Ljava/lang/reflect/WeakCache;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ConcurrentMap;

    if-nez v5, :cond_0

    iget-object v1, p0, Ljava/lang/reflect/WeakCache;->map:Ljava/util/concurrent/ConcurrentMap;

    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v1, v6, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/ConcurrentMap;

    if-eqz v7, :cond_0

    move-object v5, v7

    :cond_0
    iget-object v1, p0, Ljava/lang/reflect/WeakCache;->subKeyFactory:Ljava/util/function/BiFunction;

    invoke-interface {v1, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/function/Supplier;

    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    return-object v9

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/reflect/WeakCache$Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ljava/lang/reflect/WeakCache$Factory;-><init>(Ljava/lang/reflect/WeakCache;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentMap;)V

    :cond_3
    if-nez v8, :cond_4

    invoke-interface {v5, v4, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/function/Supplier;

    if-nez v8, :cond_1

    move-object v8, v0

    goto :goto_0

    :cond_4
    invoke-interface {v5, v4, v8, v0}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v8, v0

    goto :goto_0

    :cond_5
    invoke-interface {v5, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/function/Supplier;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    invoke-direct {p0}, Ljava/lang/reflect/WeakCache;->expungeStaleEntries()V

    iget-object v0, p0, Ljava/lang/reflect/WeakCache;->reverseMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method
