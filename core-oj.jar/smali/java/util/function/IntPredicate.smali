.class public interface abstract Ljava/util/function/IntPredicate;
.super Ljava/lang/Object;
.source "IntPredicate.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public and(Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/function/-$Lambda$7wUuYdVTmZGtkCqNZ8xzJcRU4aE$1;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$Lambda$7wUuYdVTmZGtkCqNZ8xzJcRU4aE$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic lambda$-java_util_function_IntPredicate_2831(Ljava/util/function/IntPredicate;I)Z
    .locals 1

    invoke-interface {p0, p2}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic lambda$-java_util_function_IntPredicate_3136(I)Z
    .locals 1

    invoke-interface {p0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic lambda$-java_util_function_IntPredicate_4072(Ljava/util/function/IntPredicate;I)Z
    .locals 1

    invoke-interface {p0, p2}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public negate()Ljava/util/function/IntPredicate;
    .locals 1

    new-instance v0, Ljava/util/function/-$Lambda$7wUuYdVTmZGtkCqNZ8xzJcRU4aE;

    invoke-direct {v0, p0}, Ljava/util/function/-$Lambda$7wUuYdVTmZGtkCqNZ8xzJcRU4aE;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public or(Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/function/-$Lambda$7wUuYdVTmZGtkCqNZ8xzJcRU4aE$2;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$Lambda$7wUuYdVTmZGtkCqNZ8xzJcRU4aE$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract test(I)Z
.end method
