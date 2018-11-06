.class public Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;
.super Ljavax/net/ssl/SSLServerSocketFactory;
.source "OpenSSLServerSocketFactoryImpl.java"


# static fields
.field private static useEngineSocketByDefault:Z


# instance fields
.field private instantiationException:Ljava/io/IOException;

.field private sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private useEngineSocket:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/org/conscrypt/SSLUtils;->USE_ENGINE_SOCKET_BY_DEFAULT:Z

    sput-boolean v0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocketByDefault:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    sget-boolean v1, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocketByDefault:Z

    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocket:Z

    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefault()Lcom/android/org/conscrypt/SSLParametersImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Delayed instantiation exception:"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 2

    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    sget-boolean v0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocketByDefault:Z

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocket:Z

    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    return-void
.end method

.method public static setUseEngineSocketByDefault(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocketByDefault:Z

    return-void
.end method


# virtual methods
.method public createServerSocket()Ljava/net/ServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocket:Z

    invoke-virtual {v1, v0}, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->setUseEngineSocket(Z)Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;

    move-result-object v0

    return-object v0
.end method

.method public createServerSocket(I)Ljava/net/ServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-direct {v1, p1, v0}, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;-><init>(ILcom/android/org/conscrypt/SSLParametersImpl;)V

    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocket:Z

    invoke-virtual {v1, v0}, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->setUseEngineSocket(Z)Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;

    move-result-object v0

    return-object v0
.end method

.method public createServerSocket(II)Ljava/net/ServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;-><init>(IILcom/android/org/conscrypt/SSLParametersImpl;)V

    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocket:Z

    invoke-virtual {v1, v0}, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->setUseEngineSocket(Z)Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;

    move-result-object v0

    return-object v0
.end method

.method public createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;-><init>(IILjava/net/InetAddress;Lcom/android/org/conscrypt/SSLParametersImpl;)V

    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocket:Z

    invoke-virtual {v1, v0}, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->setUseEngineSocket(Z)Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

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

    iput-boolean p1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocket:Z

    return-void
.end method
