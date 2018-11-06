.class public abstract Ljava/nio/channels/spi/AsynchronousChannelProvider;
.super Ljava/lang/Object;
.source "AsynchronousChannelProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-static {}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->checkPermission()Ljava/lang/Void;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/channels/spi/AsynchronousChannelProvider;-><init>(Ljava/lang/Void;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkPermission()Ljava/lang/Void;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "asynchronousChannelProvider"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    return-object v3
.end method

.method public static provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .locals 1

    sget-object v0, Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder;->provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;

    return-object v0
.end method


# virtual methods
.method public abstract openAsynchronousChannelGroup(ILjava/util/concurrent/ThreadFactory;)Ljava/nio/channels/AsynchronousChannelGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openAsynchronousChannelGroup(Ljava/util/concurrent/ExecutorService;I)Ljava/nio/channels/AsynchronousChannelGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openAsynchronousServerSocketChannel(Ljava/nio/channels/AsynchronousChannelGroup;)Ljava/nio/channels/AsynchronousServerSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openAsynchronousSocketChannel(Ljava/nio/channels/AsynchronousChannelGroup;)Ljava/nio/channels/AsynchronousSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
