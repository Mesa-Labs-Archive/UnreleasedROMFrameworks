.class public Ljava/io/StringBufferInputStream;
.super Ljava/io/InputStream;
.source "StringBufferInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected buffer:Ljava/lang/String;

.field protected count:I

.field protected pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Ljava/io/StringBufferInputStream;->buffer:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/io/StringBufferInputStream;->count:I

    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/io/StringBufferInputStream;->count:I

    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/io/StringBufferInputStream;->pos:I

    iget v1, p0, Ljava/io/StringBufferInputStream;->count:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljava/io/StringBufferInputStream;->buffer:Ljava/lang/String;

    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/StringBufferInputStream;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    and-int/lit16 v0, v0, 0xff

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 7

    const/4 v6, 0x0

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    :goto_0
    monitor-exit p0

    throw v4

    :cond_0
    if-ltz p2, :cond_1

    :try_start_1
    array-length v4, p1

    if-le p2, v4, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_2
    if-ltz p3, :cond_1

    add-int v4, p2, p3

    array-length v5, p1

    if-gt v4, v5, :cond_1

    add-int v4, p2, p3

    if-ltz v4, :cond_1

    iget v4, p0, Ljava/io/StringBufferInputStream;->pos:I

    iget v5, p0, Ljava/io/StringBufferInputStream;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v4, v5, :cond_3

    const/4 v4, -0x1

    monitor-exit p0

    return v4

    :cond_3
    :try_start_2
    iget v4, p0, Ljava/io/StringBufferInputStream;->count:I

    iget v5, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int v0, v4, v5

    if-le p3, v0, :cond_4

    move p3, v0

    :cond_4
    if-gtz p3, :cond_5

    monitor-exit p0

    return v6

    :cond_5
    :try_start_3
    iget-object v3, p0, Ljava/io/StringBufferInputStream;->buffer:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, p3

    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_6

    add-int/lit8 v2, p2, 0x1

    :try_start_4
    iget v4, p0, Ljava/io/StringBufferInputStream;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/io/StringBufferInputStream;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, p1, p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move p2, v2

    goto :goto_1

    :cond_6
    monitor-exit p0

    return p3

    :catchall_1
    move-exception v4

    move p2, v2

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skip(J)J
    .locals 5

    const-wide/16 v2, 0x0

    monitor-enter p0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    monitor-exit p0

    return-wide v2

    :cond_0
    :try_start_0
    iget v0, p0, Ljava/io/StringBufferInputStream;->count:I

    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget v0, p0, Ljava/io/StringBufferInputStream;->count:I

    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I

    sub-int/2addr v0, v1

    int-to-long p1, v0

    :cond_1
    iget v0, p0, Ljava/io/StringBufferInputStream;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
