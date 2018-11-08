.class Lsun/nio/fs/PollingWatchService;
.super Lsun/nio/fs/AbstractWatchService;
.source "PollingWatchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/PollingWatchService$CacheEntry;,
        Lsun/nio/fs/PollingWatchService$PollingWatchKey;
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lsun/nio/fs/PollingWatchService$PollingWatchKey;",
            ">;"
        }
    .end annotation
.end field

.field private final scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static synthetic -get0(Lsun/nio/fs/PollingWatchService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/PollingWatchService;->map:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1(Lsun/nio/fs/PollingWatchService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/PollingWatchService;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic -wrap0(Lsun/nio/fs/PollingWatchService;Ljava/nio/file/Path;Ljava/util/Set;Lcom/sun/nio/file/SensitivityWatchEventModifier;)Lsun/nio/fs/PollingWatchService$PollingWatchKey;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lsun/nio/fs/PollingWatchService;->doPrivilegedRegister(Ljava/nio/file/Path;Ljava/util/Set;Lcom/sun/nio/file/SensitivityWatchEventModifier;)Lsun/nio/fs/PollingWatchService$PollingWatchKey;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsun/nio/fs/AbstractWatchService;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/nio/fs/PollingWatchService;->map:Ljava/util/Map;

    new-instance v0, Lsun/nio/fs/PollingWatchService$1;

    invoke-direct {v0, p0}, Lsun/nio/fs/PollingWatchService$1;-><init>(Lsun/nio/fs/PollingWatchService;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/PollingWatchService;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private doPrivilegedRegister(Ljava/nio/file/Path;Ljava/util/Set;Lcom/sun/nio/file/SensitivityWatchEventModifier;)Lsun/nio/fs/PollingWatchService$PollingWatchKey;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set",
            "<+",
            "Ljava/nio/file/WatchEvent$Kind",
            "<*>;>;",
            "Lcom/sun/nio/file/SensitivityWatchEventModifier;",
            ")",
            "Lsun/nio/fs/PollingWatchService$PollingWatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v3, Ljava/nio/file/attribute/BasicFileAttributes;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v3, v4}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/nio/file/NotDirectoryException;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/nio/file/NotDirectoryException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "File keys must be supported"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_1
    invoke-virtual {p0}, Lsun/nio/fs/PollingWatchService;->closeLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/fs/PollingWatchService;->isOpen()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/nio/file/ClosedWatchServiceException;

    invoke-direct {v3}, Ljava/nio/file/ClosedWatchServiceException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_2
    :try_start_1
    iget-object v5, p0, Lsun/nio/fs/PollingWatchService;->map:Ljava/util/Map;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lsun/nio/fs/PollingWatchService;->map:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/nio/fs/PollingWatchService$PollingWatchKey;

    if-nez v2, :cond_3

    new-instance v2, Lsun/nio/fs/PollingWatchService$PollingWatchKey;

    invoke-direct {v2, p0, p1, p0, v1}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;-><init>(Lsun/nio/fs/PollingWatchService;Ljava/nio/file/Path;Lsun/nio/fs/PollingWatchService;Ljava/lang/Object;)V

    iget-object v3, p0, Lsun/nio/fs/PollingWatchService;->map:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    :try_start_3
    monitor-exit v5

    invoke-virtual {p3}, Lcom/sun/nio/file/SensitivityWatchEventModifier;->sensitivityValueInSeconds()I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v2, p2, v6, v7}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->enable(Ljava/util/Set;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    return-object v2

    :cond_3
    :try_start_4
    invoke-virtual {v2}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->disable()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v5

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method


# virtual methods
.method implClose()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Lsun/nio/fs/PollingWatchService;->map:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lsun/nio/fs/PollingWatchService;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/nio/fs/PollingWatchService$PollingWatchKey;

    invoke-virtual {v2}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->disable()V

    invoke-virtual {v2}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_0
    :try_start_1
    iget-object v3, p0, Lsun/nio/fs/PollingWatchService;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    new-instance v3, Lsun/nio/fs/PollingWatchService$3;

    invoke-direct {v3, p0}, Lsun/nio/fs/PollingWatchService$3;-><init>(Lsun/nio/fs/PollingWatchService;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method varargs register(Ljava/nio/file/Path;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/WatchEvent$Kind",
            "<*>;[",
            "Ljava/nio/file/WatchEvent$Modifier;",
            ")",
            "Ljava/nio/file/WatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v2, Ljava/util/HashSet;

    array-length v8, p2

    invoke-direct {v2, v8}, Ljava/util/HashSet;-><init>(I)V

    array-length v9, p2

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_4

    aget-object v1, p2, v8

    sget-object v10, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    if-eq v1, v10, :cond_0

    sget-object v10, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    if-ne v1, v10, :cond_2

    :cond_0
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    sget-object v10, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    if-eq v1, v10, :cond_0

    sget-object v10, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    if-eq v1, v10, :cond_1

    if-nez v1, :cond_3

    new-instance v7, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "An element in event set is \'null\'"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    invoke-interface {v1}, Ljava/nio/file/WatchEvent$Kind;->name()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "No events to register"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_5
    sget-object v6, Lcom/sun/nio/file/SensitivityWatchEventModifier;->MEDIUM:Lcom/sun/nio/file/SensitivityWatchEventModifier;

    array-length v8, p3

    if-lez v8, :cond_8

    array-length v8, p3

    :goto_1
    if-ge v7, v8, :cond_8

    aget-object v3, p3, v7

    if-nez v3, :cond_6

    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    :cond_6
    instance-of v9, v3, Lcom/sun/nio/file/SensitivityWatchEventModifier;

    if-eqz v9, :cond_7

    move-object v6, v3

    check-cast v6, Lcom/sun/nio/file/SensitivityWatchEventModifier;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v8, "Modifier not supported"

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_8
    invoke-virtual {p0}, Lsun/nio/fs/PollingWatchService;->isOpen()Z

    move-result v7

    if-nez v7, :cond_9

    new-instance v7, Ljava/nio/file/ClosedWatchServiceException;

    invoke-direct {v7}, Ljava/nio/file/ClosedWatchServiceException;-><init>()V

    throw v7

    :cond_9
    move-object v5, v6

    :try_start_0
    new-instance v7, Lsun/nio/fs/PollingWatchService$2;

    invoke-direct {v7, p0, p1, v2, v5}, Lsun/nio/fs/PollingWatchService$2;-><init>(Lsun/nio/fs/PollingWatchService;Ljava/nio/file/Path;Ljava/util/Set;Lcom/sun/nio/file/SensitivityWatchEventModifier;)V

    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/file/WatchKey;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_a

    instance-of v7, v0, Ljava/io/IOException;

    if-eqz v7, :cond_a

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_a
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7
.end method
