.class public Lcom/android/internal/telephony/gsm/SimTlv;
.super Ljava/lang/Object;
.source "SimTlv.java"


# instance fields
.field mCurDataLength:I

.field mCurDataOffset:I

.field mCurOffset:I

.field mHasValidTlvObject:Z

.field mRecord:[B

.field mTlvLength:I

.field mTlvOffset:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iput p2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mTlvOffset:I

    iput p3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mTlvLength:I

    iput p2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SimTlv;->parseCurrentTlvObject()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    return-void
.end method

.method private parseCurrentTlvObject()Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    aget-byte v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xff

    if-ne v1, v2, :cond_1

    :cond_0
    return v4

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x80

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataOffset:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataOffset:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mTlvOffset:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mTlvLength:I

    add-int/2addr v2, v3

    if-le v1, v2, :cond_4

    return v4

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x81

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataOffset:I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    return v4

    :cond_3
    return v4

    :cond_4
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public getData()[B
    .locals 5

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataOffset:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method

.method public getTag()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public isValidObject()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    return v0
.end method

.method public nextObject()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataOffset:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SimTlv;->parseCurrentTlvObject()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    return v0
.end method
