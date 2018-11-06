.class public interface abstract Ljava/util/function/IntUnaryOperator;
.super Ljava/lang/Object;
.source "IntUnaryOperator.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static identity()Ljava/util/function/IntUnaryOperator;
    .locals 1

    new-instance v0, Ljava/util/function/-$Lambda$n4VFJtoJH2VuvmBTzi4u5lJWNJs;

    invoke-direct {v0}, Ljava/util/function/-$Lambda$n4VFJtoJH2VuvmBTzi4u5lJWNJs;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$-java_util_function_IntUnaryOperator_3617(I)I
    .locals 0

    return p0
.end method


# virtual methods
.method public andThen(Ljava/util/function/IntUnaryOperator;)Ljava/util/function/IntUnaryOperator;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/function/-$Lambda$n4VFJtoJH2VuvmBTzi4u5lJWNJs$1;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$Lambda$n4VFJtoJH2VuvmBTzi4u5lJWNJs$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract applyAsInt(I)I
.end method

.method public compose(Ljava/util/function/IntUnaryOperator;)Ljava/util/function/IntUnaryOperator;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/function/-$Lambda$n4VFJtoJH2VuvmBTzi4u5lJWNJs$2;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$Lambda$n4VFJtoJH2VuvmBTzi4u5lJWNJs$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic lambda$-java_util_function_IntUnaryOperator_2591(Ljava/util/function/IntUnaryOperator;I)I
    .locals 1

    invoke-interface {p1, p2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    return v0
.end method

.method public synthetic lambda$-java_util_function_IntUnaryOperator_3344(Ljava/util/function/IntUnaryOperator;I)I
    .locals 1

    invoke-interface {p0, p2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    return v0
.end method
