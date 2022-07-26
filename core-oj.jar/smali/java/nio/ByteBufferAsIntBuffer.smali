.class Ljava/nio/ByteBufferAsIntBuffer;
.super Ljava/nio/IntBuffer;
.source "ByteBufferAsIntBuffer.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field protected final bb:Ljava/nio/ByteBuffer;

.field protected final offset:I

.field private final order:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/nio/ByteBufferAsIntBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/nio/ByteBufferAsIntBuffer;->-assertionsDisabled:Z

    return-void
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V
    .locals 4

    invoke-direct {p0, p2, p3, p4, p5}, Ljava/nio/IntBuffer;-><init>(IIII)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->bb:Ljava/nio/ByteBuffer;

    iget-boolean v0, p1, Ljava/nio/ByteBuffer;->isReadOnly:Z

    iput-boolean v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->isReadOnly:Z

    instance-of v0, p1, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Ljava/nio/ByteBuffer;->address:J

    int-to-long v2, p6

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->address:J

    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iput-object p7, p0, Ljava/nio/ByteBufferAsIntBuffer;->order:Ljava/nio/ByteOrder;

    iput p6, p0, Ljava/nio/ByteBufferAsIntBuffer;->offset:I

    return-void
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/IntBuffer;
    .locals 8

    new-instance v0, Ljava/nio/ByteBufferAsIntBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsIntBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->markValue()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->position()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->limit()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/ByteBufferAsIntBuffer;->offset:I

    iget-object v7, p0, Ljava/nio/ByteBufferAsIntBuffer;->order:Ljava/nio/ByteOrder;

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsIntBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public compact()Ljava/nio/IntBuffer;
    .locals 9

    const/4 v3, 0x0

    iget-boolean v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->position()I

    move-result v7

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->limit()I

    move-result v6

    sget-boolean v0, Ljava/nio/ByteBufferAsIntBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    if-le v7, v6, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    if-gt v7, v6, :cond_2

    sub-int v8, v6, v7

    :goto_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->bb:Ljava/nio/ByteBuffer;

    instance-of v0, v0, Ljava/nio/DirectByteBuffer;

    if-nez v0, :cond_3

    iget-object v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v7}, Ljava/nio/ByteBufferAsIntBuffer;->ix(I)I

    move-result v1

    iget-object v2, p0, Ljava/nio/ByteBufferAsIntBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0, v3}, Ljava/nio/ByteBufferAsIntBuffer;->ix(I)I

    move-result v3

    shl-int/lit8 v4, v8, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    :goto_1
    invoke-virtual {p0, v8}, Ljava/nio/ByteBufferAsIntBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsIntBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->discardMark()V

    return-object p0

    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Ljava/nio/ByteBufferAsIntBuffer;->ix(I)I

    move-result v1

    invoke-virtual {p0, v7}, Ljava/nio/ByteBufferAsIntBuffer;->ix(I)I

    move-result v3

    shl-int/lit8 v0, v8, 0x2

    int-to-long v4, v0

    move-object v0, p0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    goto :goto_1
.end method

.method public duplicate()Ljava/nio/IntBuffer;
    .locals 8

    new-instance v0, Ljava/nio/ByteBufferAsIntBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsIntBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->markValue()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->position()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->limit()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/ByteBufferAsIntBuffer;->offset:I

    iget-object v7, p0, Ljava/nio/ByteBufferAsIntBuffer;->order:Ljava/nio/ByteOrder;

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsIntBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public get()I
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->nextGetIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsIntBuffer;->get(I)I

    move-result v0

    return v0
.end method

.method public get(I)I
    .locals 2

    iget-object v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsIntBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsIntBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getIntUnchecked(I)I

    move-result v0

    return v0
.end method

.method public get([III)Ljava/nio/IntBuffer;
    .locals 2

    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsIntBuffer;->checkBounds(III)V

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsIntBuffer;->position:I

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsIntBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->getUnchecked(I[III)V

    iget v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->position:I

    return-object p0
.end method

.method public isDirect()Z
    .locals 1

    iget-object v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    iget-boolean v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->isReadOnly:Z

    return v0
.end method

.method protected ix(I)I
    .locals 2

    shl-int/lit8 v0, p1, 0x2

    iget v1, p0, Ljava/nio/ByteBufferAsIntBuffer;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public put(I)Ljava/nio/IntBuffer;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->nextPutIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/nio/ByteBufferAsIntBuffer;->put(II)Ljava/nio/IntBuffer;

    return-object p0
.end method

.method public put(II)Ljava/nio/IntBuffer;
    .locals 2

    iget-boolean v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->isReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsIntBuffer;->checkIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsIntBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Ljava/nio/ByteBuffer;->putIntUnchecked(II)V

    return-object p0
.end method

.method public put([III)Ljava/nio/IntBuffer;
    .locals 2

    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBufferAsIntBuffer;->checkBounds(III)V

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsIntBuffer;->position:I

    invoke-virtual {p0, v1}, Ljava/nio/ByteBufferAsIntBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->putUnchecked(I[III)V

    iget v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteBufferAsIntBuffer;->position:I

    return-object p0
.end method

.method public slice()Ljava/nio/IntBuffer;
    .locals 10

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->position()I

    move-result v9

    invoke-virtual {p0}, Ljava/nio/ByteBufferAsIntBuffer;->limit()I

    move-result v8

    sget-boolean v0, Ljava/nio/ByteBufferAsIntBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    if-le v9, v8, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    if-gt v9, v8, :cond_1

    sub-int v4, v8, v9

    :goto_0
    shl-int/lit8 v0, v9, 0x2

    iget v1, p0, Ljava/nio/ByteBufferAsIntBuffer;->offset:I

    add-int v6, v0, v1

    sget-boolean v0, Ljava/nio/ByteBufferAsIntBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_2

    if-gez v6, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/nio/ByteBufferAsIntBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsIntBuffer;->bb:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Ljava/nio/ByteBufferAsIntBuffer;->order:Ljava/nio/ByteOrder;

    const/4 v2, -0x1

    move v5, v4

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsIntBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0
.end method
