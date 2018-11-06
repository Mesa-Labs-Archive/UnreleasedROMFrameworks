.class public Lcom/android/server/wifi/ByteBufferReader;
.super Ljava/lang/Object;
.source "ByteBufferReader.java"


# static fields
.field public static final MAXIMUM_INTEGER_SIZE:I = 0x8

.field public static final MINIMUM_INTEGER_SIZE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J
    .locals 13

    const/4 v3, 0x0

    const/16 v12, 0x8

    const/4 v6, 0x1

    if-lt p2, v6, :cond_0

    if-le p2, v12, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-array v2, p2, [B

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v6, :cond_2

    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_3

    shl-long v6, v4, v12

    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    int-to-long v8, v3

    or-long v4, v6, v8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    array-length v6, v2

    :goto_1
    if-ge v3, v6, :cond_3

    aget-byte v1, v2, v3

    shl-long v8, v4, v12

    and-int/lit16 v7, v1, 0xff

    int-to-long v10, v7

    or-long v4, v8, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-wide v4
.end method

.method public static readString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    new-array v0, p1, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static readStringWithByteLength(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    invoke-static {p0, v0, p1}, Lcom/android/server/wifi/ByteBufferReader;->readString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
