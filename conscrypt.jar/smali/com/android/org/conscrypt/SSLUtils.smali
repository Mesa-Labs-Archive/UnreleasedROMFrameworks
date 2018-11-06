.class public final Lcom/android/org/conscrypt/SSLUtils;
.super Ljava/lang/Object;
.source "SSLUtils.java"


# static fields
.field private static final MAX_ENCRYPTION_OVERHEAD_DIFF:I = 0x7fffffaa

.field private static final MAX_ENCRYPTION_OVERHEAD_LENGTH:I = 0x55

.field static final MAX_PROTOCOL_LENGTH:I = 0xff

.field static final USE_ENGINE_SOCKET_BY_DEFAULT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "com.android.org.conscrypt.useEngineSocketByDefault"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/org/conscrypt/SSLUtils;->USE_ENGINE_SOCKET_BY_DEFAULT:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateOutNetBufSize(I)I
    .locals 2

    const v0, 0x7fffffaa

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x55

    const/16 v1, 0x4145

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private static getEncryptedPacketLength(Ljava/nio/ByteBuffer;)I
    .locals 5

    const/4 v4, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-static {v3}, Lcom/android/org/conscrypt/SSLUtils;->unsignedByte(B)S

    move-result v3

    packed-switch v3, :pswitch_data_0

    return v4

    :pswitch_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-static {v3}, Lcom/android/org/conscrypt/SSLUtils;->unsignedByte(B)S

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v2, 0x3

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    invoke-static {v3}, Lcom/android/org/conscrypt/SSLUtils;->unsignedShort(S)I

    move-result v3

    add-int/lit8 v1, v3, 0x5

    const/4 v3, 0x5

    if-gt v1, v3, :cond_1

    return v4

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getEncryptedPacketLength([Ljava/nio/ByteBuffer;I)I
    .locals 7

    const/4 v6, 0x5

    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, v6, :cond_0

    invoke-static {v0}, Lcom/android/org/conscrypt/SSLUtils;->getEncryptedPacketLength(Ljava/nio/ByteBuffer;)I

    move-result v5

    return v5

    :cond_0
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    :goto_0
    add-int/lit8 v2, p1, 0x1

    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-le v5, v6, :cond_1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_1
    :try_start_0
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_2

    move p1, v2

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v5

    :cond_2
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-static {v4}, Lcom/android/org/conscrypt/SSLUtils;->getEncryptedPacketLength(Ljava/nio/ByteBuffer;)I

    move-result v5

    return v5
.end method

.method public static varargs toLengthPrefixedList([Ljava/lang/String;)[B
    .locals 12

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_0
    array-length v9, p0

    if-ge v5, v9, :cond_2

    aget-object v9, p0, v5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    const/16 v9, 0xff

    if-le v8, v9, :cond_1

    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Protocol has invalid length ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, p0, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    add-int/lit8 v9, v8, 0x1

    add-int/2addr v6, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-array v2, v6, [B

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_1
    array-length v9, p0

    if-ge v5, v9, :cond_5

    aget-object v7, p0, v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v4, v3, 0x1

    int-to-byte v9, v8

    aput-byte v9, v2, v3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v8, :cond_4

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v9, 0x7f

    if-le v0, v9, :cond_3

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Protocol contains invalid character: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "(protocol="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_3
    add-int/lit8 v3, v4, 0x1

    int-to-byte v9, v0

    aput-byte v9, v2, v4

    add-int/lit8 v1, v1, 0x1

    move v4, v3

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    move v3, v4

    goto :goto_1

    :cond_5
    return-object v2
.end method

.method static toSSLException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;
    .locals 1

    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_0

    check-cast p0, Ljavax/net/ssl/SSLException;

    return-object p0

    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-direct {v0, p0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;
    .locals 2

    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_0

    check-cast p0, Ljavax/net/ssl/SSLHandshakeException;

    return-object p0

    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLHandshakeException;

    return-object v0
.end method

.method private static unsignedByte(B)S
    .locals 1

    and-int/lit16 v0, p0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private static unsignedShort(S)I
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method
