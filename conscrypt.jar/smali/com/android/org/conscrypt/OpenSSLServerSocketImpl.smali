.class public Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;
.super Ljavax/net/ssl/SSLServerSocket;
.source "OpenSSLServerSocketImpl.java"


# instance fields
.field private channelIdEnabled:Z

.field private final sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private useEngineSocket:Z


# direct methods
.method protected constructor <init>(IILcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLServerSocket;-><init>(II)V

    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    return-void
.end method

.method protected constructor <init>(IILjava/net/InetAddress;Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljavax/net/ssl/SSLServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object p4, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    return-void
.end method

.method protected constructor <init>(ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLServerSocket;-><init>(I)V

    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    return-void
.end method

.method protected constructor <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocket;-><init>()V

    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    return-void
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v2, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->useEngineSocket:Z

    if-eqz v2, :cond_0

    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->implAccept(Ljava/net/Socket;)V

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V

    iget-boolean v2, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->channelIdEnabled:Z

    invoke-virtual {v0, v2}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->setChannelIdEnabled(Z)V

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->startHandshake()V

    return-object v0

    :cond_0
    new-instance v6, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-direct {v6, v2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    iget-boolean v2, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->channelIdEnabled:Z

    invoke-virtual {v6, v2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdEnabled(Z)V

    invoke-virtual {p0, v6}, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->implAccept(Ljava/net/Socket;)V

    return-object v6
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public isChannelIdEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->channelIdEnabled:Z

    return v0
.end method

.method public setChannelIdEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->channelIdEnabled:Z

    return-void
.end method

.method public setEnableSessionCreation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnableSessionCreation(Z)V

    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setNeedClientAuth(Z)V

    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    return-void
.end method

.method public setUseEngineSocket(Z)Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;
    .locals 0

    iput-boolean p1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->useEngineSocket:Z

    return-object p0
.end method

.method public setWantClientAuth(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setWantClientAuth(Z)V

    return-void
.end method
