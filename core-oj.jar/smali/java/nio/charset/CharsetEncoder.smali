.class public abstract Ljava/nio/charset/CharsetEncoder;
.super Ljava/lang/Object;
.source "CharsetEncoder.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ST_CODING:I = 0x1

.field private static final ST_END:I = 0x2

.field private static final ST_FLUSHED:I = 0x3

.field private static final ST_RESET:I

.field private static stateNames:[Ljava/lang/String;


# instance fields
.field private final averageBytesPerChar:F

.field private cachedDecoder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/nio/charset/CharsetDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final charset:Ljava/nio/charset/Charset;

.field private malformedInputAction:Ljava/nio/charset/CodingErrorAction;

.field private final maxBytesPerChar:F

.field private replacement:[B

.field private state:I

.field private unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/nio/charset/CharsetEncoder;->-assertionsDisabled:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "RESET"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "CODING"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "CODING_END"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "FLUSHED"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Ljava/nio/charset/CharsetEncoder;->stateNames:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;FF)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x3f

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[B)V

    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;FF[B)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[BZ)V

    return-void
.end method

.method constructor <init>(Ljava/nio/charset/Charset;FF[BZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->cachedDecoder:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->charset:Ljava/nio/charset/Charset;

    cmpg-float v0, p2, v1

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Non-positive averageBytesPerChar"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmpg-float v0, p3, v1

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Non-positive maxBytesPerChar"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v0, "1.4"

    invoke-static {v0}, Ljava/nio/charset/Charset;->atBugLevel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    cmpl-float v0, p2, p3

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "averageBytesPerChar exceeds maxBytesPerChar"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p4, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    iput p2, p0, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar:F

    iput p3, p0, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar:F

    if-nez p5, :cond_3

    invoke-virtual {p0, p4}, Ljava/nio/charset/CharsetEncoder;->replaceWith([B)Ljava/nio/charset/CharsetEncoder;

    :cond_3
    return-void
.end method

.method private canEncode(Ljava/nio/CharBuffer;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_0

    return v7

    :cond_0
    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->malformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v2

    :try_start_0
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, v4}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, v4}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    return v4

    :cond_2
    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    if-eqz v4, :cond_1

    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    invoke-direct {p0, v4, v7}, Ljava/nio/charset/CharsetEncoder;->throwIllegalStateException(II)V

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    return v6

    :catchall_0
    move-exception v4

    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    throw v4
.end method

.method private throwIllegalStateException(II)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CharsetEncoder;->stateNames:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", new state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CharsetEncoder;->stateNames:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final averageBytesPerChar()F
    .locals 1

    iget v0, p0, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar:F

    return v0
.end method

.method public canEncode(C)Z
    .locals 2

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    invoke-direct {p0, v0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/nio/CharBuffer;)Z

    move-result v1

    return v1
.end method

.method public canEncode(Ljava/lang/CharSequence;)Z
    .locals 2

    instance-of v1, p1, Ljava/nio/CharBuffer;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/nio/CharBuffer;)Z

    move-result v1

    return v1

    :cond_0
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public final charset()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public final encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v1, v4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    :goto_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v3

    :cond_2
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_4

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v1, v4, 0x1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-object v3, v2

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_0
.end method

.method public final encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p3, :cond_2

    const/4 v2, 0x2

    :goto_0
    iget v7, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    if-eqz v7, :cond_0

    iget v7, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    if-eq v7, v5, :cond_0

    if-eqz p3, :cond_3

    iget v7, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    :goto_1
    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    iget v5, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    invoke-direct {p0, v5, v2}, Ljava/nio/charset/CharsetEncoder;->throwIllegalStateException(II)V

    :cond_0
    iput v2, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    :cond_1
    :goto_2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/nio/charset/CharsetEncoder;->encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v5

    if-eqz v5, :cond_4

    return-object v1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v5, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v5, v3}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v5

    :catch_1
    move-exception v4

    new-instance v5, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v5, v4}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v5

    :cond_4
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz p3, :cond_7

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    invoke-static {v5}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    :cond_6
    :goto_3
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v5, :cond_a

    return-object v1

    :cond_7
    return-object v1

    :cond_8
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    goto :goto_3

    :cond_9
    sget-boolean v5, Ljava/nio/charset/CharsetEncoder;->-assertionsDisabled:Z

    if-nez v5, :cond_6

    new-instance v5, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    :cond_a
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v5, :cond_c

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    iget-object v6, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    array-length v6, v6

    if-ge v5, v6, :cond_b

    sget-object v5, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object v5

    :cond_b
    iget-object v5, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_c
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    if-eq v0, v5, :cond_d

    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v5, :cond_e

    :cond_d
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_2

    :cond_e
    sget-boolean v5, Ljava/nio/charset/CharsetEncoder;->-assertionsDisabled:Z

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method protected abstract encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
.end method

.method public final flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 4

    const/4 v3, 0x3

    iget v1, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_0

    iput v3, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    :cond_0
    return-object v0

    :cond_1
    iget v1, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    if-eq v1, v3, :cond_2

    iget v1, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    invoke-direct {p0, v1, v3}, Ljava/nio/charset/CharsetEncoder;->throwIllegalStateException(II)V

    :cond_2
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v1
.end method

.method protected implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1

    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method protected implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0

    return-void
.end method

.method protected implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0

    return-void
.end method

.method protected implReplaceWith([B)V
    .locals 0

    return-void
.end method

.method protected implReset()V
    .locals 0

    return-void
.end method

.method public isLegalReplacement([B)Z
    .locals 7

    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->cachedDecoder:Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/charset/CharsetDecoder;

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v3, v5}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v3, v5}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Ljava/nio/charset/CharsetEncoder;->cachedDecoder:Ljava/lang/ref/WeakReference;

    :goto_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v1, v5}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    return v5

    :cond_1
    invoke-virtual {v3}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    goto :goto_0
.end method

.method public malformedInputAction()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method

.method public final maxBytesPerChar()F
    .locals 1

    iget v0, p0, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar:F

    return v0
.end method

.method public final onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V

    return-object p0
.end method

.method public final onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V

    return-object p0
.end method

.method public final replaceWith([B)Ljava/nio/charset/CharsetEncoder;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Null replacement"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Empty replacement"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    int-to-float v1, v0

    iget v2, p0, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Replacement too long"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->isLegalReplacement([B)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Illegal replacement"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    iget-object v1, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->implReplaceWith([B)V

    return-object p0
.end method

.method public final replacement()[B
    .locals 2

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    iget-object v1, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public final reset()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->implReset()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    return-object p0
.end method

.method public unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method
