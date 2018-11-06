.class public Ljava/util/Base64$Decoder;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Decoder"
.end annotation


# static fields
.field static final RFC2045:Ljava/util/Base64$Decoder;

.field static final RFC4648:Ljava/util/Base64$Decoder;

.field static final RFC4648_URLSAFE:Ljava/util/Base64$Decoder;

.field private static final fromBase64:[I

.field private static final fromBase64URL:[I


# instance fields
.field private final isMIME:Z

.field private final isURL:Z


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Ljava/util/Base64$Decoder;->fromBase64:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x3d

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    const/16 v1, 0x100

    new-array v1, v1, [I

    sput-object v1, Ljava/util/Base64$Decoder;->fromBase64:[I

    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64:[I

    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Ljava/util/Base64$Encoder;->-get0()[C

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64:[I

    invoke-static {}, Ljava/util/Base64$Encoder;->-get0()[C

    move-result-object v2

    aget-char v2, v2, v0

    aput v0, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64:[I

    aput v4, v1, v7

    const/16 v1, 0x100

    new-array v1, v1, [I

    sput-object v1, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    :goto_1
    invoke-static {}, Ljava/util/Base64$Encoder;->-get1()[C

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    invoke-static {}, Ljava/util/Base64$Encoder;->-get1()[C

    move-result-object v2

    aget-char v2, v2, v0

    aput v0, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    aput v4, v1, v7

    new-instance v1, Ljava/util/Base64$Decoder;

    invoke-direct {v1, v3, v3}, Ljava/util/Base64$Decoder;-><init>(ZZ)V

    sput-object v1, Ljava/util/Base64$Decoder;->RFC4648:Ljava/util/Base64$Decoder;

    new-instance v1, Ljava/util/Base64$Decoder;

    invoke-direct {v1, v6, v3}, Ljava/util/Base64$Decoder;-><init>(ZZ)V

    sput-object v1, Ljava/util/Base64$Decoder;->RFC4648_URLSAFE:Ljava/util/Base64$Decoder;

    new-instance v1, Ljava/util/Base64$Decoder;

    invoke-direct {v1, v3, v6}, Ljava/util/Base64$Decoder;-><init>(ZZ)V

    sput-object v1, Ljava/util/Base64$Decoder;->RFC2045:Ljava/util/Base64$Decoder;

    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ljava/util/Base64$Decoder;->isURL:Z

    iput-boolean p2, p0, Ljava/util/Base64$Decoder;->isMIME:Z

    return-void
.end method

.method private decode0([BII[B)I
    .locals 11

    const/4 v9, 0x6

    iget-boolean v7, p0, Ljava/util/Base64$Decoder;->isURL:Z

    if-eqz v7, :cond_1

    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    :goto_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x12

    move v4, v3

    move v6, p2

    :goto_1
    if-ge v6, p3, :cond_e

    add-int/lit8 p2, v6, 0x1

    aget-byte v7, p1, v6

    and-int/lit16 v0, v7, 0xff

    aget v0, v1, v0

    if-gez v0, :cond_6

    const/4 v7, -0x2

    if-ne v0, v7, :cond_4

    if-ne v5, v9, :cond_3

    if-eq p2, p3, :cond_0

    add-int/lit8 v6, p2, 0x1

    aget-byte v7, p1, p2

    const/16 v8, 0x3d

    if-eq v7, v8, :cond_2

    move p2, v6

    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Input byte array has wrong 4-byte ending unit"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64:[I

    goto :goto_0

    :cond_2
    move p2, v6

    :cond_3
    const/16 v7, 0x12

    if-eq v5, v7, :cond_0

    :goto_2
    if-ne v5, v9, :cond_7

    add-int/lit8 v3, v4, 0x1

    shr-int/lit8 v7, v2, 0x10

    int-to-byte v7, v7

    aput-byte v7, p4, v4

    move v6, p2

    :goto_3
    if-ge v6, p3, :cond_b

    iget-boolean v7, p0, Ljava/util/Base64$Decoder;->isMIME:Z

    if-eqz v7, :cond_9

    add-int/lit8 p2, v6, 0x1

    aget-byte v7, p1, v6

    aget v7, v1, v7

    if-gez v7, :cond_a

    move v6, p2

    goto :goto_3

    :cond_4
    iget-boolean v7, p0, Ljava/util/Base64$Decoder;->isMIME:Z

    if-eqz v7, :cond_5

    move v6, p2

    goto :goto_1

    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Illegal base64 character "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, p2, -0x1

    aget-byte v9, p1, v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6
    shl-int v7, v0, v5

    or-int/2addr v2, v7

    add-int/lit8 v5, v5, -0x6

    if-gez v5, :cond_d

    add-int/lit8 v3, v4, 0x1

    shr-int/lit8 v7, v2, 0x10

    int-to-byte v7, v7

    aput-byte v7, p4, v4

    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    aput-byte v7, p4, v3

    add-int/lit8 v3, v4, 0x1

    int-to-byte v7, v2

    aput-byte v7, p4, v4

    const/16 v5, 0x12

    const/4 v2, 0x0

    :goto_4
    move v4, v3

    move v6, p2

    goto/16 :goto_1

    :cond_7
    if-nez v5, :cond_8

    add-int/lit8 v3, v4, 0x1

    shr-int/lit8 v7, v2, 0x10

    int-to-byte v7, v7

    aput-byte v7, p4, v4

    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    aput-byte v7, p4, v3

    move v3, v4

    move v6, p2

    goto :goto_3

    :cond_8
    const/16 v7, 0xc

    if-ne v5, v7, :cond_c

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Last unit does not have enough valid bits"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_9
    move p2, v6

    :cond_a
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Input byte array has incorrect ending byte at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_b
    return v3

    :cond_c
    move v3, v4

    move v6, p2

    goto/16 :goto_3

    :cond_d
    move v3, v4

    goto :goto_4

    :cond_e
    move p2, v6

    goto/16 :goto_2
.end method

.method private outLength([BII)I
    .locals 10

    const/4 v9, -0x1

    const/16 v8, 0x3d

    const/4 v7, 0x0

    iget-boolean v6, p0, Ljava/util/Base64$Decoder;->isURL:Z

    if-eqz v6, :cond_0

    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    :goto_0
    const/4 v4, 0x0

    sub-int v2, p3, p2

    if-nez v2, :cond_1

    return v7

    :cond_0
    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64:[I

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    if-ge v2, v6, :cond_3

    iget-boolean v6, p0, Ljava/util/Base64$Decoder;->isMIME:Z

    if-eqz v6, :cond_2

    aget v6, v1, v7

    if-ne v6, v9, :cond_2

    return v7

    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Input byte[] should at least have 2 bytes for base64 bytes"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    iget-boolean v6, p0, Ljava/util/Base64$Decoder;->isMIME:Z

    if-eqz v6, :cond_8

    const/4 v3, 0x0

    move v5, p2

    :goto_1
    if-ge v5, p3, :cond_9

    add-int/lit8 p2, v5, 0x1

    aget-byte v6, p1, v5

    and-int/lit16 v0, v6, 0xff

    if-ne v0, v8, :cond_6

    sub-int v6, p3, p2

    add-int/lit8 v6, v6, 0x1

    sub-int/2addr v2, v6

    :goto_2
    sub-int/2addr v2, v3

    :cond_4
    :goto_3
    if-nez v4, :cond_5

    and-int/lit8 v6, v2, 0x3

    if-eqz v6, :cond_5

    and-int/lit8 v6, v2, 0x3

    rsub-int/lit8 v4, v6, 0x4

    :cond_5
    add-int/lit8 v6, v2, 0x3

    div-int/lit8 v6, v6, 0x4

    mul-int/lit8 v6, v6, 0x3

    sub-int/2addr v6, v4

    return v6

    :cond_6
    aget v0, v1, v0

    if-ne v0, v9, :cond_7

    add-int/lit8 v3, v3, 0x1

    :cond_7
    move v5, p2

    goto :goto_1

    :cond_8
    add-int/lit8 v6, p3, -0x1

    aget-byte v6, p1, v6

    if-ne v6, v8, :cond_4

    const/4 v4, 0x1

    add-int/lit8 v6, p3, -0x2

    aget-byte v6, p1, v6

    if-ne v6, v8, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    move p2, v5

    goto :goto_2
.end method


# virtual methods
.method public decode([B[B)I
    .locals 3

    const/4 v2, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v2, v1}, Ljava/util/Base64$Decoder;->outLength([BII)I

    move-result v0

    array-length v1, p2

    if-ge v1, v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Output byte array is too small for decoding all input bytes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    array-length v1, p1

    invoke-direct {p0, p1, v2, v1, p2}, Ljava/util/Base64$Decoder;->decode0([BII[B)I

    move-result v1

    return v1
.end method

.method public decode(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int v4, v6, v7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    add-int v3, v6, v7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    invoke-direct {p0, v5, v4, v3}, Ljava/util/Base64$Decoder;->outLength([BII)I

    move-result v6

    new-array v0, v6, [B

    invoke-direct {p0, v5, v4, v3, v0}, Ljava/util/Base64$Decoder;->decode0([BII[B)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v0, v7, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    return-object v6

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    new-array v5, v6, [B

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    array-length v3, v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v1
.end method

.method public decode(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Base64$Decoder;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public decode([B)[B
    .locals 4

    const/4 v3, 0x0

    array-length v2, p1

    invoke-direct {p0, p1, v3, v2}, Ljava/util/Base64$Decoder;->outLength([BII)I

    move-result v2

    new-array v0, v2, [B

    array-length v2, p1

    invoke-direct {p0, p1, v3, v2, v0}, Ljava/util/Base64$Decoder;->decode0([BII[B)I

    move-result v1

    array-length v2, v0

    if-eq v1, v2, :cond_0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public wrap(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/Base64$DecInputStream;

    iget-boolean v0, p0, Ljava/util/Base64$Decoder;->isURL:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    :goto_0
    iget-boolean v2, p0, Ljava/util/Base64$Decoder;->isMIME:Z

    invoke-direct {v1, p1, v0, v2}, Ljava/util/Base64$DecInputStream;-><init>(Ljava/io/InputStream;[IZ)V

    return-object v1

    :cond_0
    sget-object v0, Ljava/util/Base64$Decoder;->fromBase64:[I

    goto :goto_0
.end method
