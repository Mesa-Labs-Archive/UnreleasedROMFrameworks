.class public interface abstract Ljava/util/function/DoublePredicate;
.super Ljava/lang/Object;
.source "DoublePredicate.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public and(Ljava/util/function/DoublePredicate;)Ljava/util/function/DoublePredicate;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/function/-$Lambda$Y5kXEBZc5fDOtRicvFfczerD_ZI$1;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$Lambda$Y5kXEBZc5fDOtRicvFfczerD_ZI$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic lambda$-java_util_function_DoublePredicate_2852(Ljava/util/function/DoublePredicate;D)Z
    .locals 2

    invoke-interface {p0, p2, p3}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2, p3}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic lambda$-java_util_function_DoublePredicate_3160(D)Z
    .locals 1

    invoke-interface {p0, p1, p2}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic lambda$-java_util_function_DoublePredicate_4102(Ljava/util/function/DoublePredicate;D)Z
    .locals 2

    invoke-interface {p0, p2, p3}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2, p3}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public negate()Ljava/util/function/DoublePredicate;
    .locals 1

    new-instance v0, Ljava/util/function/-$Lambda$Y5kXEBZc5fDOtRicvFfczerD_ZI;

    invoke-direct {v0, p0}, Ljava/util/function/-$Lambda$Y5kXEBZc5fDOtRicvFfczerD_ZI;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public or(Ljava/util/function/DoublePredicate;)Ljava/util/function/DoublePredicate;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/function/-$Lambda$Y5kXEBZc5fDOtRicvFfczerD_ZI$2;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$Lambda$Y5kXEBZc5fDOtRicvFfczerD_ZI$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract test(D)Z
.end method
