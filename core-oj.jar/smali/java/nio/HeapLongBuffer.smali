.class Ljava/nio/HeapLongBuffer;
.super Ljava/nio/LongBuffer;
.source "HeapLongBuffer.java"


# direct methods
.method constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/nio/HeapLongBuffer;-><init>(IIZ)V

    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 7

    const/4 v2, 0x0

    new-array v5, p1, [J

    const/4 v1, -0x1

    move-object v0, p0

    move v3, p2

    move v4, p1

    move v6, v2

    invoke-direct/range {v0 .. v6}, Ljava/nio/LongBuffer;-><init>(IIII[JI)V

    iput-boolean p3, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    return-void
.end method

.method constructor <init>([JII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/HeapLongBuffer;-><init>([JIIZ)V

    return-void
.end method

.method protected constructor <init>([JIIIII)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapLongBuffer;-><init>([JIIIIIZ)V

    return-void
.end method

.method protected constructor <init>([JIIIIIZ)V
    .locals 7

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p1

    move v6, p6

    invoke-direct/range {v0 .. v6}, Ljava/nio/LongBuffer;-><init>(IIII[JI)V

    iput-boolean p7, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    return-void
.end method

.method constructor <init>([JIIZ)V
    .locals 7

    add-int v3, p2, p3

    array-length v4, p1

    const/4 v1, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Ljava/nio/LongBuffer;-><init>(IIII[JI)V

    iput-boolean p4, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    return-void
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/LongBuffer;
    .locals 8

    new-instance v0, Ljava/nio/HeapLongBuffer;

    iget-object v1, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->markValue()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->limit()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/HeapLongBuffer;->offset:I

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapLongBuffer;-><init>([JIIIIIZ)V

    return-object v0
.end method

.method public compact()Ljava/nio/LongBuffer;
    .locals 5

    iget-boolean v0, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v1

    iget-object v2, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapLongBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapLongBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->discardMark()V

    return-object p0
.end method

.method public duplicate()Ljava/nio/LongBuffer;
    .locals 8

    new-instance v0, Ljava/nio/HeapLongBuffer;

    iget-object v1, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->markValue()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->limit()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/HeapLongBuffer;->offset:I

    iget-boolean v7, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapLongBuffer;-><init>([JIIIIIZ)V

    return-object v0
.end method

.method public get()J
    .locals 2

    iget-object v0, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->nextGetIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public get(I)J
    .locals 2

    iget-object v0, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0, p1}, Ljava/nio/HeapLongBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public get([JII)Ljava/nio/LongBuffer;
    .locals 2

    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapLongBuffer;->checkBounds(III)V

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([JI[JII)V

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapLongBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public isDirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    iget-boolean v0, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    return v0
.end method

.method protected ix(I)I
    .locals 1

    iget v0, p0, Ljava/nio/HeapLongBuffer;->offset:I

    add-int/2addr v0, p1

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public put(IJ)Ljava/nio/LongBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0, p1}, Ljava/nio/HeapLongBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v1

    aput-wide p2, v0, v1

    return-object p0
.end method

.method public put(J)Ljava/nio/LongBuffer;
    .locals 3

    iget-boolean v0, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->nextPutIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v1

    aput-wide p1, v0, v1

    return-object p0
.end method

.method public put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;
    .locals 6

    if-ne p1, p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    iget-boolean v2, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v2}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v2

    :cond_1
    instance-of v2, p1, Ljava/nio/HeapLongBuffer;

    if-eqz v2, :cond_3

    move-object v1, p1

    check-cast v1, Ljava/nio/HeapLongBuffer;

    invoke-virtual {v1}, Ljava/nio/HeapLongBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->remaining()I

    move-result v2

    if-le v0, v2, :cond_2

    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    :cond_2
    iget-object v2, v1, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {v1}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v3

    iget-object v4, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    invoke-virtual {v1}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/HeapLongBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/HeapLongBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    return-object p0

    :cond_3
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->remaining()I

    move-result v2

    if-le v0, v2, :cond_4

    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    :cond_4
    iget-object v2, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v3

    invoke-virtual {p1, v2, v3, v0}, Ljava/nio/LongBuffer;->get([JII)Ljava/nio/LongBuffer;

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/HeapLongBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Ljava/nio/LongBuffer;->put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;

    goto :goto_0
.end method

.method public put([JII)Ljava/nio/LongBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/HeapLongBuffer;->checkBounds(III)V

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_1

    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    move-result v1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([JI[JII)V

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/nio/HeapLongBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public slice()Ljava/nio/LongBuffer;
    .locals 8

    new-instance v0, Ljava/nio/HeapLongBuffer;

    iget-object v1, p0, Ljava/nio/HeapLongBuffer;->hb:[J

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->remaining()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->remaining()I

    move-result v5

    invoke-virtual {p0}, Ljava/nio/HeapLongBuffer;->position()I

    move-result v2

    iget v3, p0, Ljava/nio/HeapLongBuffer;->offset:I

    add-int v6, v2, v3

    iget-boolean v7, p0, Ljava/nio/HeapLongBuffer;->isReadOnly:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapLongBuffer;-><init>([JIIIIIZ)V

    return-object v0
.end method
