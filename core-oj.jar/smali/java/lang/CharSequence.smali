.class public interface abstract Ljava/lang/CharSequence;
.super Ljava/lang/Object;
.source "CharSequence.java"


# virtual methods
.method public abstract charAt(I)C
.end method

.method public chars()Ljava/util/stream/IntStream;
    .locals 3

    new-instance v0, Ljava/lang/-$Lambda$S9HjrJh0nDg7IyU6wZdPArnZWRQ;

    invoke-direct {v0, p0}, Ljava/lang/-$Lambda$S9HjrJh0nDg7IyU6wZdPArnZWRQ;-><init>(Ljava/lang/Object;)V

    const/16 v1, 0x4050

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public codePoints()Ljava/util/stream/IntStream;
    .locals 3

    new-instance v0, Ljava/lang/-$Lambda$S9HjrJh0nDg7IyU6wZdPArnZWRQ$1;

    invoke-direct {v0, p0}, Ljava/lang/-$Lambda$S9HjrJh0nDg7IyU6wZdPArnZWRQ$1;-><init>(Ljava/lang/Object;)V

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$-java_lang_CharSequence_6032()Ljava/util/Spliterator$OfInt;
    .locals 4

    new-instance v0, Ljava/lang/CharSequence$1CharIterator;

    invoke-direct {v0, p0}, Ljava/lang/CharSequence$1CharIterator;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    int-to-long v2, v1

    const/16 v1, 0x10

    invoke-static {v0, v2, v3, v1}, Ljava/util/Spliterators;->spliterator(Ljava/util/PrimitiveIterator$OfInt;JI)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$-java_lang_CharSequence_8746()Ljava/util/Spliterator$OfInt;
    .locals 2

    new-instance v0, Ljava/lang/CharSequence$1CodePointIterator;

    invoke-direct {v0, p0}, Ljava/lang/CharSequence$1CodePointIterator;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/PrimitiveIterator$OfInt;I)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public abstract length()I
.end method

.method public abstract subSequence(II)Ljava/lang/CharSequence;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
