.class final Ljava/lang/reflect/Proxy$KeyX;
.super Ljava/lang/Object;
.source "Proxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyX"
.end annotation


# instance fields
.field private final hash:I

.field private final refs:[Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Ljava/lang/reflect/Proxy$KeyX;->hash:I

    array-length v1, p1

    new-array v1, v1, [Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Ljava/lang/reflect/Proxy$KeyX;->refs:[Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljava/lang/reflect/Proxy$KeyX;->refs:[Ljava/lang/ref/WeakReference;

    new-instance v2, Ljava/lang/ref/WeakReference;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static equals([Ljava/lang/ref/WeakReference;[Ljava/lang/ref/WeakReference;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;[",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_0

    return v4

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-eqz v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    return v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/reflect/Proxy$KeyX;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ljava/lang/reflect/Proxy$KeyX;->refs:[Ljava/lang/ref/WeakReference;

    check-cast p1, Ljava/lang/reflect/Proxy$KeyX;

    iget-object v1, p1, Ljava/lang/reflect/Proxy$KeyX;->refs:[Ljava/lang/ref/WeakReference;

    invoke-static {v0, v1}, Ljava/lang/reflect/Proxy$KeyX;->equals([Ljava/lang/ref/WeakReference;[Ljava/lang/ref/WeakReference;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Ljava/lang/reflect/Proxy$KeyX;->hash:I

    return v0
.end method
