.class Ljava/util/Base64$EncOutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncOutputStream"
.end annotation


# instance fields
.field private b0:I

.field private b1:I

.field private b2:I

.field private final base64:[C

.field private closed:Z

.field private final doPadding:Z

.field private leftover:I

.field private final linemax:I

.field private linepos:I

.field private final newline:[B


# direct methods
.method constructor <init>(Ljava/io/OutputStream;[C[BIZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput v0, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    iput-boolean v0, p0, Ljava/util/Base64$EncOutputStream;->closed:Z

    iput v0, p0, Ljava/util/Base64$EncOutputStream;->linepos:I

    iput-object p2, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iput-object p3, p0, Ljava/util/Base64$EncOutputStream;->newline:[B

    iput p4, p0, Ljava/util/Base64$EncOutputStream;->linemax:I

    iput-boolean p5, p0, Ljava/util/Base64$EncOutputStream;->doPadding:Z

    return-void
.end method

.method private checkNewline()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ljava/util/Base64$EncOutputStream;->linepos:I

    iget v1, p0, Ljava/util/Base64$EncOutputStream;->linemax:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/Base64$EncOutputStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Base64$EncOutputStream;->linepos:I

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/16 v4, 0x3d

    iget-boolean v0, p0, Ljava/util/Base64$EncOutputStream;->closed:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Ljava/util/Base64$EncOutputStream;->closed:Z

    iget v0, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Ljava/util/Base64$EncOutputStream;->checkNewline()V

    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v2, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    shr-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v2, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    shl-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-boolean v0, p0, Ljava/util/Base64$EncOutputStream;->doPadding:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Ljava/util/Base64$EncOutputStream;->checkNewline()V

    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v2, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    shr-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v2, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    shl-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0x3f

    iget v3, p0, Ljava/util/Base64$EncOutputStream;->b1:I

    shr-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v2, p0, Ljava/util/Base64$EncOutputStream;->b1:I

    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-boolean v0, p0, Ljava/util/Base64$EncOutputStream;->doPadding:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/util/Base64$EncOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    iget-boolean v4, p0, Ljava/util/Base64$EncOutputStream;->closed:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Stream is closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_2
    array-length v4, p1

    sub-int/2addr v4, p2

    if-gt p3, v4, :cond_1

    if-nez p3, :cond_3

    return-void

    :cond_3
    iget v4, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    if-eqz v4, :cond_6

    iget v4, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    if-ne v4, v8, :cond_5

    add-int/lit8 v3, p2, 0x1

    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Ljava/util/Base64$EncOutputStream;->b1:I

    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_4

    iget v4, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    return-void

    :cond_4
    move p2, v3

    :cond_5
    add-int/lit8 v3, p2, 0x1

    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Ljava/util/Base64$EncOutputStream;->b2:I

    add-int/lit8 p3, p3, -0x1

    invoke-direct {p0}, Ljava/util/Base64$EncOutputStream;->checkNewline()V

    iget-object v4, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v6, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    shr-int/lit8 v6, v6, 0x2

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    iget-object v4, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v6, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    shl-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    iget v7, p0, Ljava/util/Base64$EncOutputStream;->b1:I

    shr-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    iget-object v4, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v6, p0, Ljava/util/Base64$EncOutputStream;->b1:I

    shl-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    iget v7, p0, Ljava/util/Base64$EncOutputStream;->b2:I

    shr-int/lit8 v7, v7, 0x6

    or-int/2addr v6, v7

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    iget-object v4, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    iget v6, p0, Ljava/util/Base64$EncOutputStream;->b2:I

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    iget v4, p0, Ljava/util/Base64$EncOutputStream;->linepos:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Ljava/util/Base64$EncOutputStream;->linepos:I

    move p2, v3

    :cond_6
    div-int/lit8 v1, p3, 0x3

    mul-int/lit8 v4, v1, 0x3

    sub-int v4, p3, v4

    iput v4, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    move v2, v1

    move v3, p2

    :goto_0
    add-int/lit8 v1, v2, -0x1

    if-lez v2, :cond_7

    invoke-direct {p0}, Ljava/util/Base64$EncOutputStream;->checkNewline()V

    add-int/lit8 p2, v3, 0x1

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v3, p2, 0x1

    aget-byte v5, p1, p2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 p2, v3, 0x1

    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    iget-object v4, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    ushr-int/lit8 v6, v0, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    iget-object v4, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    ushr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    iget-object v4, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    ushr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    iget-object v4, p0, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/Base64$EncOutputStream;->base64:[C

    and-int/lit8 v6, v0, 0x3f

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    iget v4, p0, Ljava/util/Base64$EncOutputStream;->linepos:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Ljava/util/Base64$EncOutputStream;->linepos:I

    move v2, v1

    move v3, p2

    goto :goto_0

    :cond_7
    iget v4, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    if-ne v4, v8, :cond_8

    add-int/lit8 p2, v3, 0x1

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    :goto_1
    return-void

    :cond_8
    iget v4, p0, Ljava/util/Base64$EncOutputStream;->leftover:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    add-int/lit8 p2, v3, 0x1

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Ljava/util/Base64$EncOutputStream;->b0:I

    add-int/lit8 v3, p2, 0x1

    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Ljava/util/Base64$EncOutputStream;->b1:I

    move p2, v3

    goto :goto_1

    :cond_9
    move p2, v3

    goto :goto_1
.end method
