.class Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private digit0:B

.field private digit1:B

.field private length:B

.field private tag:B

.field private timeInfo:[B


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 3

    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    const/16 v0, -0x5a

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->tag:B

    iput-byte v1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->length:B

    rem-int/lit8 v0, p1, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    rem-int/lit8 v0, p1, 0x64

    div-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    iget-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    iget-byte v1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x4

    iget-byte v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    add-int/lit8 p2, p2, 0x1

    rem-int/lit8 v0, p2, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    div-int/lit8 v0, p2, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    iget-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    iget-byte v1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x4

    iget-byte v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    rem-int/lit8 v0, p3, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    div-int/lit8 v0, p3, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    iget-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    iget-byte v1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x4

    iget-byte v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    rem-int/lit8 v0, p4, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    div-int/lit8 v0, p4, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    iget-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    iget-byte v1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x4

    iget-byte v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    rem-int/lit8 v0, p5, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    div-int/lit8 v0, p5, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    iget-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    iget-byte v1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x4

    iget-byte v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    rem-int/lit8 v0, p6, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    div-int/lit8 v0, p6, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    iget-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    iget-byte v1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x4

    iget-byte v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    int-to-byte v1, p7

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 2

    iget-byte v1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->tag:B

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-byte v1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->length:B

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
