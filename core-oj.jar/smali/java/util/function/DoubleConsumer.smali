.class public interface abstract Ljava/util/function/DoubleConsumer;
.super Ljava/lang/Object;
.source "DoubleConsumer.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract accept(D)V
.end method

.method public andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/function/-$Lambda$Tr2ZVotyK7bvB1MALZ-WioewFls;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$Lambda$Tr2ZVotyK7bvB1MALZ-WioewFls;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic lambda$-java_util_function_DoubleConsumer_2716(Ljava/util/function/DoubleConsumer;D)V
    .locals 0

    invoke-interface {p0, p2, p3}, Ljava/util/function/DoubleConsumer;->accept(D)V

    invoke-interface {p1, p2, p3}, Ljava/util/function/DoubleConsumer;->accept(D)V

    return-void
.end method
