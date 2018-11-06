.class public abstract Ljava/nio/channels/AsynchronousChannelGroup;
.super Ljava/lang/Object;
.source "AsynchronousChannelGroup.java"


# instance fields
.field private final provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;


# direct methods
.method protected constructor <init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/nio/channels/AsynchronousChannelGroup;->provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;

    return-void
.end method

.method public static withCachedThreadPool(Ljava/util/concurrent/ExecutorService;I)Ljava/nio/channels/AsynchronousChannelGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->openAsynchronousChannelGroup(Ljava/util/concurrent/ExecutorService;I)Ljava/nio/channels/AsynchronousChannelGroup;

    move-result-object v0

    return-object v0
.end method

.method public static withFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/nio/channels/AsynchronousChannelGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->openAsynchronousChannelGroup(ILjava/util/concurrent/ThreadFactory;)Ljava/nio/channels/AsynchronousChannelGroup;

    move-result-object v0

    return-object v0
.end method

.method public static withThreadPool(Ljava/util/concurrent/ExecutorService;)Ljava/nio/channels/AsynchronousChannelGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->openAsynchronousChannelGroup(Ljava/util/concurrent/ExecutorService;I)Ljava/nio/channels/AsynchronousChannelGroup;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract isShutdown()Z
.end method

.method public abstract isTerminated()Z
.end method

.method public final provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .locals 1

    iget-object v0, p0, Ljava/nio/channels/AsynchronousChannelGroup;->provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;

    return-object v0
.end method

.method public abstract shutdown()V
.end method

.method public abstract shutdownNow()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
