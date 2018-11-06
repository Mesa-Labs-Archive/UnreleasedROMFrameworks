.class public Ljava/util/zip/ZipEntry;
.super Ljava/lang/Object;
.source "ZipEntry.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFLATED:I = 0x8

.field static final DOSTIME_BEFORE_1980:J = 0x210000L

.field public static final STORED:I = 0x0

.field public static final UPPER_DOSTIME_BOUND:J = 0x3abd8960000L


# instance fields
.field atime:Ljava/nio/file/attribute/FileTime;

.field comment:Ljava/lang/String;

.field crc:J

.field csize:J

.field ctime:Ljava/nio/file/attribute/FileTime;

.field dataOffset:J

.field extra:[B

.field flag:I

.field method:I

.field mtime:Ljava/nio/file/attribute/FileTime;

.field name:Ljava/lang/String;

.field size:J

.field xdostime:J


# direct methods
.method constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/zip/ZipEntry;->method:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/zip/ZipEntry;->method:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const v1, 0xffff

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJII[BJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/zip/ZipEntry;->method:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    iput-object p1, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    iput-object p2, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    iput-wide p3, p0, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide p5, p0, Ljava/util/zip/ZipEntry;->csize:J

    iput-wide p7, p0, Ljava/util/zip/ZipEntry;->size:J

    iput p9, p0, Ljava/util/zip/ZipEntry;->method:I

    int-to-long v0, p10

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    iput-wide p12, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    const/4 v0, 0x0

    invoke-virtual {p0, p11, v0}, Ljava/util/zip/ZipEntry;->setExtra0([BZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/zip/ZipEntry;->method:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    const-string/jumbo v0, "entry"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->xdostime:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    iget-object v0, p1, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    iget-object v0, p1, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    iget-object v0, p1, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    iget v0, p1, Ljava/util/zip/ZipEntry;->method:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->method:I

    iget v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    iget-object v0, p1, Ljava/util/zip/ZipEntry;->extra:[B

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    iget-object v0, p1, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->dataOffset:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    iget-object v3, p0, Ljava/util/zip/ZipEntry;->extra:[B

    if-nez v3, :cond_0

    :goto_0
    iput-object v2, v1, Ljava/util/zip/ZipEntry;->extra:[B

    return-object v1

    :cond_0
    iget-object v2, p0, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCompressedSize()J
    .locals 2

    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    return-wide v0
.end method

.method public getCrc()J
    .locals 2

    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    return-wide v0
.end method

.method public getCreationTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    iget-object v0, p0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public getDataOffset()J
    .locals 2

    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    return-wide v0
.end method

.method public getExtra()[B
    .locals 1

    iget-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    return-object v0
.end method

.method public getLastAccessTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    iget-object v0, p0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public getLastModifiedTime()Ljava/nio/file/attribute/FileTime;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    return-object v0

    :cond_0
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    return-object v4

    :cond_1
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    iget v0, p0, Ljava/util/zip/ZipEntry;->method:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    return-wide v0
.end method

.method public getTime()J
    .locals 4

    const-wide/16 v0, -0x1

    iget-object v2, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    if-eqz v2, :cond_0

    iget-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    invoke-virtual {v0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v2, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    invoke-static {v0, v1}, Ljava/util/zip/ZipUtils;->extendedDosToJavaTime(J)J

    move-result-wide v0

    :cond_1
    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    return-void

    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const v1, 0xffff

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCompressedSize(J)V
    .locals 1

    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->csize:J

    return-void
.end method

.method public setCrc(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid entry crc-32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->crc:J

    return-void
.end method

.method public setCreationTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;
    .locals 1

    const-string/jumbo v0, "creationTime"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    return-object p0
.end method

.method public setExtra([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/zip/ZipEntry;->setExtra0([BZ)V

    return-void
.end method

.method setExtra0([BZ)V
    .locals 10

    if-eqz p1, :cond_1

    array-length v7, p1

    const v8, 0xffff

    if-le v7, v8, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "invalid extra field length"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    const/4 v2, 0x0

    array-length v1, p1

    :goto_0
    add-int/lit8 v7, v2, 0x4

    if-ge v7, v1, :cond_1

    invoke-static {p1, v2}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v6

    add-int/lit8 v7, v2, 0x2

    invoke-static {p1, v7}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v4

    add-int/lit8 v2, v2, 0x4

    add-int v7, v2, v4

    if-le v7, v1, :cond_2

    :cond_1
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->extra:[B

    return-void

    :cond_2
    sparse-switch v6, :sswitch_data_0

    :cond_3
    :goto_1
    add-int/2addr v2, v4

    goto :goto_0

    :sswitch_0
    if-eqz p2, :cond_3

    const/16 v7, 0x10

    if-lt v4, v7, :cond_3

    invoke-static {p1, v2}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v8

    iput-wide v8, p0, Ljava/util/zip/ZipEntry;->size:J

    add-int/lit8 v7, v2, 0x8

    invoke-static {p1, v7}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v8

    iput-wide v8, p0, Ljava/util/zip/ZipEntry;->csize:J

    goto :goto_1

    :sswitch_1
    const/16 v7, 0x20

    if-lt v4, v7, :cond_3

    add-int/lit8 v3, v2, 0x4

    invoke-static {p1, v3}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    add-int/lit8 v7, v3, 0x2

    invoke-static {p1, v7}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v7

    const/16 v8, 0x18

    if-ne v7, v8, :cond_3

    add-int/lit8 v7, v3, 0x4

    invoke-static {p1, v7}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/util/zip/ZipUtils;->winTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v7

    iput-object v7, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    add-int/lit8 v7, v3, 0xc

    invoke-static {p1, v7}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/util/zip/ZipUtils;->winTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v7

    iput-object v7, p0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    add-int/lit8 v7, v3, 0x14

    invoke-static {p1, v7}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/util/zip/ZipUtils;->winTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v7

    iput-object v7, p0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    goto :goto_1

    :sswitch_2
    aget-byte v7, p1, v2

    invoke-static {v7}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    const/4 v5, 0x1

    and-int/lit8 v7, v0, 0x1

    if-eqz v7, :cond_4

    const/4 v7, 0x5

    if-gt v7, v4, :cond_4

    add-int/lit8 v7, v2, 0x1

    invoke-static {p1, v7}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/util/zip/ZipUtils;->unixTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v7

    iput-object v7, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    const/4 v5, 0x5

    :cond_4
    and-int/lit8 v7, v0, 0x2

    if-eqz v7, :cond_5

    add-int/lit8 v7, v5, 0x4

    if-gt v7, v4, :cond_5

    add-int v7, v2, v5

    invoke-static {p1, v7}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/util/zip/ZipUtils;->unixTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v7

    iput-object v7, p0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    add-int/lit8 v5, v5, 0x4

    :cond_5
    and-int/lit8 v7, v0, 0x4

    if-eqz v7, :cond_3

    add-int/lit8 v7, v5, 0x4

    if-gt v7, v4, :cond_3

    add-int v7, v2, v5

    invoke-static {p1, v7}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/util/zip/ZipUtils;->unixTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v7

    iput-object v7, p0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    add-int/lit8 v5, v5, 0x4

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
        0x5455 -> :sswitch_2
    .end sparse-switch
.end method

.method public setLastAccessTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;
    .locals 1

    const-string/jumbo v0, "lastAccessTime"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    return-object p0
.end method

.method public setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;
    .locals 2

    const-string/jumbo v0, "lastModifiedTime"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/zip/ZipUtils;->javaToExtendedDosTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    return-object p0
.end method

.method public setMethod(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid compression method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Ljava/util/zip/ZipEntry;->method:I

    return-void
.end method

.method public setSize(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid entry size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->size:J

    return-void
.end method

.method public setTime(J)V
    .locals 5

    invoke-static {p1, p2}, Ljava/util/zip/ZipUtils;->javaToExtendedDosTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    const-wide/32 v2, 0x210000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide v0, 0x3abd8960000L

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
