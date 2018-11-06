.class Lsun/nio/fs/LinuxWatchService$Poller;
.super Lsun/nio/fs/AbstractPoller;
.source "LinuxWatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/LinuxWatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Poller"
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final IN_ATTRIB:I = 0x4

.field private static final IN_CREATE:I = 0x100

.field private static final IN_DELETE:I = 0x200

.field private static final IN_IGNORED:I = 0x8000

.field private static final IN_MODIFY:I = 0x2

.field private static final IN_MOVED_FROM:I = 0x40

.field private static final IN_MOVED_TO:I = 0x80

.field private static final IN_Q_OVERFLOW:I = 0x4000

.field private static final IN_UNMOUNT:I = 0x2000

.field private static final OFFSETOF_LEN:I

.field private static final OFFSETOF_MASK:I

.field private static final OFFSETOF_NAME:I

.field private static final OFFSETOF_WD:I

.field private static final SIZEOF_INOTIFY_EVENT:I

.field private static final offsets:[I


# instance fields
.field private final address:J

.field private final fs:Lsun/nio/fs/UnixFileSystem;

.field private final guard:Ldalvik/system/CloseGuard;

.field private final ifd:I

.field private final socketpair:[I

.field private final watcher:Lsun/nio/fs/LinuxWatchService;

.field private final wdToKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-wrap1()I

    move-result v0

    sput v0, Lsun/nio/fs/LinuxWatchService$Poller;->SIZEOF_INOTIFY_EVENT:I

    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-wrap0()[I

    move-result-object v0

    sput-object v0, Lsun/nio/fs/LinuxWatchService$Poller;->offsets:[I

    sget-object v0, Lsun/nio/fs/LinuxWatchService$Poller;->offsets:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_WD:I

    sget-object v0, Lsun/nio/fs/LinuxWatchService$Poller;->offsets:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    sput v0, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_MASK:I

    sget-object v0, Lsun/nio/fs/LinuxWatchService$Poller;->offsets:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    sput v0, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_LEN:I

    sget-object v0, Lsun/nio/fs/LinuxWatchService$Poller;->offsets:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    sput v0, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_NAME:I

    return-void
.end method

.method constructor <init>(Lsun/nio/fs/UnixFileSystem;Lsun/nio/fs/LinuxWatchService;I[I)V
    .locals 4

    invoke-direct {p0}, Lsun/nio/fs/AbstractPoller;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->guard:Ldalvik/system/CloseGuard;

    iput-object p1, p0, Lsun/nio/fs/LinuxWatchService$Poller;->fs:Lsun/nio/fs/UnixFileSystem;

    iput-object p2, p0, Lsun/nio/fs/LinuxWatchService$Poller;->watcher:Lsun/nio/fs/LinuxWatchService;

    iput p3, p0, Lsun/nio/fs/LinuxWatchService$Poller;->ifd:I

    iput-object p4, p0, Lsun/nio/fs/LinuxWatchService$Poller;->socketpair:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-get1()Lsun/misc/Unsafe;

    move-result-object v0

    const-wide/16 v2, 0x2000

    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    iput-wide v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->address:J

    iget-object v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method private maskToEventKind(I)Ljava/nio/file/WatchEvent$Kind;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/nio/file/WatchEvent$Kind",
            "<*>;"
        }
    .end annotation

    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_0

    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    return-object v0

    :cond_0
    and-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_1

    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    return-object v0

    :cond_1
    and-int/lit16 v0, p1, 0x100

    if-lez v0, :cond_2

    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    return-object v0

    :cond_2
    and-int/lit16 v0, p1, 0x80

    if-lez v0, :cond_3

    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    return-object v0

    :cond_3
    and-int/lit16 v0, p1, 0x200

    if-lez v0, :cond_4

    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    return-object v0

    :cond_4
    and-int/lit8 v0, p1, 0x40

    if-lez v0, :cond_5

    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method private processEvent(IILsun/nio/fs/UnixPath;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    and-int/lit16 v4, p2, 0x4000

    if-lez v4, :cond_1

    iget-object v4, p0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;

    sget-object v5, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    invoke-virtual {v4, v5, v6}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->signalEvent(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;

    if-nez v2, :cond_2

    return-void

    :cond_2
    const v4, 0x8000

    and-int/2addr v4, p2

    if-lez v4, :cond_3

    iget-object v4, p0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v7}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->invalidate(Z)V

    invoke-virtual {v2}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->signal()V

    return-void

    :cond_3
    if-nez p3, :cond_4

    return-void

    :cond_4
    invoke-direct {p0, p2}, Lsun/nio/fs/LinuxWatchService$Poller;->maskToEventKind(I)Ljava/nio/file/WatchEvent$Kind;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v3, p3}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->signalEvent(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Lsun/nio/fs/LinuxWatchService$Poller;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lsun/nio/fs/AbstractPoller;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lsun/nio/fs/AbstractPoller;->finalize()V

    throw v0
.end method

.method implCancelKey(Ljava/nio/file/WatchKey;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;

    invoke-virtual {v0}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    invoke-virtual {v0}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->descriptor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->invalidate(Z)V

    :cond_0
    return-void
.end method

.method implCloseAll()V
    .locals 7

    const/4 v6, 0x1

    iget-object v2, p0, Lsun/nio/fs/LinuxWatchService$Poller;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->close()V

    iget-object v2, p0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;

    invoke-virtual {v2, v6}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->invalidate(Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-get1()Lsun/misc/Unsafe;

    move-result-object v2

    iget-wide v4, p0, Lsun/nio/fs/LinuxWatchService$Poller;->address:J

    invoke-virtual {v2, v4, v5}, Lsun/misc/Unsafe;->freeMemory(J)V

    iget-object v2, p0, Lsun/nio/fs/LinuxWatchService$Poller;->socketpair:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    iget-object v2, p0, Lsun/nio/fs/LinuxWatchService$Poller;->socketpair:[I

    aget v2, v2, v6

    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    iget v2, p0, Lsun/nio/fs/LinuxWatchService$Poller;->ifd:I

    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    return-void
.end method

.method varargs implRegister(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set",
            "<+",
            "Ljava/nio/file/WatchEvent$Kind",
            "<*>;>;[",
            "Ljava/nio/file/WatchEvent$Modifier;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v4, p1

    check-cast v4, Lsun/nio/fs/UnixPath;

    const/4 v8, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/file/WatchEvent$Kind;

    sget-object v12, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    if-ne v5, v12, :cond_1

    or-int/lit16 v8, v8, 0x180

    goto :goto_0

    :cond_1
    sget-object v12, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    if-ne v5, v12, :cond_2

    or-int/lit16 v8, v8, 0x240

    goto :goto_0

    :cond_2
    sget-object v12, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    if-ne v5, v12, :cond_0

    or-int/lit8 v8, v8, 0x6

    goto :goto_0

    :cond_3
    move-object/from16 v0, p3

    array-length v12, v0

    if-lez v12, :cond_6

    const/4 v12, 0x0

    move-object/from16 v0, p3

    array-length v13, v0

    :goto_1
    if-ge v12, v13, :cond_6

    aget-object v9, p3, v12

    if-nez v9, :cond_4

    new-instance v12, Ljava/lang/NullPointerException;

    invoke-direct {v12}, Ljava/lang/NullPointerException;-><init>()V

    return-object v12

    :cond_4
    instance-of v14, v9, Lcom/sun/nio/file/SensitivityWatchEventModifier;

    if-eqz v14, :cond_5

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_5
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v13, "Modifier not supported"

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v12

    :cond_6
    const/4 v2, 0x0

    const/4 v12, 0x1

    :try_start_0
    invoke-static {v4, v12}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_7

    new-instance v12, Ljava/nio/file/NotDirectoryException;

    invoke-virtual {v4}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/nio/file/NotDirectoryException;-><init>(Ljava/lang/String;)V

    return-object v12

    :catch_0
    move-exception v11

    invoke-virtual {v11, v4}, Lsun/nio/fs/UnixException;->asIOException(Lsun/nio/fs/UnixPath;)Ljava/io/IOException;

    move-result-object v12

    return-object v12

    :cond_7
    const/4 v10, -0x1

    :try_start_1
    invoke-virtual {v4}, Lsun/nio/fs/UnixPath;->getByteArrayForSysCalls()[B

    move-result-object v12

    invoke-static {v12}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;
    :try_end_1
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :try_start_2
    move-object/from16 v0, p0

    iget v12, v0, Lsun/nio/fs/LinuxWatchService$Poller;->ifd:I

    invoke-virtual {v3}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v14

    invoke-static {v12, v14, v15, v8}, Lsun/nio/fs/LinuxWatchService;->-wrap2(IJI)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    :try_start_3
    invoke-virtual {v3}, Lsun/nio/fs/NativeBuffer;->release()V
    :try_end_3
    .catch Lsun/nio/fs/UnixException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;

    if-nez v7, :cond_8

    new-instance v7, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/nio/fs/LinuxWatchService$Poller;->watcher:Lsun/nio/fs/LinuxWatchService;

    move-object/from16 v0, p0

    iget v13, v0, Lsun/nio/fs/LinuxWatchService$Poller;->ifd:I

    invoke-direct {v7, v4, v12, v13, v10}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;-><init>(Lsun/nio/fs/UnixPath;Lsun/nio/fs/LinuxWatchService;II)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-object v7

    :catchall_0
    move-exception v12

    :try_start_4
    invoke-virtual {v3}, Lsun/nio/fs/NativeBuffer;->release()V

    throw v12
    :try_end_4
    .catch Lsun/nio/fs/UnixException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v11

    invoke-virtual {v11}, Lsun/nio/fs/UnixException;->errno()I

    move-result v12

    sget v13, Lsun/nio/fs/UnixConstants;->ENOSPC:I

    if-ne v12, v13, :cond_9

    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v13, "User limit of inotify watches reached"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v12

    :cond_9
    invoke-virtual {v11, v4}, Lsun/nio/fs/UnixException;->asIOException(Lsun/nio/fs/UnixPath;)Ljava/io/IOException;

    move-result-object v12

    return-object v12
.end method

.method public run()V
    .locals 26

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lsun/nio/fs/LinuxWatchService$Poller;->ifd:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/LinuxWatchService$Poller;->socketpair:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    invoke-static/range {v20 .. v21}, Lsun/nio/fs/LinuxWatchService;->-wrap3(II)I
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v14

    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lsun/nio/fs/LinuxWatchService$Poller;->ifd:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lsun/nio/fs/LinuxWatchService$Poller;->address:J

    move-wide/from16 v22, v0

    const/16 v21, 0x2000

    move/from16 v0, v20

    move-wide/from16 v1, v22

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->read(IJI)I
    :try_end_1
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    :goto_0
    const/16 v20, 0x1

    move/from16 v0, v20

    if-gt v14, v0, :cond_1

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_3

    if-nez v6, :cond_3

    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/LinuxWatchService$Poller;->socketpair:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Lsun/nio/fs/LinuxWatchService$Poller;->address:J

    move-wide/from16 v22, v0

    const/16 v21, 0x2000

    move/from16 v0, v20

    move-wide/from16 v1, v22

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->read(IJI)I

    invoke-virtual/range {p0 .. p0}, Lsun/nio/fs/LinuxWatchService$Poller;->processRequests()Z
    :try_end_2
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v17

    if-eqz v17, :cond_3

    :goto_1
    return-void

    :catch_0
    move-exception v19

    :try_start_3
    invoke-virtual/range {v19 .. v19}, Lsun/nio/fs/UnixException;->errno()I

    move-result v20

    sget v21, Lsun/nio/fs/UnixConstants;->EAGAIN:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    throw v19
    :try_end_3
    .catch Lsun/nio/fs/UnixException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v19

    invoke-virtual/range {v19 .. v19}, Lsun/nio/fs/UnixException;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :catch_2
    move-exception v19

    :try_start_4
    invoke-virtual/range {v19 .. v19}, Lsun/nio/fs/UnixException;->errno()I

    move-result v20

    sget v21, Lsun/nio/fs/UnixConstants;->EAGAIN:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    throw v19

    :cond_3
    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v0, v6, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lsun/nio/fs/LinuxWatchService$Poller;->address:J

    move-wide/from16 v20, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v8, v20, v22

    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-get1()Lsun/misc/Unsafe;

    move-result-object v20

    sget v21, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_WD:I

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v22, v22, v8

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v18

    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-get1()Lsun/misc/Unsafe;

    move-result-object v20

    sget v21, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_MASK:I

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v22, v22, v8

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v13

    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-get1()Lsun/misc/Unsafe;

    move-result-object v20

    sget v21, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_LEN:I

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v22, v22, v8

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v12

    const/4 v15, 0x0

    if-lez v12, :cond_7

    move v4, v12

    :goto_3
    if-lez v4, :cond_4

    sget v20, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_NAME:I

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v20, v20, v8

    int-to-long v0, v4

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    const-wide/16 v22, 0x1

    sub-long v10, v20, v22

    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-get1()Lsun/misc/Unsafe;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v20

    if-eqz v20, :cond_5

    :cond_4
    if-lez v4, :cond_7

    new-array v5, v4, [B

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v4, :cond_6

    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-get1()Lsun/misc/Unsafe;

    move-result-object v20

    sget v21, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_NAME:I

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v22, v22, v8

    int-to-long v0, v7

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v20

    aput-byte v20, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_6
    new-instance v15, Lsun/nio/fs/UnixPath;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/LinuxWatchService$Poller;->fs:Lsun/nio/fs/UnixFileSystem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v15, v0, v5}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v13, v15}, Lsun/nio/fs/LinuxWatchService$Poller;->processEvent(IILsun/nio/fs/UnixPath;)V

    sget v20, Lsun/nio/fs/LinuxWatchService$Poller;->SIZEOF_INOTIFY_EVENT:I
    :try_end_4
    .catch Lsun/nio/fs/UnixException; {:try_start_4 .. :try_end_4} :catch_1

    add-int v20, v20, v12

    add-int v16, v16, v20

    goto/16 :goto_2
.end method

.method wakeup()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lsun/nio/fs/LinuxWatchService$Poller;->socketpair:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-wide v2, p0, Lsun/nio/fs/LinuxWatchService$Poller;->address:J

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lsun/nio/fs/UnixNativeDispatcher;->write(IJI)I
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lsun/nio/fs/UnixException;->errorString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
