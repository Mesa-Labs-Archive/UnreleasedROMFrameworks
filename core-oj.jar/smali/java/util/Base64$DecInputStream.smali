.class Ljava/util/Base64$DecInputStream;
.super Ljava/io/InputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecInputStream"
.end annotation


# instance fields
.field private final base64:[I

.field private bits:I

.field private closed:Z

.field private eof:Z

.field private final is:Ljava/io/InputStream;

.field private final isMIME:Z

.field private nextin:I

.field private nextout:I

.field private sbBuf:[B


# direct methods
.method constructor <init>(Ljava/io/InputStream;[IZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput v1, p0, Ljava/util/Base64$DecInputStream;->bits:I

    const/16 v0, 0x12

    iput v0, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    const/4 v0, -0x8

    iput v0, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    iput-boolean v1, p0, Ljava/util/Base64$DecInputStream;->eof:Z

    iput-boolean v1, p0, Ljava/util/Base64$DecInputStream;->closed:Z

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/Base64$DecInputStream;->sbBuf:[B

    iput-object p1, p0, Ljava/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    iput-object p2, p0, Ljava/util/Base64$DecInputStream;->base64:[I

    iput-boolean p3, p0, Ljava/util/Base64$DecInputStream;->isMIME:Z

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/util/Base64$DecInputStream;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/util/Base64$DecInputStream;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Base64$DecInputStream;->closed:Z

    iget-object v0, p0, Ljava/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, -0x1

    iget-object v1, p0, Ljava/util/Base64$DecInputStream;->sbBuf:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Ljava/util/Base64$DecInputStream;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/util/Base64$DecInputStream;->sbBuf:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0xc

    const/4 v8, 0x1

    const/16 v7, 0x12

    const/4 v6, -0x1

    const/4 v5, 0x0

    iget-boolean v3, p0, Ljava/util/Base64$DecInputStream;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Stream is closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-boolean v3, p0, Ljava/util/Base64$DecInputStream;->eof:Z

    if-eqz v3, :cond_1

    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    if-gez v3, :cond_1

    return v6

    :cond_1
    if-ltz p2, :cond_2

    if-gez p3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    :cond_3
    array-length v3, p1

    sub-int/2addr v3, p2

    if-gt p3, v3, :cond_2

    move v1, p2

    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    if-ltz v3, :cond_15

    :cond_4
    move v0, p2

    if-nez p3, :cond_5

    sub-int v3, v0, v1

    return v3

    :cond_5
    add-int/lit8 p2, v0, 0x1

    iget v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    iget v4, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    shr-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    add-int/lit8 p3, p3, -0x1

    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    add-int/lit8 v3, v3, -0x8

    iput v3, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    if-gez v3, :cond_4

    iput v5, p0, Ljava/util/Base64$DecInputStream;->bits:I

    move v0, p2

    :cond_6
    :goto_0
    if-lez p3, :cond_18

    iget-object v3, p0, Ljava/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v6, :cond_b

    iput-boolean v8, p0, Ljava/util/Base64$DecInputStream;->eof:Z

    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    if-eq v3, v7, :cond_17

    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    if-ne v3, v9, :cond_7

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Base64 stream has one un-decoded dangling byte."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    add-int/lit8 p2, v0, 0x1

    iget v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    add-int/lit8 p3, p3, -0x1

    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    if-nez v3, :cond_8

    if-nez p3, :cond_9

    iget v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 v3, v3, 0x8

    iput v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    iput v5, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    :cond_8
    :goto_1
    if-ne p2, v1, :cond_a

    return v6

    :cond_9
    add-int/lit8 v0, p2, 0x1

    iget v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    move p2, v0

    goto :goto_1

    :cond_a
    sub-int v3, p2, v1

    return v3

    :cond_b
    const/16 v3, 0x3d

    if-ne v2, v3, :cond_11

    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    if-eq v3, v7, :cond_c

    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    if-ne v3, v9, :cond_d

    :cond_c
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Illegal base64 ending sequence:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_d
    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_e

    iget-object v3, p0, Ljava/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_c

    :cond_e
    add-int/lit8 p2, v0, 0x1

    iget v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    add-int/lit8 p3, p3, -0x1

    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    if-nez v3, :cond_f

    if-nez p3, :cond_10

    iget v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 v3, v3, 0x8

    iput v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    iput v5, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    :cond_f
    :goto_2
    iput-boolean v8, p0, Ljava/util/Base64$DecInputStream;->eof:Z

    :goto_3
    sub-int v3, p2, v1

    return v3

    :cond_10
    add-int/lit8 v0, p2, 0x1

    iget v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    move p2, v0

    goto :goto_2

    :cond_11
    iget-object v3, p0, Ljava/util/Base64$DecInputStream;->base64:[I

    aget v2, v3, v2

    if-ne v2, v6, :cond_12

    iget-boolean v3, p0, Ljava/util/Base64$DecInputStream;->isMIME:Z

    if-nez v3, :cond_6

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Illegal base64 character "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_12
    iget v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    iget v4, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    shl-int v4, v2, v4

    or-int/2addr v3, v4

    iput v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    if-nez v3, :cond_16

    iput v7, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    const/16 v3, 0x10

    iput v3, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    move p2, v0

    :goto_4
    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    if-ltz v3, :cond_14

    add-int/lit8 v0, p2, 0x1

    iget v3, p0, Ljava/util/Base64$DecInputStream;->bits:I

    iget v4, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    shr-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    add-int/lit8 p3, p3, -0x1

    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    add-int/lit8 v3, v3, -0x8

    iput v3, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    if-nez p3, :cond_13

    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextout:I

    if-ltz v3, :cond_13

    sub-int v3, v0, v1

    return v3

    :cond_13
    move p2, v0

    goto :goto_4

    :cond_14
    iput v5, p0, Ljava/util/Base64$DecInputStream;->bits:I

    :cond_15
    :goto_5
    move v0, p2

    goto/16 :goto_0

    :cond_16
    iget v3, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    add-int/lit8 v3, v3, -0x6

    iput v3, p0, Ljava/util/Base64$DecInputStream;->nextin:I

    move p2, v0

    goto :goto_5

    :cond_17
    move p2, v0

    goto/16 :goto_1

    :cond_18
    move p2, v0

    goto :goto_3
.end method
