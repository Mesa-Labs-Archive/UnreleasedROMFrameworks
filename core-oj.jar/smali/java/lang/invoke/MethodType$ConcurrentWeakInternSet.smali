.class Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;
.super Ljava/lang/Object;
.source "MethodType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/MethodType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConcurrentWeakInternSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
            "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry",
            "<TT;>;",
            "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final stale:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->map:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->stale:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method private expungeStaleElements()V
    .locals 2

    :goto_0
    iget-object v1, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->stale:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    new-instance v0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;

    iget-object v3, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->stale:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v3}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    :cond_1
    invoke-direct {p0}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->expungeStaleElements()V

    iget-object v3, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;

    if-nez v1, :cond_2

    move-object v2, p1

    :goto_0
    if-eqz v2, :cond_1

    return-object v2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;->get()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    invoke-direct {p0}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->expungeStaleElements()V

    iget-object v2, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->map:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;

    invoke-direct {v3, p1}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object v4
.end method
