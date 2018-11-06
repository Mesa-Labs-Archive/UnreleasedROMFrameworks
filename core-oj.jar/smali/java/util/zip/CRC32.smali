.class public Ljava/util/zip/CRC32;
.super Ljava/lang/Object;
.source "CRC32.java"

# interfaces
.implements Ljava/util/zip/Checksum;


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private crc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/zip/CRC32;->-assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native update(II)I
.end method

.method private static native updateByteBuffer(IJII)I
.end method

.method private static native updateBytes(I[BII)I
.end method


# virtual methods
.method public getValue()J
    .locals 4

    iget v0, p0, Ljava/util/zip/CRC32;->crc:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/CRC32;->crc:I

    return-void
.end method

.method public update(I)V
    .locals 1

    iget v0, p0, Ljava/util/zip/CRC32;->crc:I

    invoke-static {v0, p1}, Ljava/util/zip/CRC32;->update(II)I

    move-result v0

    iput v0, p0, Ljava/util/zip/CRC32;->crc:I

    return-void
.end method

.method public update(Ljava/nio/ByteBuffer;)V
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sget-boolean v4, Ljava/util/zip/CRC32;->-assertionsDisabled:Z

    if-nez v4, :cond_0

    if-le v2, v1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    sub-int v3, v1, v2

    if-gtz v3, :cond_1

    return-void

    :cond_1
    instance-of v4, p1, Lsun/nio/ch/DirectBuffer;

    if-eqz v4, :cond_2

    iget v5, p0, Ljava/util/zip/CRC32;->crc:I

    move-object v4, p1

    check-cast v4, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v4}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v6

    invoke-static {v5, v6, v7, v2, v3}, Ljava/util/zip/CRC32;->updateByteBuffer(IJII)I

    move-result v4

    iput v4, p0, Ljava/util/zip/CRC32;->crc:I

    :goto_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Ljava/util/zip/CRC32;->crc:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v4, v5, v6, v3}, Ljava/util/zip/CRC32;->updateBytes(I[BII)I

    move-result v4

    iput v4, p0, Ljava/util/zip/CRC32;->crc:I

    goto :goto_0

    :cond_3
    new-array v0, v3, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget v4, p0, Ljava/util/zip/CRC32;->crc:I

    array-length v5, v0

    invoke-static {v4, v0, v6, v5}, Ljava/util/zip/CRC32;->updateBytes(I[BII)I

    move-result v4

    iput v4, p0, Ljava/util/zip/CRC32;->crc:I

    goto :goto_0
.end method

.method public update([B)V
    .locals 3

    iget v0, p0, Ljava/util/zip/CRC32;->crc:I

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Ljava/util/zip/CRC32;->updateBytes(I[BII)I

    move-result v0

    iput v0, p0, Ljava/util/zip/CRC32;->crc:I

    return-void
.end method

.method public update([BII)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_1

    iget v0, p0, Ljava/util/zip/CRC32;->crc:I

    invoke-static {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->updateBytes(I[BII)I

    move-result v0

    iput v0, p0, Ljava/util/zip/CRC32;->crc:I

    return-void
.end method
