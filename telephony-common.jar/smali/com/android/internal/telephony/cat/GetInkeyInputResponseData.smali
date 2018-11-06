.class Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# static fields
.field protected static final GET_INKEY_NO:B = 0x0t

.field protected static final GET_INKEY_YES:B = 0x1t


# instance fields
.field private mDuration:B

.field public mInData:Ljava/lang/String;

.field private mIsDuration:Z

.field private mIsPacked:Z

.field private mIsUcs2:Z

.field private mIsYesNo:Z

.field private mTimeUnit:B

.field private mYesNoResponse:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/Duration;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsDuration:Z

    iget-object v0, p1, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->value()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mTimeUnit:B

    iget v0, p1, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mDuration:B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    iput-object p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v8, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsDuration:Z

    if-eqz v8, :cond_1

    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v8

    or-int/lit16 v4, v8, 0x80

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v8, 0x2

    new-array v1, v8, [B

    iget-byte v8, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mTimeUnit:B

    aput-byte v8, v1, v7

    iget-byte v8, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mDuration:B

    add-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    aput-byte v8, v1, v6

    array-length v6, v1

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v6, v1

    :goto_0
    if-ge v7, v6, :cond_a

    aget-byte v0, v1, v7

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v8

    or-int/lit16 v4, v8, 0x80

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-boolean v8, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    if-eqz v8, :cond_3

    new-array v1, v6, [B

    iget-boolean v8, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    if-eqz v8, :cond_2

    :goto_1
    aput-byte v6, v1, v7

    :goto_2
    array-length v6, v1

    add-int/lit8 v6, v6, 0x1

    const/16 v8, 0xff

    if-gt v6, v8, :cond_7

    array-length v6, v1

    add-int/lit8 v6, v6, 0x1

    invoke-static {p1, v6}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    :goto_3
    iget-boolean v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v6, :cond_8

    const/16 v6, 0x8

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_4
    array-length v6, v1

    :goto_5
    if-ge v7, v6, :cond_a

    aget-byte v0, v1, v7

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_2
    move v6, v7

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    :try_start_0
    iget-boolean v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const-string/jumbo v8, "UTF-16BE"

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_2

    :cond_4
    iget-boolean v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v5

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    new-array v1, v6, [B

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v5, v8, v1, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception v3

    new-array v1, v7, [B

    goto :goto_2

    :cond_5
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_2

    :catch_1
    move-exception v2

    new-array v1, v7, [B

    goto :goto_2

    :cond_6
    new-array v1, v7, [B

    goto :goto_2

    :cond_7
    new-array v1, v7, [B

    goto :goto_3

    :cond_8
    iget-boolean v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v6, :cond_9

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    :cond_9
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    :cond_a
    return-void
.end method
