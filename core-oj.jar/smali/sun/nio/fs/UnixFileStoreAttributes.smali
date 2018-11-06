.class Lsun/nio/fs/UnixFileStoreAttributes;
.super Ljava/lang/Object;
.source "UnixFileStoreAttributes.java"


# instance fields
.field private f_bavail:J

.field private f_bfree:J

.field private f_blocks:J

.field private f_frsize:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/UnixFileStoreAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    new-instance v0, Lsun/nio/fs/UnixFileStoreAttributes;

    invoke-direct {v0}, Lsun/nio/fs/UnixFileStoreAttributes;-><init>()V

    invoke-static {p0, v0}, Lsun/nio/fs/UnixNativeDispatcher;->statvfs(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileStoreAttributes;)V

    return-object v0
.end method


# virtual methods
.method availableBlocks()J
    .locals 2

    iget-wide v0, p0, Lsun/nio/fs/UnixFileStoreAttributes;->f_bavail:J

    return-wide v0
.end method

.method blockSize()J
    .locals 2

    iget-wide v0, p0, Lsun/nio/fs/UnixFileStoreAttributes;->f_frsize:J

    return-wide v0
.end method

.method freeBlocks()J
    .locals 2

    iget-wide v0, p0, Lsun/nio/fs/UnixFileStoreAttributes;->f_bfree:J

    return-wide v0
.end method

.method totalBlocks()J
    .locals 2

    iget-wide v0, p0, Lsun/nio/fs/UnixFileStoreAttributes;->f_blocks:J

    return-wide v0
.end method
