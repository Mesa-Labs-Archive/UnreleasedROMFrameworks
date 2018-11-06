.class public interface abstract Ljava/util/function/DoubleUnaryOperator;
.super Ljava/lang/Object;
.source "DoubleUnaryOperator.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static identity()Ljava/util/function/DoubleUnaryOperator;
    .locals 1

    new-instance v0, Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk;

    invoke-direct {v0}, Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$-java_util_function_DoubleUnaryOperator_3682(D)D
    .locals 0

    return-wide p0
.end method


# virtual methods
.method public andThen(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk$1;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract applyAsDouble(D)D
.end method

.method public compose(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk$2;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic lambda$-java_util_function_DoubleUnaryOperator_2626(Ljava/util/function/DoubleUnaryOperator;D)D
    .locals 2

    invoke-interface {p1, p2, p3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic lambda$-java_util_function_DoubleUnaryOperator_3397(Ljava/util/function/DoubleUnaryOperator;D)D
    .locals 2

    invoke-interface {p0, p2, p3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method
