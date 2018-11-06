.class Lsun/nio/fs/AbstractPoller$Request;
.super Ljava/lang/Object;
.source "AbstractPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/AbstractPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Request"
.end annotation


# instance fields
.field private completed:Z

.field private final params:[Ljava/lang/Object;

.field private result:Ljava/lang/Object;

.field private final type:Lsun/nio/fs/AbstractPoller$RequestType;


# direct methods
.method varargs constructor <init>(Lsun/nio/fs/AbstractPoller$RequestType;[Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/fs/AbstractPoller$Request;->completed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/nio/fs/AbstractPoller$Request;->result:Ljava/lang/Object;

    iput-object p1, p0, Lsun/nio/fs/AbstractPoller$Request;->type:Lsun/nio/fs/AbstractPoller$RequestType;

    iput-object p2, p0, Lsun/nio/fs/AbstractPoller$Request;->params:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method awaitResult()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lsun/nio/fs/AbstractPoller$Request;->completed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lsun/nio/fs/AbstractPoller$Request;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    iget-object v2, p0, Lsun/nio/fs/AbstractPoller$Request;->result:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method parameters()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/AbstractPoller$Request;->params:[Ljava/lang/Object;

    return-object v0
.end method

.method release(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lsun/nio/fs/AbstractPoller$Request;->completed:Z

    iput-object p1, p0, Lsun/nio/fs/AbstractPoller$Request;->result:Ljava/lang/Object;

    invoke-virtual {p0}, Lsun/nio/fs/AbstractPoller$Request;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method type()Lsun/nio/fs/AbstractPoller$RequestType;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/AbstractPoller$Request;->type:Lsun/nio/fs/AbstractPoller$RequestType;

    return-object v0
.end method
