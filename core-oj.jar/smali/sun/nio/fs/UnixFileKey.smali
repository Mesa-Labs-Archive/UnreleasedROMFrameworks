.class Lsun/nio/fs/UnixFileKey;
.super Ljava/lang/Object;
.source "UnixFileKey.java"


# instance fields
.field private final st_dev:J

.field private final st_ino:J


# direct methods
.method constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lsun/nio/fs/UnixFileKey;->st_dev:J

    iput-wide p3, p0, Lsun/nio/fs/UnixFileKey;->st_ino:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Lsun/nio/fs/UnixFileKey;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Lsun/nio/fs/UnixFileKey;

    iget-wide v4, p0, Lsun/nio/fs/UnixFileKey;->st_dev:J

    iget-wide v6, v0, Lsun/nio/fs/UnixFileKey;->st_dev:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget-wide v4, p0, Lsun/nio/fs/UnixFileKey;->st_ino:J

    iget-wide v6, v0, Lsun/nio/fs/UnixFileKey;->st_ino:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    iget-wide v0, p0, Lsun/nio/fs/UnixFileKey;->st_dev:J

    iget-wide v2, p0, Lsun/nio/fs/UnixFileKey;->st_dev:J

    ushr-long/2addr v2, v6

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget-wide v2, p0, Lsun/nio/fs/UnixFileKey;->st_ino:J

    iget-wide v4, p0, Lsun/nio/fs/UnixFileKey;->st_ino:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(dev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lsun/nio/fs/UnixFileKey;->st_dev:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",ino="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lsun/nio/fs/UnixFileKey;->st_ino:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
