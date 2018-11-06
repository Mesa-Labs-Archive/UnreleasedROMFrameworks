.class public final Lcom/android/org/conscrypt/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/Base64$InvalidBase64ByteException;
    }
.end annotation


# static fields
.field private static final BASE_64_ALPHABET:[B

.field private static final END_OF_INPUT:B = -0x3t

.field private static final FIRST_OUTPUT_BYTE_MASK:I = 0xfc0000

.field private static final FOURTH_OUTPUT_BYTE_MASK:I = 0x3f

.field private static final PAD_AS_BYTE:B = -0x1t

.field private static final SECOND_OUTPUT_BYTE_MASK:I = 0x3f000

.field private static final THIRD_OUTPUT_BYTE_MASK:I = 0xfc0

.field private static final WHITESPACE_AS_BYTE:B = -0x2t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/org/conscrypt/Base64;->initializeBase64Alphabet()[B

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/Base64;->BASE_64_ALPHABET:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static base64AlphabetToNumericalValue(B)B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/Base64$InvalidBase64ByteException;
        }
    .end annotation

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x41

    int-to-byte v0, v0

    return v0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0x1a

    int-to-byte v0, v0

    return v0

    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x30

    add-int/lit8 v0, v0, 0x34

    int-to-byte v0, v0

    return v0

    :cond_2
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_3

    const/16 v0, 0x3e

    return v0

    :cond_3
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_4

    const/16 v0, 0x3f

    return v0

    :cond_4
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_5

    const/4 v0, -0x1

    return v0

    :cond_5
    const/16 v0, 0x20

    if-eq p0, v0, :cond_6

    const/16 v0, 0x9

    if-ne p0, v0, :cond_7

    :cond_6
    const/4 v0, -0x2

    return v0

    :cond_7
    const/16 v0, 0xd

    if-eq p0, v0, :cond_6

    const/16 v0, 0xa

    if-eq p0, v0, :cond_6

    new-instance v0, Lcom/android/org/conscrypt/Base64$InvalidBase64ByteException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/Base64$InvalidBase64ByteException;-><init>(Lcom/android/org/conscrypt/Base64$InvalidBase64ByteException;)V

    throw v0
.end method

.method private static checkNoTrailingAndReturn(Ljava/io/ByteArrayOutputStream;[BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/Base64$InvalidBase64ByteException;
        }
    .end annotation

    :goto_0
    if-ge p2, p3, :cond_1

    aget-byte v1, p1, p2

    invoke-static {v1}, Lcom/android/org/conscrypt/Base64;->base64AlphabetToNumericalValue(B)B

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static computeEncodingOutputLen(I)I
    .locals 3

    rem-int/lit8 v0, p0, 0x3

    div-int/lit8 v2, p0, 0x3

    mul-int/lit8 v1, v2, 0x4

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x4

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x4

    goto :goto_0
.end method

.method public static decode([B)[B
    .locals 1

    array-length v0, p0

    invoke-static {p0, v0}, Lcom/android/org/conscrypt/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)[B
    .locals 12

    const/4 v7, 0x0

    const/4 v11, -0x1

    const/4 v10, -0x3

    array-length v8, p0

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    div-int/lit8 v8, v3, 0x4

    mul-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, 0x3

    invoke-direct {v5, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v8, 0x1

    new-array v6, v8, [I

    :goto_0
    const/4 v8, 0x0

    :try_start_0
    aget v8, v6, v8

    if-ge v8, v3, :cond_8

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_1
    const/4 v8, 0x4

    if-ge v4, v8, :cond_7

    invoke-static {p0, v6, v3}, Lcom/android/org/conscrypt/Base64;->getNextByte([B[II)B

    move-result v1

    if-eq v1, v10, :cond_0

    if-ne v1, v11, :cond_6

    :cond_0
    packed-switch v4, :pswitch_data_0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :pswitch_0
    if-ne v1, v10, :cond_1

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    :cond_1
    return-object v7

    :pswitch_1
    if-ne v1, v10, :cond_2

    const/4 v8, 0x0

    aget v8, v6, v8

    invoke-static {v5, p0, v8, v3}, Lcom/android/org/conscrypt/Base64;->checkNoTrailingAndReturn(Ljava/io/ByteArrayOutputStream;[BII)[B

    move-result-object v7

    return-object v7

    :cond_2
    const/4 v8, 0x0

    aget v9, v6, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v6, v8

    invoke-static {p0, v6, v3}, Lcom/android/org/conscrypt/Base64;->getNextByte([B[II)B

    move-result v1

    if-ne v1, v10, :cond_3

    const/4 v8, 0x0

    aget v8, v6, v8

    invoke-static {v5, p0, v8, v3}, Lcom/android/org/conscrypt/Base64;->checkNoTrailingAndReturn(Ljava/io/ByteArrayOutputStream;[BII)[B

    move-result-object v7

    return-object v7

    :cond_3
    if-ne v1, v11, :cond_4

    shr-int/lit8 v0, v0, 0x4

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v8, 0x0

    aget v8, v6, v8

    invoke-static {v5, p0, v8, v3}, Lcom/android/org/conscrypt/Base64;->checkNoTrailingAndReturn(Ljava/io/ByteArrayOutputStream;[BII)[B

    move-result-object v7

    return-object v7

    :cond_4
    return-object v7

    :pswitch_2
    if-ne v1, v11, :cond_5

    shr-int/lit8 v0, v0, 0x2

    shr-int/lit8 v8, v0, 0x8

    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit16 v8, v0, 0xff

    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_5
    const/4 v8, 0x0

    aget v8, v6, v8

    invoke-static {v5, p0, v8, v3}, Lcom/android/org/conscrypt/Base64;->checkNoTrailingAndReturn(Ljava/io/ByteArrayOutputStream;[BII)[B

    move-result-object v7

    return-object v7

    :cond_6
    shl-int/lit8 v0, v0, 0x6

    and-int/lit16 v8, v1, 0xff

    add-int/2addr v0, v8

    const/4 v8, 0x0

    aget v9, v6, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v6, v8

    goto :goto_2

    :catch_0
    move-exception v2

    return-object v7

    :cond_7
    shr-int/lit8 v8, v0, 0x10

    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v8, v0, 0x8

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit16 v8, v0, 0xff

    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0

    :cond_8
    const/4 v8, 0x0

    aget v8, v6, v8

    invoke-static {v5, p0, v8, v3}, Lcom/android/org/conscrypt/Base64;->checkNoTrailingAndReturn(Ljava/io/ByteArrayOutputStream;[BII)[B
    :try_end_0
    .catch Lcom/android/org/conscrypt/Base64$InvalidBase64ByteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 11

    const/16 v10, 0x3d

    array-length v3, p0

    invoke-static {v3}, Lcom/android/org/conscrypt/Base64;->computeEncodingOutputLen(I)I

    move-result v7

    new-array v4, v7, [B

    const/4 v5, 0x0

    const/4 v1, 0x0

    move v6, v5

    :goto_0
    if-ge v1, v3, :cond_3

    aget-byte v8, p0, v1

    and-int/lit16 v0, v8, 0xff

    add-int/lit8 v8, v1, 0x1

    if-ge v8, v3, :cond_2

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v0, v8

    add-int/lit8 v8, v1, 0x2

    if-ge v8, v3, :cond_1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v8, v1, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v0, v8

    :goto_1
    add-int/lit8 v8, v1, 0x2

    if-ge v8, v3, :cond_0

    add-int/lit8 v5, v6, 0x1

    sget-object v8, Lcom/android/org/conscrypt/Base64;->BASE_64_ALPHABET:[B

    const/high16 v9, 0xfc0000

    and-int/2addr v9, v0

    ushr-int/lit8 v9, v9, 0x12

    aget-byte v8, v8, v9

    aput-byte v8, v4, v6

    move v6, v5

    :cond_0
    add-int/lit8 v8, v1, 0x1

    if-ge v8, v3, :cond_6

    add-int/lit8 v5, v6, 0x1

    sget-object v8, Lcom/android/org/conscrypt/Base64;->BASE_64_ALPHABET:[B

    const v9, 0x3f000

    and-int/2addr v9, v0

    ushr-int/lit8 v9, v9, 0xc

    aget-byte v8, v8, v9

    aput-byte v8, v4, v6

    :goto_2
    add-int/lit8 v6, v5, 0x1

    sget-object v8, Lcom/android/org/conscrypt/Base64;->BASE_64_ALPHABET:[B

    and-int/lit16 v9, v0, 0xfc0

    ushr-int/lit8 v9, v9, 0x6

    aget-byte v8, v8, v9

    aput-byte v8, v4, v5

    add-int/lit8 v5, v6, 0x1

    sget-object v8, Lcom/android/org/conscrypt/Base64;->BASE_64_ALPHABET:[B

    and-int/lit8 v9, v0, 0x3f

    aget-byte v8, v8, v9

    aput-byte v8, v4, v6

    add-int/lit8 v1, v1, 0x3

    move v6, v5

    goto :goto_0

    :cond_1
    shl-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    shl-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_3
    rem-int/lit8 v2, v3, 0x3

    if-lez v2, :cond_5

    add-int/lit8 v5, v6, 0x1

    aput-byte v10, v4, v6

    const/4 v8, 0x1

    if-ne v2, v8, :cond_4

    add-int/lit8 v6, v5, 0x1

    aput-byte v10, v4, v5

    move v5, v6

    :cond_4
    :goto_3
    new-instance v8, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v8, v4, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v8

    :cond_5
    move v5, v6

    goto :goto_3

    :cond_6
    move v5, v6

    goto :goto_2
.end method

.method private static getNextByte([B[II)B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/Base64$InvalidBase64ByteException;
        }
    .end annotation

    const/4 v2, 0x0

    :goto_0
    aget v1, p1, v2

    if-ge v1, p2, :cond_1

    aget v1, p1, v2

    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/android/org/conscrypt/Base64;->base64AlphabetToNumericalValue(B)B

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    aget v1, p1, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v2

    goto :goto_0

    :cond_1
    const/4 v1, -0x3

    return v1
.end method

.method private static initializeBase64Alphabet()[B
    .locals 2

    const-string/jumbo v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method
