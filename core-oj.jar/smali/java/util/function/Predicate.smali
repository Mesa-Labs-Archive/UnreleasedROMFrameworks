.class public interface abstract Ljava/util/function/Predicate;
.super Ljava/lang/Object;
.source "Predicate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic -java_util_function_Predicate-mthref-0(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEqual(Ljava/lang/Object;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/function/Predicate",
            "<TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE;

    invoke-direct {v0}, Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE$1;

    invoke-direct {v0, p0}, Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE$1;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static synthetic lambda$-java_util_function_Predicate_4628(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TT;>;)",
            "Ljava/util/function/Predicate",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE$3;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic lambda$-java_util_function_Predicate_2759(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 1

    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic lambda$-java_util_function_Predicate_3052(Ljava/lang/Object;)Z
    .locals 1

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic lambda$-java_util_function_Predicate_3988(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 1

    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public negate()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE$2;

    invoke-direct {v0, p0}, Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE$2;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TT;>;)",
            "Ljava/util/function/Predicate",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE$4;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE$4;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract test(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
