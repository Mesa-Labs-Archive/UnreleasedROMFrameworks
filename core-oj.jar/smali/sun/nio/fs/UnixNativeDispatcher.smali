.class Lsun/nio/fs/UnixNativeDispatcher;
.super Ljava/lang/Object;
.source "UnixNativeDispatcher.java"


# static fields
.field private static final SUPPORTS_BIRTHTIME:I = 0x10000

.field private static final SUPPORTS_FUTIMES:I = 0x4

.field private static final SUPPORTS_OPENAT:I = 0x2

.field private static final capabilities:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsun/nio/fs/UnixNativeDispatcher;->init()I

    move-result v0

    sput v0, Lsun/nio/fs/UnixNativeDispatcher;->capabilities:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static access(Lsun/nio/fs/UnixPath;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lsun/nio/fs/UnixNativeDispatcher;->access0(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v1
.end method

.method private static native access0(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static birthtimeSupported()Z
    .locals 3

    const/4 v0, 0x0

    sget v1, Lsun/nio/fs/UnixNativeDispatcher;->capabilities:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static chmod(Lsun/nio/fs/UnixPath;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lsun/nio/fs/UnixNativeDispatcher;->chmod0(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v1
.end method

.method private static native chmod0(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static chown(Lsun/nio/fs/UnixPath;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lsun/nio/fs/UnixNativeDispatcher;->chown0(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v1
.end method

.method private static native chown0(JII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native close(I)V
.end method

.method static native closedir(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method private static copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;
    .locals 4

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getByteArrayForSysCalls()[B

    move-result-object v1

    array-length v3, v1

    add-int/lit8 v2, v3, 0x1

    invoke-static {v2}, Lsun/nio/fs/NativeBuffers;->getNativeBufferFromCache(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lsun/nio/fs/NativeBuffers;->allocNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    :cond_0
    invoke-static {v1, v0}, Lsun/nio/fs/NativeBuffers;->copyCStringToNativeBuffer([BLsun/nio/fs/NativeBuffer;)V

    invoke-virtual {v0, p0}, Lsun/nio/fs/NativeBuffer;->setOwner(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->owner()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    return-object v0
.end method

.method static native dup(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native fchmod(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native fchown(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native fclose(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native fdopendir(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static fopen(Lsun/nio/fs/UnixPath;Ljava/lang/String;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v1

    invoke-static {p1}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lsun/nio/fs/UnixNativeDispatcher;->fopen0(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    return-wide v2

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v2
.end method

.method private static native fopen0(JJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native fpathconf(II)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native fstat(ILsun/nio/fs/UnixFileAttributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static fstatat(I[BILsun/nio/fs/UnixFileAttributes;)V
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

    invoke-static {p0, v2, v3, p2, p3}, Lsun/nio/fs/UnixNativeDispatcher;->fstatat0(IJILsun/nio/fs/UnixFileAttributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v1
.end method

.method private static native fstatat0(IJILsun/nio/fs/UnixFileAttributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native futimes(IJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static futimesSupported()Z
    .locals 2

    const/4 v0, 0x0

    sget v1, Lsun/nio/fs/UnixNativeDispatcher;->capabilities:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static native getcwd()[B
.end method

.method static native getgrgid(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static getgrnam(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p0}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->getgrnam0(J)I
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

.method private static native getgrnam0(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static getpwnam(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p0}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->getpwnam0(J)I
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

.method private static native getpwnam0(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native getpwuid(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method private static native init()I
.end method

.method static lchown(Lsun/nio/fs/UnixPath;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lsun/nio/fs/UnixNativeDispatcher;->lchown0(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v1
.end method

.method private static native lchown0(JII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static link(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lsun/nio/fs/UnixNativeDispatcher;->link0(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v2
.end method

.method private static native link0(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static lstat(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lsun/nio/fs/UnixNativeDispatcher;->lstat0(JLsun/nio/fs/UnixFileAttributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v1
.end method

.method private static native lstat0(JLsun/nio/fs/UnixFileAttributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static mkdir(Lsun/nio/fs/UnixPath;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lsun/nio/fs/UnixNativeDispatcher;->mkdir0(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v1
.end method

.method private static native mkdir0(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static mknod(Lsun/nio/fs/UnixPath;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2, p3}, Lsun/nio/fs/UnixNativeDispatcher;->mknod0(JIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v1
.end method

.method private static native mknod0(JIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static open(Lsun/nio/fs/UnixPath;II)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lsun/nio/fs/UnixNativeDispatcher;->open0(JII)I
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

.method private static native open0(JII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static openat(I[BII)I
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

    invoke-static {p0, v2, v3, p2, p3}, Lsun/nio/fs/UnixNativeDispatcher;->openat0(IJII)I
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

.method private static native openat0(IJII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static openatSupported()Z
    .locals 2

    const/4 v0, 0x0

    sget v1, Lsun/nio/fs/UnixNativeDispatcher;->capabilities:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static opendir(Lsun/nio/fs/UnixPath;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->opendir0(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    return-wide v2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v1
.end method

.method private static native opendir0(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static pathconf(Lsun/nio/fs/UnixPath;I)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lsun/nio/fs/UnixNativeDispatcher;->pathconf0(JI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    return-wide v2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v1
.end method

.method private static native pathconf0(JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native read(IJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native readdir(J)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static readlink(Lsun/nio/fs/UnixPath;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->readlink0(J)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v1
.end method

.method private static native readlink0(J)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static realpath(Lsun/nio/fs/UnixPath;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->realpath0(J)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v1
.end method

.method private static native realpath0(J)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static rename(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lsun/nio/fs/UnixNativeDispatcher;->rename0(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v2
.end method

.method private static native rename0(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static renameat(I[BI[B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p1}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v6

    invoke-static {p3}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v7

    :try_start_0
    invoke-virtual {v6}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v1

    invoke-virtual {v7}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v4

    move v0, p0

    move v3, p2

    invoke-static/range {v0 .. v5}, Lsun/nio/fs/UnixNativeDispatcher;->renameat0(IJIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v7}, Lsun/nio/fs/NativeBuffer;->release()V

    invoke-virtual {v6}, Lsun/nio/fs/NativeBuffer;->release()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Lsun/nio/fs/NativeBuffer;->release()V

    invoke-virtual {v6}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v0
.end method

.method private static native renameat0(IJIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static rmdir(Lsun/nio/fs/UnixPath;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir0(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v1
.end method

.method private static native rmdir0(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static stat(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lsun/nio/fs/UnixNativeDispatcher;->stat0(JLsun/nio/fs/UnixFileAttributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v1
.end method

.method private static native stat0(JLsun/nio/fs/UnixFileAttributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static statvfs(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileStoreAttributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lsun/nio/fs/UnixNativeDispatcher;->statvfs0(JLsun/nio/fs/UnixFileStoreAttributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v1
.end method

.method private static native statvfs0(JLsun/nio/fs/UnixFileStoreAttributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native strerror(I)[B
.end method

.method static symlink([BLsun/nio/fs/UnixPath;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p0}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v1

    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lsun/nio/fs/UnixNativeDispatcher;->symlink0(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v2
.end method

.method private static native symlink0(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static unlink(Lsun/nio/fs/UnixPath;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->unlink0(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v1
.end method

.method private static native unlink0(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static unlinkat(I[BI)V
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

    invoke-static {p0, v2, v3, p2}, Lsun/nio/fs/UnixNativeDispatcher;->unlinkat0(IJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v1
.end method

.method private static native unlinkat0(IJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static utimes(Lsun/nio/fs/UnixPath;JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v6

    :try_start_0
    invoke-virtual {v6}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lsun/nio/fs/UnixNativeDispatcher;->utimes0(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Lsun/nio/fs/NativeBuffer;->release()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v0
.end method

.method private static native utimes0(JJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native write(IJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method
