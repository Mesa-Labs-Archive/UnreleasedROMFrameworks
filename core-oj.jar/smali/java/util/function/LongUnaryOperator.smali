.class public interface abstract Ljava/util/function/LongUnaryOperator;
.super Ljava/lang/Object;
.source "LongUnaryOperator.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static identity()Ljava/util/function/LongUnaryOperator;
    .locals 1

    new-instance v0, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw;

    invoke-direct {v0}, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$-java_util_function_LongUnaryOperator_3638(J)J
    .locals 0

    return-wide p0
.end method


# virtual methods
.method public andThen(Ljava/util/function/LongUnaryOperator;)Ljava/util/function/LongUnaryOperator;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw$1;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract applyAsLong(J)J
.end method

.method public compose(Ljava/util/function/LongUnaryOperator;)Ljava/util/function/LongUnaryOperator;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw$2;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic lambda$-java_util_function_LongUnaryOperator_2602(Ljava/util/function/LongUnaryOperator;J)J
    .locals 2

    invoke-interface {p1, p2, p3}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic lambda$-java_util_function_LongUnaryOperator_3361(Ljava/util/function/LongUnaryOperator;J)J
    .locals 2

    invoke-interface {p0, p2, p3}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    return-wide v0
.end method
