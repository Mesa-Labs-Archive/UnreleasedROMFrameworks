.class Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder;
.super Ljava/lang/Object;
.source "AsynchronousChannelProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/spi/AsynchronousChannelProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderHolder"
.end annotation


# static fields
.field static final provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;


# direct methods
.method static synthetic -wrap0()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .locals 1

    invoke-static {}, Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder;->loadProviderAsService()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .locals 1

    invoke-static {}, Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder;->loadProviderFromProperty()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder;->load()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    sput-object v0, Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder;->provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static load()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .locals 1

    new-instance v0, Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder$1;

    invoke-direct {v0}, Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/spi/AsynchronousChannelProvider;

    return-object v0
.end method

.method private static loadProviderAsService()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .locals 5

    const-class v3, Ljava/nio/channels/spi/AsynchronousChannelProvider;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/spi/AsynchronousChannelProvider;
    :try_end_0
    .catch Ljava/util/ServiceConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/util/ServiceConfigurationError;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/SecurityException;

    if-nez v3, :cond_0

    throw v1
.end method

.method private static loadProviderFromProperty()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v6, "java.nio.channels.spi.AsynchronousChannelProvider"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v8

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v1, v7, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/channels/spi/AsynchronousChannelProvider;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception v5

    new-instance v6, Ljava/util/ServiceConfigurationError;

    invoke-direct {v6, v8, v5}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_1
    move-exception v4

    new-instance v6, Ljava/util/ServiceConfigurationError;

    invoke-direct {v6, v8, v4}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_2
    move-exception v3

    new-instance v6, Ljava/util/ServiceConfigurationError;

    invoke-direct {v6, v8, v3}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_3
    move-exception v2

    new-instance v6, Ljava/util/ServiceConfigurationError;

    invoke-direct {v6, v8, v2}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method
