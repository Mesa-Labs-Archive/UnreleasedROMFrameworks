.class public abstract Ljava/nio/channels/AsynchronousServerSocketChannel;
.super Ljava/lang/Object;
.source "AsynchronousServerSocketChannel.java"

# interfaces
.implements Ljava/nio/channels/AsynchronousChannel;
.implements Ljava/nio/channels/NetworkChannel;


# instance fields
.field private final provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;


# direct methods
.method protected constructor <init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/nio/channels/AsynchronousServerSocketChannel;->provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;

    return-void
.end method

.method public static open()Ljava/nio/channels/AsynchronousServerSocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/channels/AsynchronousServerSocketChannel;->open(Ljava/nio/channels/AsynchronousChannelGroup;)Ljava/nio/channels/AsynchronousServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public static open(Ljava/nio/channels/AsynchronousChannelGroup;)Ljava/nio/channels/AsynchronousServerSocketChannel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->openAsynchronousServerSocketChannel(Ljava/nio/channels/AsynchronousChannelGroup;)Ljava/nio/channels/AsynchronousServerSocketChannel;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/nio/channels/AsynchronousChannelGroup;->provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public abstract accept()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/nio/channels/AsynchronousSocketChannel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract accept(Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/nio/channels/AsynchronousSocketChannel;",
            "-TA;>;)V"
        }
    .end annotation
.end method

.method public final bind(Ljava/net/SocketAddress;)Ljava/nio/channels/AsynchronousServerSocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/nio/channels/AsynchronousServerSocketChannel;->bind(Ljava/net/SocketAddress;I)Ljava/nio/channels/AsynchronousServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public abstract bind(Ljava/net/SocketAddress;I)Ljava/nio/channels/AsynchronousServerSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public bridge synthetic bind(Ljava/net/SocketAddress;)Ljava/nio/channels/NetworkChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/nio/channels/AsynchronousServerSocketChannel;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/AsynchronousServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLocalAddress()Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .locals 1

    iget-object v0, p0, Ljava/nio/channels/AsynchronousServerSocketChannel;->provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;

    return-object v0
.end method

.method public abstract setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/AsynchronousServerSocketChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption",
            "<TT;>;TT;)",
            "Ljava/nio/channels/AsynchronousServerSocketChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ljava/nio/channels/AsynchronousServerSocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/AsynchronousServerSocketChannel;

    move-result-object v0

    return-object v0
.end method
