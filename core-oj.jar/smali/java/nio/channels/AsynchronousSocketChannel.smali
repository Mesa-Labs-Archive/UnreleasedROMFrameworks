.class public abstract Ljava/nio/channels/AsynchronousSocketChannel;
.super Ljava/lang/Object;
.source "AsynchronousSocketChannel.java"

# interfaces
.implements Ljava/nio/channels/AsynchronousByteChannel;
.implements Ljava/nio/channels/NetworkChannel;


# instance fields
.field private final provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;


# direct methods
.method protected constructor <init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/nio/channels/AsynchronousSocketChannel;->provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;

    return-void
.end method

.method public static open()Ljava/nio/channels/AsynchronousSocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/channels/AsynchronousSocketChannel;->open(Ljava/nio/channels/AsynchronousChannelGroup;)Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public static open(Ljava/nio/channels/AsynchronousChannelGroup;)Ljava/nio/channels/AsynchronousSocketChannel;
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
    invoke-virtual {v0, p0}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->openAsynchronousSocketChannel(Ljava/nio/channels/AsynchronousChannelGroup;)Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/nio/channels/AsynchronousChannelGroup;->provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public abstract bind(Ljava/net/SocketAddress;)Ljava/nio/channels/AsynchronousSocketChannel;
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

    invoke-virtual {p0, p1}, Ljava/nio/channels/AsynchronousSocketChannel;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public abstract connect(Ljava/net/SocketAddress;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract connect(Ljava/net/SocketAddress;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketAddress;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/lang/Void;",
            "-TA;>;)V"
        }
    .end annotation
.end method

.method public abstract getLocalAddress()Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getRemoteAddress()Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .locals 1

    iget-object v0, p0, Ljava/nio/channels/AsynchronousSocketChannel;->provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;

    return-object v0
.end method

.method public abstract read(Ljava/nio/ByteBuffer;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract read(Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/lang/Integer;",
            "-TA;>;)V"
        }
    .end annotation
.end method

.method public final read(Ljava/nio/ByteBuffer;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/lang/Integer;",
            "-TA;>;)V"
        }
    .end annotation

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Ljava/nio/channels/AsynchronousSocketChannel;->read(Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V

    return-void
.end method

.method public abstract read([Ljava/nio/ByteBuffer;IIJLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/nio/ByteBuffer;",
            "IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/lang/Long;",
            "-TA;>;)V"
        }
    .end annotation
.end method

.method public abstract setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/AsynchronousSocketChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption",
            "<TT;>;TT;)",
            "Ljava/nio/channels/AsynchronousSocketChannel;"
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

    invoke-virtual {p0, p1, p2}, Ljava/nio/channels/AsynchronousSocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public abstract shutdownInput()Ljava/nio/channels/AsynchronousSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract shutdownOutput()Ljava/nio/channels/AsynchronousSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write(Ljava/nio/ByteBuffer;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract write(Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/lang/Integer;",
            "-TA;>;)V"
        }
    .end annotation
.end method

.method public final write(Ljava/nio/ByteBuffer;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/lang/Integer;",
            "-TA;>;)V"
        }
    .end annotation

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Ljava/nio/channels/AsynchronousSocketChannel;->write(Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V

    return-void
.end method

.method public abstract write([Ljava/nio/ByteBuffer;IIJLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/nio/ByteBuffer;",
            "IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/lang/Long;",
            "-TA;>;)V"
        }
    .end annotation
.end method
