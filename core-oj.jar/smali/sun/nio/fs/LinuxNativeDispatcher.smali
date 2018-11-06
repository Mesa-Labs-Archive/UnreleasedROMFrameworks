.class Lsun/nio/fs/LinuxNativeDispatcher;
.super Lsun/nio/fs/UnixNativeDispatcher;
.source "LinuxNativeDispatcher.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lsun/nio/fs/LinuxNativeDispatcher;->init()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsun/nio/fs/UnixNativeDispatcher;-><init>()V

    return-void
.end method

.method static native endmntent(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static fgetxattr(I[BJI)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p1}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    move v1, p0

    move-wide v4, p2

    move v6, p4

    invoke-static/range {v1 .. v6}, Lsun/nio/fs/LinuxNativeDispatcher;->fgetxattr0(IJJI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v1
.end method

.method private static native fgetxattr0(IJJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native flistxattr(IJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static fremovexattr(I[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p1}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lsun/nio/fs/LinuxNativeDispatcher;->fremovexattr0(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v1
.end method

.method private static native fremovexattr0(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static fsetxattr(I[BJI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p1}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    move v1, p0

    move-wide v4, p2

    move v6, p4

    invoke-static/range {v1 .. v6}, Lsun/nio/fs/LinuxNativeDispatcher;->fsetxattr0(IJJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v1
.end method

.method private static native fsetxattr0(IJJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native getmntent(JLsun/nio/fs/UnixMountEntry;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method private static native init()V
.end method

.method static setmntent([B[B)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p0}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    invoke-static {p1}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lsun/nio/fs/LinuxNativeDispatcher;->setmntent0(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    return-wide v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v2
.end method

.method private static native setmntent0(JJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method
