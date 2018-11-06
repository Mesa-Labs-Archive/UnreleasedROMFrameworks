.class public interface abstract Ljava/util/function/Function;
.super Ljava/lang/Object;
.source "Function.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static identity()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/Function",
            "<TT;TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/function/-$Lambda$8RHFAqc40555mGbHb_ZRDG-W__4;

    invoke-direct {v0}, Ljava/util/function/-$Lambda$8RHFAqc40555mGbHb_ZRDG-W__4;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$-java_util_function_Function_3851(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TR;+TV;>;)",
            "Ljava/util/function/Function",
            "<TT;TV;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/function/-$Lambda$8RHFAqc40555mGbHb_ZRDG-W__4$1;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$Lambda$8RHFAqc40555mGbHb_ZRDG-W__4$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract apply(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation
.end method

.method public compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TV;+TT;>;)",
            "Ljava/util/function/Function",
            "<TV;TR;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/function/-$Lambda$8RHFAqc40555mGbHb_ZRDG-W__4$2;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$Lambda$8RHFAqc40555mGbHb_ZRDG-W__4$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic lambda$-java_util_function_Function_2660(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$-java_util_function_Function_3525(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
