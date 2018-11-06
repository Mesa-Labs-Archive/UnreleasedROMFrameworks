.class public Lcom/android/org/conscrypt/ct/Serialization;
.super Ljava/lang/Object;
.source "Serialization.java"


# static fields
.field private static final DER_LENGTH_LONG_FORM_FLAG:I = 0x80

.field private static final DER_TAG_MASK:I = 0x3f

.field private static final DER_TAG_OCTET_STRING:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readByte(Ljava/io/InputStream;)B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    new-instance v2, Lcom/android/org/conscrypt/ct/SerializationException;

    const-string/jumbo v3, "Premature end of input, could not read byte."

    invoke-direct {v2, v3}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/android/org/conscrypt/ct/SerializationException;

    invoke-direct {v2, v1}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    int-to-byte v2, v0

    return v2
.end method

.method public static readDEROctetString(Ljava/io/InputStream;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/org/conscrypt/ct/Serialization;->readByte(Ljava/io/InputStream;)B

    move-result v3

    and-int/lit8 v1, v3, 0x3f

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    new-instance v3, Lcom/android/org/conscrypt/ct/SerializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Wrong DER tag, expected OCTET STRING, got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/android/org/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v2

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1

    and-int/lit16 v3, v2, -0x81

    invoke-static {p0, v3}, Lcom/android/org/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v0

    :goto_0
    invoke-static {p0, v0}, Lcom/android/org/conscrypt/ct/Serialization;->readFixedBytes(Ljava/io/InputStream;I)[B

    move-result-object v3

    return-object v3

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static readDEROctetString([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/android/org/conscrypt/ct/Serialization;->readDEROctetString(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readFixedBytes(Ljava/io/InputStream;I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    if-gez p1, :cond_0

    :try_start_0
    new-instance v3, Lcom/android/org/conscrypt/ct/SerializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Negative length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    new-instance v3, Lcom/android/org/conscrypt/ct/SerializationException;

    invoke-direct {v3, v2}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    :try_start_1
    new-array v1, p1, [B

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ge v0, p1, :cond_1

    new-instance v3, Lcom/android/org/conscrypt/ct/SerializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Premature end of input, expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes, only read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    return-object v1
.end method

.method public static readList(Ljava/io/InputStream;II)[[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1}, Lcom/android/org/conscrypt/ct/Serialization;->readVariableBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {p0, p2}, Lcom/android/org/conscrypt/ct/Serialization;->readVariableBytes(Ljava/io/InputStream;I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Lcom/android/org/conscrypt/ct/SerializationException;

    invoke-direct {v3, v1}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [[B

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    return-object v3
.end method

.method public static readList([BII)[[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1, p2}, Lcom/android/org/conscrypt/ct/Serialization;->readList(Ljava/io/InputStream;II)[[B

    move-result-object v0

    return-object v0
.end method

.method public static readLong(Ljava/io/InputStream;I)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    const/16 v8, 0x8

    if-gt p1, v8, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    shl-long v4, v2, v8

    invoke-static {p0}, Lcom/android/org/conscrypt/ct/Serialization;->readByte(Ljava/io/InputStream;)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    or-long v2, v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-wide v2
.end method

.method public static readNumber(Ljava/io/InputStream;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    const/4 v2, 0x4

    if-gt p1, v2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v2, Lcom/android/org/conscrypt/ct/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    shl-int/lit8 v2, v1, 0x8

    invoke-static {p0}, Lcom/android/org/conscrypt/ct/Serialization;->readByte(Ljava/io/InputStream;)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static readVariableBytes(Ljava/io/InputStream;I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/org/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/org/conscrypt/ct/Serialization;->readFixedBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    return-object v1
.end method

.method public static writeFixedBytes(Ljava/io/OutputStream;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/org/conscrypt/ct/SerializationException;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static writeNumber(Ljava/io/OutputStream;JI)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    const/16 v1, 0x8

    if-gez p3, :cond_0

    new-instance v1, Lcom/android/org/conscrypt/ct/SerializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Negative width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-ge p3, v1, :cond_1

    mul-int/lit8 v1, p3, 0x8

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v1

    cmp-long v1, p1, v4

    if-ltz v1, :cond_1

    new-instance v1, Lcom/android/org/conscrypt/ct/SerializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Number too large, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " does not fit in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    if-lez p3, :cond_3

    add-int/lit8 v1, p3, -0x1

    mul-int/lit8 v1, v1, 0x8

    int-to-long v2, v1

    const-wide/16 v4, 0x40

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    long-to-int v1, v2

    shr-long v4, p1, v1

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v1, v4

    int-to-byte v1, v1

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    :goto_1
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/org/conscrypt/ct/SerializationException;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    return-void
.end method

.method public static writeVariableBytes(Ljava/io/OutputStream;[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    array-length v0, p1

    int-to-long v0, v0

    invoke-static {p0, v0, v1, p2}, Lcom/android/org/conscrypt/ct/Serialization;->writeNumber(Ljava/io/OutputStream;JI)V

    invoke-static {p0, p1}, Lcom/android/org/conscrypt/ct/Serialization;->writeFixedBytes(Ljava/io/OutputStream;[B)V

    return-void
.end method
