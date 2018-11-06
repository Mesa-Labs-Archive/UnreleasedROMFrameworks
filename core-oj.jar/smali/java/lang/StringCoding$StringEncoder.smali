.class Ljava/lang/StringCoding$StringEncoder;
.super Ljava/lang/Object;
.source "StringCoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StringCoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringEncoder"
.end annotation


# instance fields
.field private ce:Ljava/nio/charset/CharsetEncoder;

.field private cs:Ljava/nio/charset/Charset;

.field private final isTrusted:Z

.field private final requestedCharsetName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljava/lang/StringCoding$StringEncoder;->requestedCharsetName:Ljava/lang/String;

    iput-object p1, p0, Ljava/lang/StringCoding$StringEncoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/StringCoding$StringEncoder;->ce:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Ljava/lang/StringCoding$StringEncoder;->isTrusted:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/StringCoding$StringEncoder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/StringCoding$StringEncoder;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method charsetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/lang/StringCoding$StringEncoder;->cs:Ljava/nio/charset/Charset;

    instance-of v0, v0, Lsun/nio/cs/HistoricallyNamedCharset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/lang/StringCoding$StringEncoder;->cs:Ljava/nio/charset/Charset;

    check-cast v0, Lsun/nio/cs/HistoricallyNamedCharset;

    invoke-interface {v0}, Lsun/nio/cs/HistoricallyNamedCharset;->historicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/StringCoding$StringEncoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method encode([CII)[B
    .locals 10

    iget-object v7, p0, Ljava/lang/StringCoding$StringEncoder;->ce:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v7}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v7

    invoke-static {p3, v7}, Ljava/lang/StringCoding;->-wrap2(IF)I

    move-result v5

    new-array v0, v5, [B

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    iget-object v7, p0, Ljava/lang/StringCoding$StringEncoder;->ce:Ljava/nio/charset/CharsetEncoder;

    instance-of v7, v7, Lsun/nio/cs/ArrayEncoder;

    if-eqz v7, :cond_1

    iget-object v7, p0, Ljava/lang/StringCoding$StringEncoder;->ce:Ljava/nio/charset/CharsetEncoder;

    check-cast v7, Lsun/nio/cs/ArrayEncoder;

    invoke-interface {v7, p1, p2, p3, v0}, Lsun/nio/cs/ArrayEncoder;->encode([CII[B)I

    move-result v2

    iget-object v7, p0, Ljava/lang/StringCoding$StringEncoder;->cs:Ljava/nio/charset/Charset;

    iget-boolean v8, p0, Ljava/lang/StringCoding$StringEncoder;->isTrusted:Z

    invoke-static {v0, v2, v7, v8}, Ljava/lang/StringCoding;->-wrap0([BILjava/nio/charset/Charset;Z)[B

    move-result-object v7

    return-object v7

    :cond_1
    iget-object v7, p0, Ljava/lang/StringCoding$StringEncoder;->ce:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v7}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v3

    :try_start_0
    iget-object v7, p0, Ljava/lang/StringCoding$StringEncoder;->ce:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->asReadOnlyBuffer()Ljava/nio/CharBuffer;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v1, v9}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_2
    iget-object v7, p0, Ljava/lang/StringCoding$StringEncoder;->ce:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v7, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    iget-object v8, p0, Ljava/lang/StringCoding$StringEncoder;->cs:Ljava/nio/charset/Charset;

    iget-boolean v9, p0, Ljava/lang/StringCoding$StringEncoder;->isTrusted:Z

    invoke-static {v0, v7, v8, v9}, Ljava/lang/StringCoding;->-wrap0([BILjava/nio/charset/Charset;Z)[B

    move-result-object v7

    return-object v7

    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7, v6}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method final requestedCharsetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/lang/StringCoding$StringEncoder;->requestedCharsetName:Ljava/lang/String;

    return-object v0
.end method
