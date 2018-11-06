.class Lcom/android/internal/telephony/test/LineReader;
.super Ljava/lang/Object;
.source "ModelInterpreter.java"


# static fields
.field static final BUFFER_SIZE:I = 0x1000


# instance fields
.field mBuffer:[B

.field mInStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/test/LineReader;->mBuffer:[B

    iput-object p1, p0, Lcom/android/internal/telephony/test/LineReader;->mInStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method getNextLine()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/LineReader;->getNextLine(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNextLine(Z)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/test/LineReader;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-gez v5, :cond_0

    return-object v10

    :cond_0
    if-eqz p1, :cond_2

    const/16 v6, 0x1a

    if-ne v5, v6, :cond_2

    :cond_1
    move v3, v4

    :goto_1
    :try_start_1
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/test/LineReader;->mBuffer:[B

    const-string/jumbo v8, "US-ASCII"

    const/4 v9, 0x0

    invoke-direct {v6, v7, v9, v3, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v6

    :cond_2
    const/16 v6, 0xd

    if-eq v5, v6, :cond_3

    const/16 v6, 0xa

    if-ne v5, v6, :cond_4

    :cond_3
    if-nez v4, :cond_1

    move v3, v4

    :goto_2
    move v4, v3

    goto :goto_0

    :cond_4
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/test/LineReader;->mBuffer:[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v3, v4, 0x1

    int-to-byte v7, v5

    :try_start_3
    aput-byte v7, v6, v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_3
    return-object v10

    :catch_1
    move-exception v2

    move v3, v4

    :goto_4
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v7, "ATChannel: buffer overflow"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v1

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v7, "ATChannel: implausable UnsupportedEncodingException"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v10

    :catch_3
    move-exception v0

    move v3, v4

    goto :goto_3

    :catch_4
    move-exception v2

    goto :goto_4
.end method

.method getNextLineCtrlZ()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/LineReader;->getNextLine(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
