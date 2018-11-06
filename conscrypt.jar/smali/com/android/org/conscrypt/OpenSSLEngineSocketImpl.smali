.class final Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;
.super Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;
.source "OpenSSLEngineSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;,
        Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;
    }
.end annotation


# static fields
.field private static final synthetic -javax-net-ssl-SSLEngineResult$HandshakeStatusSwitchesValues:[I

.field private static final EMPTY_BUFFER:Ljava/nio/ByteBuffer;


# instance fields
.field private final engine:Lcom/android/org/conscrypt/OpenSSLEngineImpl;

.field private handshakeComplete:Z

.field private final inputStreamWrapper:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;

.field private final outputStreamWrapper:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;

.field private final socket:Ljava/net/Socket;


# direct methods
.method static synthetic -get0(Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;)Lcom/android/org/conscrypt/OpenSSLEngineImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->engine:Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->handshakeComplete:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method private static synthetic -getjavax-net-ssl-SSLEngineResult$HandshakeStatusSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->-javax-net-ssl-SSLEngineResult$HandshakeStatusSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->-javax-net-ssl-SSLEngineResult$HandshakeStatusSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->values()[Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->-javax-net-ssl-SSLEngineResult$HandshakeStatusSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->handshakeComplete:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-void
.end method

.method constructor <init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V

    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->socket:Ljava/net/Socket;

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    invoke-direct {v0, p2, p3, p5}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;-><init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->engine:Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->engine:Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    new-instance v1, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$1;

    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$1;-><init>(Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->setHandshakeListener(Lcom/android/org/conscrypt/HandshakeListener;)V

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;-><init>(Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->outputStreamWrapper:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;-><init>(Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->inputStreamWrapper:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->engine:Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    invoke-virtual {p5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->setUseClientMode(Z)V

    return-void
.end method


# virtual methods
.method public chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->engine:Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseClientPSKIdentity(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->engine:Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->chooseClientPSKIdentity(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->engine:Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerPSKIdentityHint(Lcom/android/org/conscrypt/PSKKeyManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->engine:Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->chooseServerPSKIdentityHint(Lcom/android/org/conscrypt/PSKKeyManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->engine:Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->closeInbound()V

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->engine:Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->closeOutbound()V

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->finalize()V

    return-void
.end method

.method public getAlpnSelectedProtocol()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->engine:Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getAlpnSelectedProtocol()[B

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public getChannelId()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->getChannelId()[B

    move-result-object v0

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->inputStreamWrapper:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getNpnSelectedProtocol()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->outputStreamWrapper:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;

    return-object v0
.end method

.method public getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->engine:Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->engine:Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public getSoWriteTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public onSSLStateChange(II)V
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Should be handled by engine"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public sendUrgentData(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->sendUrgentData(I)V

    return-void
.end method

.method public setAlpnProtocols([B)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->setAlpnProtocols([B)V

    return-void
.end method

.method public setChannelIdEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->setChannelIdEnabled(Z)V

    return-void
.end method

.method public setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    return-void
.end method

.method public setEnableSessionCreation(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->setEnableSessionCreation(Z)V

    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->setEnabledCipherSuites([Ljava/lang/String;)V

    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->setEnabledProtocols([Ljava/lang/String;)V

    return-void
.end method

.method public setHandshakeTimeout(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->setHostname(Ljava/lang/String;)V

    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->setNeedClientAuth(Z)V

    return-void
.end method

.method public setNpnProtocols([B)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->setNpnProtocols([B)V

    return-void
.end method

.method public setOOBInline(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->setOOBInline(Z)V

    return-void
.end method

.method public setSoWriteTimeout(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUseClientMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->engine:Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->setUseClientMode(Z)V

    return-void
.end method

.method public setUseSessionTickets(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->setUseSessionTickets(Z)V

    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->setWantClientAuth(Z)V

    return-void
.end method

.method public startHandshake()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->handshakeComplete:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->-getjavax-net-ssl-SSLEngineResult$HandshakeStatusSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->engine:Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :pswitch_1
    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->engine:Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->beginHandshake()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->outputStreamWrapper:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    invoke-static {v1, v2}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;->-wrap0(Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$OutputStreamWrapper;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->inputStreamWrapper:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;

    sget-object v2, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    invoke-virtual {v1, v2}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$InputStreamWrapper;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :pswitch_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "OpenSSLEngineImpl returned NEED_TASK"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public verifyCertificateChain([JLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Should be handled by engine"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
