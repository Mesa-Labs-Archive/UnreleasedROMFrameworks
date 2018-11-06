.class abstract Lsun/nio/fs/AbstractWatchKey;
.super Ljava/lang/Object;
.source "AbstractWatchKey.java"

# interfaces
.implements Ljava/nio/file/WatchKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/AbstractWatchKey$Event;,
        Lsun/nio/fs/AbstractWatchKey$State;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final MAX_EVENT_LIST_SIZE:I = 0x200

.field static final OVERFLOW_EVENT:Lsun/nio/fs/AbstractWatchKey$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/nio/fs/AbstractWatchKey$Event",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dir:Ljava/nio/file/Path;

.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/file/WatchEvent",
            "<*>;>;"
        }
    .end annotation
.end field

.field private lastModifyEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/nio/file/WatchEvent",
            "<*>;>;"
        }
    .end annotation
.end field

.field private state:Lsun/nio/fs/AbstractWatchKey$State;

.field private final watcher:Lsun/nio/fs/AbstractWatchService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lsun/nio/fs/AbstractWatchKey;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/fs/AbstractWatchKey;->-assertionsDisabled:Z

    new-instance v0, Lsun/nio/fs/AbstractWatchKey$Event;

    sget-object v1, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/nio/fs/AbstractWatchKey$Event;-><init>(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V

    sput-object v0, Lsun/nio/fs/AbstractWatchKey;->OVERFLOW_EVENT:Lsun/nio/fs/AbstractWatchKey$Event;

    return-void
.end method

.method protected constructor <init>(Ljava/nio/file/Path;Lsun/nio/fs/AbstractWatchService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsun/nio/fs/AbstractWatchKey;->watcher:Lsun/nio/fs/AbstractWatchService;

    iput-object p1, p0, Lsun/nio/fs/AbstractWatchKey;->dir:Ljava/nio/file/Path;

    sget-object v0, Lsun/nio/fs/AbstractWatchKey$State;->READY:Lsun/nio/fs/AbstractWatchKey$State;

    iput-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->state:Lsun/nio/fs/AbstractWatchKey$State;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final pollEvents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/nio/file/WatchEvent",
            "<*>;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    iget-object v1, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final reset()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->state:Lsun/nio/fs/AbstractWatchKey$State;

    sget-object v1, Lsun/nio/fs/AbstractWatchKey$State;->SIGNALLED:Lsun/nio/fs/AbstractWatchKey$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lsun/nio/fs/AbstractWatchKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lsun/nio/fs/AbstractWatchKey$State;->READY:Lsun/nio/fs/AbstractWatchKey$State;

    iput-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->state:Lsun/nio/fs/AbstractWatchKey$State;

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lsun/nio/fs/AbstractWatchKey;->isValid()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->watcher:Lsun/nio/fs/AbstractWatchService;

    invoke-virtual {v0, p0}, Lsun/nio/fs/AbstractWatchService;->enqueueKey(Ljava/nio/file/WatchKey;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final signal()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->state:Lsun/nio/fs/AbstractWatchKey$State;

    sget-object v1, Lsun/nio/fs/AbstractWatchKey$State;->READY:Lsun/nio/fs/AbstractWatchKey$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Lsun/nio/fs/AbstractWatchKey$State;->SIGNALLED:Lsun/nio/fs/AbstractWatchKey$State;

    iput-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->state:Lsun/nio/fs/AbstractWatchKey$State;

    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->watcher:Lsun/nio/fs/AbstractWatchService;

    invoke-virtual {v0, p0}, Lsun/nio/fs/AbstractWatchService;->enqueueKey(Ljava/nio/file/WatchKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final signalEvent(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/WatchEvent$Kind",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    sget-object v5, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    if-ne p1, v5, :cond_1

    const/4 v2, 0x1

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/WatchEvent;

    invoke-interface {v3}, Ljava/nio/file/WatchEvent;->kind()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v5

    sget-object v6, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    if-eq v5, v6, :cond_0

    invoke-interface {v3}, Ljava/nio/file/WatchEvent;->kind()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v5

    if-ne p1, v5, :cond_2

    invoke-interface {v3}, Ljava/nio/file/WatchEvent;->context()Ljava/lang/Object;

    move-result-object v5

    invoke-static {p2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    check-cast v3, Lsun/nio/fs/AbstractWatchKey$Event;

    invoke-virtual {v3}, Lsun/nio/fs/AbstractWatchKey$Event;->increment()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v2, :cond_4

    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/WatchEvent;

    if-eqz v0, :cond_5

    sget-boolean v5, Lsun/nio/fs/AbstractWatchKey;->-assertionsDisabled:Z

    if-nez v5, :cond_3

    invoke-interface {v0}, Ljava/nio/file/WatchEvent;->kind()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v5

    sget-object v6, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    if-eq v5, v6, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_3
    :try_start_2
    check-cast v0, Lsun/nio/fs/AbstractWatchKey$Event;

    invoke-virtual {v0}, Lsun/nio/fs/AbstractWatchKey$Event;->increment()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_3
    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/16 v5, 0x200

    if-lt v4, v5, :cond_6

    sget-object p1, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    const/4 v2, 0x0

    const/4 p2, 0x0

    :cond_6
    new-instance v1, Lsun/nio/fs/AbstractWatchKey$Event;

    invoke-direct {v1, p1, p2}, Lsun/nio/fs/AbstractWatchKey$Event;-><init>(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V

    if-eqz v2, :cond_8

    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    invoke-interface {v5, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_1
    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lsun/nio/fs/AbstractWatchKey;->signal()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_8
    :try_start_4
    sget-object v5, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    if-ne p1, v5, :cond_7

    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public watchable()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->dir:Ljava/nio/file/Path;

    return-object v0
.end method

.method public bridge synthetic watchable()Ljava/nio/file/Watchable;
    .locals 1

    invoke-virtual {p0}, Lsun/nio/fs/AbstractWatchKey;->watchable()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method final watcher()Lsun/nio/fs/AbstractWatchService;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->watcher:Lsun/nio/fs/AbstractWatchService;

    return-object v0
.end method
