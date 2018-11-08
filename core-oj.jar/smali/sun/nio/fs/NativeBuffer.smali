.class Lsun/nio/fs/NativeBuffer;
.super Ljava/lang/Object;
.source "NativeBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/NativeBuffer$Deallocator;
    }
.end annotation


# static fields
.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final address:J

.field private final cleaner:Lsun/misc/Cleaner;

.field private owner:Ljava/lang/Object;

.field private final size:I


# direct methods
.method static synthetic -get0()Lsun/misc/Unsafe;
    .locals 1

    sget-object v0, Lsun/nio/fs/NativeBuffer;->unsafe:Lsun/misc/Unsafe;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/NativeBuffer;->unsafe:Lsun/misc/Unsafe;

    return-void
.end method

.method constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lsun/nio/fs/NativeBuffer;->unsafe:Lsun/misc/Unsafe;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    iput-wide v0, p0, Lsun/nio/fs/NativeBuffer;->address:J

    iput p1, p0, Lsun/nio/fs/NativeBuffer;->size:I

    new-instance v0, Lsun/nio/fs/NativeBuffer$Deallocator;

    iget-wide v2, p0, Lsun/nio/fs/NativeBuffer;->address:J

    invoke-direct {v0, v2, v3}, Lsun/nio/fs/NativeBuffer$Deallocator;-><init>(J)V

    invoke-static {p0, v0}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/NativeBuffer;->cleaner:Lsun/misc/Cleaner;

    return-void
.end method


# virtual methods
.method address()J
    .locals 2

    iget-wide v0, p0, Lsun/nio/fs/NativeBuffer;->address:J

    return-wide v0
.end method

.method cleaner()Lsun/misc/Cleaner;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/NativeBuffer;->cleaner:Lsun/misc/Cleaner;

    return-object v0
.end method

.method owner()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/NativeBuffer;->owner:Ljava/lang/Object;

    return-object v0
.end method

.method release()V
    .locals 0

    invoke-static {p0}, Lsun/nio/fs/NativeBuffers;->releaseNativeBuffer(Lsun/nio/fs/NativeBuffer;)V

    return-void
.end method

.method setOwner(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lsun/nio/fs/NativeBuffer;->owner:Ljava/lang/Object;

    return-void
.end method

.method size()I
    .locals 1

    iget v0, p0, Lsun/nio/fs/NativeBuffer;->size:I

    return v0
.end method
