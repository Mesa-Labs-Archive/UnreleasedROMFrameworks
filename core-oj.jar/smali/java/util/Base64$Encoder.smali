.class public Ljava/util/Base64$Encoder;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Encoder"
.end annotation


# static fields
.field private static final CRLF:[B

.field private static final MIMELINEMAX:I = 0x4c

.field static final RFC2045:Ljava/util/Base64$Encoder;

.field static final RFC4648:Ljava/util/Base64$Encoder;

.field static final RFC4648_URLSAFE:Ljava/util/Base64$Encoder;

.field private static final toBase64:[C

.field private static final toBase64URL:[C


# instance fields
.field private final doPadding:Z

.field private final isURL:Z

.field private final linemax:I

.field private final newline:[B


# direct methods
.method static synthetic -get0()[C
    .locals 1

    sget-object v0, Ljava/util/Base64$Encoder;->toBase64:[C

    return-object v0
.end method

.method static synthetic -get1()[C
    .locals 1

    sget-object v0, Ljava/util/Base64$Encoder;->toBase64URL:[C

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/16 v2, 0x40

    const/4 v4, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x1

    new-array v0, v2, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljava/util/Base64$Encoder;->toBase64:[C

    new-array v0, v2, [C

    fill-array-data v0, :array_1

    sput-object v0, Ljava/util/Base64$Encoder;->toBase64URL:[C

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Ljava/util/Base64$Encoder;->CRLF:[B

    new-instance v0, Ljava/util/Base64$Encoder;

    invoke-direct {v0, v4, v5, v1, v3}, Ljava/util/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v0, Ljava/util/Base64$Encoder;->RFC4648:Ljava/util/Base64$Encoder;

    new-instance v0, Ljava/util/Base64$Encoder;

    invoke-direct {v0, v3, v5, v1, v3}, Ljava/util/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v0, Ljava/util/Base64$Encoder;->RFC4648_URLSAFE:Ljava/util/Base64$Encoder;

    new-instance v0, Ljava/util/Base64$Encoder;

    sget-object v1, Ljava/util/Base64$Encoder;->CRLF:[B

    const/16 v2, 0x4c

    invoke-direct {v0, v4, v1, v2, v3}, Ljava/util/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v0, Ljava/util/Base64$Encoder;->RFC2045:Ljava/util/Base64$Encoder;

    return-void

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data

    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x5fs
    .end array-data

    :array_2
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method private constructor <init>(Z[BIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ljava/util/Base64$Encoder;->isURL:Z

    iput-object p2, p0, Ljava/util/Base64$Encoder;->newline:[B

    iput p3, p0, Ljava/util/Base64$Encoder;->linemax:I

    iput-boolean p4, p0, Ljava/util/Base64$Encoder;->doPadding:Z

    return-void
.end method

.method synthetic constructor <init>(Z[BIZLjava/util/Base64$Encoder;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/Base64$Encoder;-><init>(Z[BIZ)V

    return-void
.end method

.method private encode0([BII[B)I
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/util/Base64$Encoder;->isURL:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    sget-object v5, Ljava/util/Base64$Encoder;->toBase64URL:[C

    :goto_0
    move/from16 v15, p2

    sub-int v19, p3, p2

    div-int/lit8 v19, v19, 0x3

    mul-int/lit8 v14, v19, 0x3

    add-int v12, p2, v14

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Base64$Encoder;->linemax:I

    move/from16 v19, v0

    if-lez v19, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Base64$Encoder;->linemax:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x4

    mul-int/lit8 v19, v19, 0x3

    move/from16 v0, v19

    if-le v14, v0, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Base64$Encoder;->linemax:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x4

    mul-int/lit8 v14, v19, 0x3

    :cond_0
    const/4 v8, 0x0

    move v9, v8

    move/from16 v16, v15

    :goto_1
    move/from16 v0, v16

    if-ge v0, v12, :cond_5

    add-int v19, v16, v14

    move/from16 v0, v19

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    move/from16 v17, v16

    move v10, v9

    move v11, v10

    move/from16 v18, v17

    :goto_2
    move/from16 v0, v18

    if-ge v0, v13, :cond_2

    add-int/lit8 v17, v18, 0x1

    aget-byte v19, p1, v18

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x10

    add-int/lit8 v18, v17, 0x1

    aget-byte v20, p1, v17

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x8

    or-int v19, v19, v20

    add-int/lit8 v17, v18, 0x1

    aget-byte v20, p1, v18

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    or-int v6, v19, v20

    add-int/lit8 v10, v11, 0x1

    ushr-int/lit8 v19, v6, 0x12

    and-int/lit8 v19, v19, 0x3f

    aget-char v19, v5, v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, p4, v11

    add-int/lit8 v11, v10, 0x1

    ushr-int/lit8 v19, v6, 0xc

    and-int/lit8 v19, v19, 0x3f

    aget-char v19, v5, v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, p4, v10

    add-int/lit8 v10, v11, 0x1

    ushr-int/lit8 v19, v6, 0x6

    and-int/lit8 v19, v19, 0x3f

    aget-char v19, v5, v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, p4, v11

    add-int/lit8 v11, v10, 0x1

    and-int/lit8 v19, v6, 0x3f

    aget-char v19, v5, v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, p4, v10

    move/from16 v18, v17

    goto :goto_2

    :cond_1
    sget-object v5, Ljava/util/Base64$Encoder;->toBase64:[C

    goto/16 :goto_0

    :cond_2
    sub-int v19, v13, v16

    div-int/lit8 v19, v19, 0x3

    mul-int/lit8 v7, v19, 0x4

    add-int v8, v9, v7

    move v15, v13

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Base64$Encoder;->linemax:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v7, v0, :cond_4

    move/from16 v0, p3

    if-ge v13, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Base64$Encoder;->newline:[B

    move-object/from16 v20, v0

    const/16 v19, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move v9, v8

    :goto_3
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    aget-byte v2, v20, v19

    add-int/lit8 v8, v9, 0x1

    aput-byte v2, p4, v9

    add-int/lit8 v19, v19, 0x1

    move v9, v8

    goto :goto_3

    :cond_3
    move v8, v9

    :cond_4
    move v9, v8

    move/from16 v16, v15

    goto/16 :goto_1

    :cond_5
    move/from16 v0, v16

    move/from16 v1, p3

    if-ge v0, v1, :cond_9

    add-int/lit8 v15, v16, 0x1

    aget-byte v19, p1, v16

    move/from16 v0, v19

    and-int/lit16 v3, v0, 0xff

    add-int/lit8 v8, v9, 0x1

    shr-int/lit8 v19, v3, 0x2

    aget-char v19, v5, v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, p4, v9

    move/from16 v0, p3

    if-ne v15, v0, :cond_6

    add-int/lit8 v9, v8, 0x1

    shl-int/lit8 v19, v3, 0x4

    and-int/lit8 v19, v19, 0x3f

    aget-char v19, v5, v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, p4, v8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/util/Base64$Encoder;->doPadding:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    add-int/lit8 v8, v9, 0x1

    const/16 v19, 0x3d

    aput-byte v19, p4, v9

    add-int/lit8 v9, v8, 0x1

    const/16 v19, 0x3d

    aput-byte v19, p4, v8

    move v8, v9

    :goto_4
    return v8

    :cond_6
    add-int/lit8 v16, v15, 0x1

    aget-byte v19, p1, v15

    move/from16 v0, v19

    and-int/lit16 v4, v0, 0xff

    add-int/lit8 v9, v8, 0x1

    shl-int/lit8 v19, v3, 0x4

    and-int/lit8 v19, v19, 0x3f

    shr-int/lit8 v20, v4, 0x4

    or-int v19, v19, v20

    aget-char v19, v5, v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, p4, v8

    add-int/lit8 v8, v9, 0x1

    shl-int/lit8 v19, v4, 0x2

    and-int/lit8 v19, v19, 0x3f

    aget-char v19, v5, v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, p4, v9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/util/Base64$Encoder;->doPadding:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    add-int/lit8 v9, v8, 0x1

    const/16 v19, 0x3d

    aput-byte v19, p4, v8

    move v8, v9

    move/from16 v15, v16

    goto :goto_4

    :cond_7
    move/from16 v15, v16

    goto :goto_4

    :cond_8
    move v8, v9

    goto :goto_4

    :cond_9
    move v8, v9

    move/from16 v15, v16

    goto :goto_4
.end method

.method private final outLength(I)I
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-boolean v3, p0, Ljava/util/Base64$Encoder;->doPadding:Z

    if-eqz v3, :cond_1

    add-int/lit8 v2, p1, 0x2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v0, v2, 0x4

    :goto_0
    iget v2, p0, Ljava/util/Base64$Encoder;->linemax:I

    if-lez v2, :cond_0

    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Ljava/util/Base64$Encoder;->linemax:I

    div-int/2addr v2, v3

    iget-object v3, p0, Ljava/util/Base64$Encoder;->newline:[B

    array-length v3, v3

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    :cond_0
    return v0

    :cond_1
    rem-int/lit8 v1, p1, 0x3

    div-int/lit8 v3, p1, 0x3

    mul-int/lit8 v3, v3, 0x4

    if-nez v1, :cond_2

    :goto_1
    add-int v0, v3, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public encode([B[B)I
    .locals 3

    array-length v1, p1

    invoke-direct {p0, v1}, Ljava/util/Base64$Encoder;->outLength(I)I

    move-result v0

    array-length v1, p2

    if-ge v1, v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Output byte array is too small for encoding all input bytes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1, p2}, Ljava/util/Base64$Encoder;->encode0([BII[B)I

    move-result v1

    return v1
.end method

.method public encode(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-direct {p0, v4}, Ljava/util/Base64$Encoder;->outLength(I)I

    move-result v1

    new-array v0, v1, [B

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {p0, v4, v5, v6, v0}, Ljava/util/Base64$Encoder;->encode0([BII[B)I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    array-length v4, v0

    if-eq v2, v4, :cond_0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    return-object v4

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v3, v4, [B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    array-length v4, v3

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5, v4, v0}, Ljava/util/Base64$Encoder;->encode0([BII[B)I

    move-result v2

    goto :goto_0
.end method

.method public encode([B)[B
    .locals 5

    array-length v3, p1

    invoke-direct {p0, v3}, Ljava/util/Base64$Encoder;->outLength(I)I

    move-result v1

    new-array v0, v1, [B

    array-length v3, p1

    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v3, v0}, Ljava/util/Base64$Encoder;->encode0([BII[B)I

    move-result v2

    array-length v3, v0

    if-eq v2, v3, :cond_0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    return-object v3

    :cond_0
    return-object v0
.end method

.method public encodeToString([B)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Base64$Encoder;->encode([B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    array-length v2, v0

    invoke-direct {v1, v0, v3, v3, v2}, Ljava/lang/String;-><init>([BIII)V

    return-object v1
.end method

.method public withoutPadding()Ljava/util/Base64$Encoder;
    .locals 5

    iget-boolean v0, p0, Ljava/util/Base64$Encoder;->doPadding:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/Base64$Encoder;

    iget-boolean v1, p0, Ljava/util/Base64$Encoder;->isURL:Z

    iget-object v2, p0, Ljava/util/Base64$Encoder;->newline:[B

    iget v3, p0, Ljava/util/Base64$Encoder;->linemax:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/Base64$Encoder;-><init>(Z[BIZ)V

    return-object v0
.end method

.method public wrap(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Base64$EncOutputStream;

    iget-boolean v1, p0, Ljava/util/Base64$Encoder;->isURL:Z

    if-eqz v1, :cond_0

    sget-object v2, Ljava/util/Base64$Encoder;->toBase64URL:[C

    :goto_0
    iget-object v3, p0, Ljava/util/Base64$Encoder;->newline:[B

    iget v4, p0, Ljava/util/Base64$Encoder;->linemax:I

    iget-boolean v5, p0, Ljava/util/Base64$Encoder;->doPadding:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/Base64$EncOutputStream;-><init>(Ljava/io/OutputStream;[C[BIZ)V

    return-object v0

    :cond_0
    sget-object v2, Ljava/util/Base64$Encoder;->toBase64:[C

    goto :goto_0
.end method
