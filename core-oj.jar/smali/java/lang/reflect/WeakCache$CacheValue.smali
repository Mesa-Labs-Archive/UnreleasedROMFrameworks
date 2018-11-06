.class final Ljava/lang/reflect/WeakCache$CacheValue;
.super Ljava/lang/ref/WeakReference;
.source "WeakCache.java"

# interfaces
.implements Ljava/lang/reflect/WeakCache$Value;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/WeakCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TV;>;",
        "Ljava/lang/reflect/WeakCache$Value",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final hash:I


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Ljava/lang/reflect/WeakCache$CacheValue;->hash:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, p0, :cond_0

    instance-of v3, p1, Ljava/lang/reflect/WeakCache$Value;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/reflect/WeakCache$CacheValue;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/reflect/WeakCache$Value;

    invoke-interface {p1}, Ljava/lang/reflect/WeakCache$Value;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Ljava/lang/reflect/WeakCache$CacheValue;->hash:I

    return v0
.end method
