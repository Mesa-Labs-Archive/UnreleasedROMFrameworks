.class final Ljava/nio/channels/Channels$2;
.super Ljava/io/InputStream;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/AsynchronousByteChannel;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private b1:[B

.field private bb:Ljava/nio/ByteBuffer;

.field private bs:[B

.field final synthetic val$ch:Ljava/nio/channels/AsynchronousByteChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/AsynchronousByteChannel;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Ljava/nio/channels/Channels$2;->val$ch:Ljava/nio/channels/AsynchronousByteChannel;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object v0, p0, Ljava/nio/channels/Channels$2;->bb:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Ljava/nio/channels/Channels$2;->bs:[B

    iput-object v0, p0, Ljava/nio/channels/Channels$2;->b1:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/nio/channels/Channels$2;->val$ch:Ljava/nio/channels/AsynchronousByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/AsynchronousByteChannel;->close()V

    return-void
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljava/nio/channels/Channels$2;->b1:[B

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Ljava/nio/channels/Channels$2;->b1:[B

    :cond_0
    iget-object v1, p0, Ljava/nio/channels/Channels$2;->b1:[B

    invoke-virtual {p0, v1}, Ljava/nio/channels/Channels$2;->read([B)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v1, p0, Ljava/nio/channels/Channels$2;->b1:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v1, v1, 0xff

    monitor-exit p0

    return v1

    :cond_1
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    monitor-enter p0

    if-ltz p2, :cond_0

    :try_start_0
    array-length v4, p1

    if-le p2, v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_1
    if-ltz p3, :cond_0

    add-int v4, p2, p3

    :try_start_1
    array-length v5, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v4, v5, :cond_0

    add-int v4, p2, p3

    if-ltz v4, :cond_0

    if-nez p3, :cond_2

    monitor-exit p0

    return v6

    :cond_2
    :try_start_2
    iget-object v4, p0, Ljava/nio/channels/Channels$2;->bs:[B

    if-ne v4, p1, :cond_4

    iget-object v0, p0, Ljava/nio/channels/Channels$2;->bb:Ljava/nio/ByteBuffer;

    :goto_0
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int v4, p2, p3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iput-object v0, p0, Ljava/nio/channels/Channels$2;->bb:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Ljava/nio/channels/Channels$2;->bs:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    :goto_1
    :try_start_3
    iget-object v4, p0, Ljava/nio/channels/Channels$2;->val$ch:Ljava/nio/channels/AsynchronousByteChannel;

    invoke-interface {v4, v0}, Ljava/nio/channels/AsynchronousByteChannel;->read(Ljava/nio/ByteBuffer;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v4

    if-eqz v3, :cond_3

    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    monitor-exit p0

    return v4

    :cond_4
    :try_start_5
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_6
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v4

    if-eqz v3, :cond_5

    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method
