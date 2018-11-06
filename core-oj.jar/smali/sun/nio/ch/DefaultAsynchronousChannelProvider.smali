.class public Lsun/nio/ch/DefaultAsynchronousChannelProvider;
.super Ljava/lang/Object;
.source "DefaultAsynchronousChannelProvider.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .locals 1

    const-string/jumbo v0, "sun.nio.ch.LinuxAsynchronousChannelProvider"

    invoke-static {v0}, Lsun/nio/ch/DefaultAsynchronousChannelProvider;->createProvider(Ljava/lang/String;)Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    return-object v0
.end method

.method private static createProvider(Ljava/lang/String;)Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .locals 4

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/spi/AsynchronousChannelProvider;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
