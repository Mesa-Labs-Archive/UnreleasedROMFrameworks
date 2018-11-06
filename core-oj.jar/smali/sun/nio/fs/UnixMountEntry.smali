.class Lsun/nio/fs/UnixMountEntry;
.super Ljava/lang/Object;
.source "UnixMountEntry.java"


# instance fields
.field private dev:J

.field private dir:[B

.field private fstype:[B

.field private volatile fstypeAsString:Ljava/lang/String;

.field private name:[B

.field private volatile optionsAsString:Ljava/lang/String;

.field private opts:[B


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dev()J
    .locals 2

    iget-wide v0, p0, Lsun/nio/fs/UnixMountEntry;->dev:J

    return-wide v0
.end method

.method dir()[B
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/UnixMountEntry;->dir:[B

    return-object v0
.end method

.method fstype()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/UnixMountEntry;->fstypeAsString:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/nio/fs/UnixMountEntry;->fstype:[B

    invoke-static {v0}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/UnixMountEntry;->fstypeAsString:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lsun/nio/fs/UnixMountEntry;->fstypeAsString:Ljava/lang/String;

    return-object v0
.end method

.method hasOption(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    iget-object v1, p0, Lsun/nio/fs/UnixMountEntry;->optionsAsString:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lsun/nio/fs/UnixMountEntry;->opts:[B

    invoke-static {v1}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/fs/UnixMountEntry;->optionsAsString:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lsun/nio/fs/UnixMountEntry;->optionsAsString:Ljava/lang/String;

    const/16 v3, 0x2c

    invoke-static {v1, v3}, Lsun/nio/fs/Util;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method isIgnored()Z
    .locals 1

    const-string/jumbo v0, "ignore"

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixMountEntry;->hasOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isReadOnly()Z
    .locals 1

    const-string/jumbo v0, "ro"

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixMountEntry;->hasOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/UnixMountEntry;->name:[B

    invoke-static {v0}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
