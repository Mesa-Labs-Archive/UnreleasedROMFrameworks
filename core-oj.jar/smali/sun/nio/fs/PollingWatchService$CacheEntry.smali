.class Lsun/nio/fs/PollingWatchService$CacheEntry;
.super Ljava/lang/Object;
.source "PollingWatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/PollingWatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheEntry"
.end annotation


# instance fields
.field private lastModified:J

.field private lastTickCount:I


# direct methods
.method static synthetic -get0(Lsun/nio/fs/PollingWatchService$CacheEntry;)J
    .locals 2

    iget-wide v0, p0, Lsun/nio/fs/PollingWatchService$CacheEntry;->lastModified:J

    return-wide v0
.end method

.method constructor <init>(JI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lsun/nio/fs/PollingWatchService$CacheEntry;->lastModified:J

    iput p3, p0, Lsun/nio/fs/PollingWatchService$CacheEntry;->lastTickCount:I

    return-void
.end method


# virtual methods
.method lastModified()J
    .locals 2

    iget-wide v0, p0, Lsun/nio/fs/PollingWatchService$CacheEntry;->lastModified:J

    return-wide v0
.end method

.method lastTickCount()I
    .locals 1

    iget v0, p0, Lsun/nio/fs/PollingWatchService$CacheEntry;->lastTickCount:I

    return v0
.end method

.method update(JI)V
    .locals 1

    iput-wide p1, p0, Lsun/nio/fs/PollingWatchService$CacheEntry;->lastModified:J

    iput p3, p0, Lsun/nio/fs/PollingWatchService$CacheEntry;->lastTickCount:I

    return-void
.end method
