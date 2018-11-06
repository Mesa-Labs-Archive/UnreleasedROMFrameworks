.class public Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "OpenSSLSocketFactoryImpl.java"


# static fields
.field private static useEngineSocketByDefault:Z


# instance fields
.field private final instantiationException:Ljava/io/IOException;

.field private final sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private useEngineSocket:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/org/conscrypt/SSLUtils;->USE_ENGINE_SOCKET_BY_DEFAULT:Z

    sput-boolean v0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocketByDefault:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    sget-boolean v3, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocketByDefault:Z

    iput-boolean v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefault()Lcom/android/org/conscrypt/SSLParametersImpl;
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "Delayed instantiation exception:"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 1

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    sget-boolean v0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocketByDefault:Z

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    return-void
.end method

.method static setUseEngineSocketByDefault(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocketByDefault:Z

    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    throw v0

    :cond_0
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v1
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    new-instance v1, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/conscrypt/SSLParametersImpl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/conscrypt/SSLParametersImpl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    :goto_0
    if-eqz v7, :cond_1

    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/conscrypt/SSLParametersImpl;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/conscrypt/SSLParametersImpl;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setUseEngineSocket(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    return-void
.end method
