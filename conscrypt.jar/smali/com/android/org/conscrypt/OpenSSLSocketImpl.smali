.class public Lcom/android/org/conscrypt/OpenSSLSocketImpl;
.super Ljavax/net/ssl/SSLSocket;
.source "OpenSSLSocketImpl.java"

# interfaces
.implements Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
.implements Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
.implements Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;,
        Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;
    }
.end annotation


# static fields
.field private static final DBG_STATE:Z = false

.field private static final STATE_CLOSED:I = 0x5

.field private static final STATE_HANDSHAKE_COMPLETED:I = 0x2

.field private static final STATE_HANDSHAKE_STARTED:I = 0x1

.field private static final STATE_NEW:I = 0x0

.field private static final STATE_READY:I = 0x4

.field private static final STATE_READY_HANDSHAKE_CUT_THROUGH:I = 0x3


# instance fields
.field private final autoClose:Z

.field private channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

.field private final guard:Ljava/lang/Object;

.field private handshakeSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

.field private handshakeTimeoutMilliseconds:I

.field private is:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljavax/net/ssl/HandshakeCompletedListener;",
            ">;"
        }
    .end annotation
.end field

.field private os:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;

.field private peerHostname:Ljava/lang/String;

.field private final peerPort:I

.field private readTimeoutMilliseconds:I

.field private final socket:Ljava/net/Socket;

.field private sslNativePointer:J

.field private final sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private sslSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

.field private state:I

.field private final stateLock:Ljava/lang/Object;

.field private writeTimeoutMilliseconds:I


# direct methods
.method static synthetic -get0(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->checkOpen()V

    return-void
.end method

.method protected constructor <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ljava/lang/Object;

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    iput-object p0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ljava/lang/Object;

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    iput-object p0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    iput p2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ljava/lang/Object;

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    iput-object p0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    iput p2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    iput-object p5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;I)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ljava/lang/Object;

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    iput-object p0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ljava/lang/Object;

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    iput-object p0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    iput-object p5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    return-void
.end method

.method protected constructor <init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ljava/lang/Object;

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    iput p3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    iput-boolean p4, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    iput-object p5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    return-void
.end method

.method private assertReadableOrWriteableState()V
    .locals 3

    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private checkOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private closeUnderlyingSocket()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-eq v0, p0, :cond_1

    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V

    goto :goto_0
.end method

.method private free()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_free(J)V

    iput-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->closeGuardClose(Ljava/lang/Object;)V

    return-void
.end method

.method private shutdownAndFreeSslNative()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->blockGuardOnNetwork()V

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v2, v3, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_shutdown(JLjava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Application ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") has finished a SSL/TLS session with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "a remote connection endpoint ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "OpenSSLSocketImpl"

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-static {v1, v3, v4, v2}, Lcom/samsung/android/security/mdf/MdfUtils;->logMdf(Ljava/lang/String;ZILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->free()V

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->closeUnderlyingSocket()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->free()V

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->closeUnderlyingSocket()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->free()V

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->closeUnderlyingSocket()V

    throw v1
.end method

.method private waitForHandshake()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x5

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->startHandshake()V

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3

    :goto_0
    :try_start_0
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v5, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Interrupted waiting for handshake"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    :try_start_3
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    if-ne v2, v5, :cond_1

    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket is closed"

    invoke-direct {v2, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    monitor-exit v3

    return-void
.end method


# virtual methods
.method public addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Provided listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, p3, v0, p0}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseClientPSKIdentity(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1, p2, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->chooseClientKeyIdentity(Ljava/lang/String;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, p0}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerPSKIdentityHint(Lcom/android/org/conscrypt/PSKKeyManager;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->chooseServerKeyIdentityHint(Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clientCertificateRequested([B[[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    move-object v2, p1

    move-object v3, p2

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/org/conscrypt/SSLParametersImpl;->chooseClientCertificate([B[[BJLcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;)V

    return-void
.end method

.method public clientPSKKeyRequested(Ljava/lang/String;[B[B)I
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clientPSKKeyRequested(Ljava/lang/String;[B[BLcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v5, :cond_0

    monitor-exit v4

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v3, 0x5

    iput v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->closeUnderlyingSocket()V

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-void

    :cond_1
    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    :try_start_2
    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_interrupt(J)V

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return-void

    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->is:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->os:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_interrupt(J)V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->awaitPendingOps()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->awaitPendingOps()V

    :cond_6
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->getHostStringFromInetSocketAddress(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    :cond_0
    invoke-super {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->closeGuardWarnIfOpen(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->free()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->finalize()V

    throw v0
.end method

.method public getAlpnSelectedProtocol()[B
    .locals 2

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get0_alpn_selected(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getChannelId()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Client mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Channel ID is only available after handshake completes"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    monitor-exit v1

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_tls_channel_id(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-static {p0}, Lcom/android/org/conscrypt/Platform;->getFileDescriptorFromSSLSocket(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    return-object v0
.end method

.method public getHostnameOrIP()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object v2
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->checkOpen()V

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket is closed."

    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->is:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;

    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;-><init>(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->is:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;

    :cond_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->is:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->waitForHandshake()V

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getNpnSelectedProtocol()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->checkOpen()V

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket is closed."

    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->os:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;

    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;-><init>(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->os:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;

    :cond_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->os:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->waitForHandshake()V

    return-object v0
.end method

.method public getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 1

    invoke-interface {p1, p2, p3, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->getKey(Ljava/lang/String;Ljava/lang/String;Ljava/net/Socket;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 2

    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getPort()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    goto :goto_0
.end method

.method public getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 2

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/Platform;->getSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V

    return-object v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 2

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    if-nez v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->waitForHandshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/AbstractOpenSSLSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    return-object v1
.end method

.method public getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    return v0
.end method

.method public getSoWriteTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

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

.method public getTlsUnique()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Finished is only available after handshake completes"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    monitor-exit v1

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_tls_unique(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method notifyHandshakeCompletedListeners()V
    .locals 6

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    new-instance v1, Ljavax/net/ssl/HandshakeCompletedEvent;

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-direct {v1, p0, v5}, Ljavax/net/ssl/HandshakeCompletedEvent;-><init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HandshakeCompletedListener;

    :try_start_0
    invoke-interface {v2, v1}, Ljavax/net/ssl/HandshakeCompletedListener;->handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSSLStateChange(II)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/16 v1, 0x20

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Application ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") has finished a SSL/TLS handshake with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "a remote connection endpoint ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "OpenSSLSocketImpl"

    invoke-static {v1, v3, v4, v2}, Lcom/samsung/android/security/mdf/MdfUtils;->logMdf(Ljava/lang/String;ZILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    :cond_2
    monitor-exit v2

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->resetId()V

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->notifyHandshakeCompletedListeners()V

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x4

    :try_start_2
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    return-void

    :cond_3
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v1, v4, :cond_2

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_4
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getServerSessionContext()Lcom/android/org/conscrypt/ServerSessionContext;

    move-result-object v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Provided listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Provided listener is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Provided listener is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public sendUrgentData(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Method sendUrgentData() is not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[BLcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)I

    move-result v0

    return v0
.end method

.method public setAlpnProtocols([B)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setAlpnProtocols([B)V

    return-void
.end method

.method public setAlpnProtocols([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setAlpnProtocols([Ljava/lang/String;)V

    return-void
.end method

.method public setChannelIdEnabled(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Client mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Could not enable/disable Channel ID after the initial handshake has begun."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    monitor-exit v1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iput-boolean p1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    return-void
.end method

.method public setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getUseClientMode()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Server mode"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Could not change Channel ID private key after the initial handshake has begun."

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_1
    monitor-exit v4

    if-nez p1, :cond_2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iput-boolean v6, v3, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    iput-object v5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    const/4 v2, 0x0

    :try_start_1
    instance-of v3, p1, Ljava/security/interfaces/ECKey;

    if-eqz v3, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECKey;

    move-object v3, v0

    invoke-interface {v3}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    const-string/jumbo v3, "prime256v1"

    invoke-static {v3}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    :cond_4
    invoke-static {p1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;->fromECPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setEnableSessionCreation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnableSessionCreation(Z)V

    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    return-void
.end method

.method public setHandshakeTimeout(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iput p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseSni(Z)V

    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNeedClientAuth(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setNeedClientAuth(Z)V

    return-void
.end method

.method public setNpnProtocols([B)V
    .locals 0

    return-void
.end method

.method public setOOBInline(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Methods sendUrgentData, setOOBInline are not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 1

    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-static {p1, v0, p0}, Lcom/android/org/conscrypt/Platform;->setSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V

    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    :goto_0
    iput p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    return-void

    :cond_0
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    goto :goto_0
.end method

.method public setSoWriteTimeout(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iput p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/android/org/conscrypt/Platform;->setSocketWriteTimeout(Ljava/net/Socket;J)V

    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Could not change the mode after the initial handshake has begun."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    monitor-exit v1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    return-void
.end method

.method public setUseSessionTickets(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseSessionTickets(Z)V

    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setWantClientAuth(Z)V

    return-void
.end method

.method public startHandshake()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->checkOpen()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    if-nez v3, :cond_4

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Application ("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->getUid()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, ") has started a SSL/TLS handshake with "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "a remote connection endpoint ("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getPort()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "OpenSSLSocketImpl"

    const/4 v8, 0x1

    const/4 v9, 0x5

    invoke-static {v3, v8, v9, v7}, Lcom/samsung/android/security/mdf/MdfUtils;->logMdf(Ljava/lang/String;ZILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v2

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    const/16 v19, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v22

    move-object/from16 v0, v22

    iget-wide v6, v0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_new(J)J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ljava/lang/Object;

    const-string/jumbo v6, "close"

    invoke-static {v3, v6}, Lcom/android/org/conscrypt/Platform;->closeGuardOpen(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getEnableSessionCreation()Z

    move-result v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v6, v7, v15}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_session_creation_enabled(JZ)V

    :cond_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_accept_renegotiations(J)V

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_connect_state(J)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_enable_ocsp_stapling(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/org/conscrypt/SSLParametersImpl;->isCTVerificationEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_enable_signed_cert_timestamps(J)V

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getPort()I

    move-result v9

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionToReuse(JLjava/lang/String;I)Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostname()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v6, p0

    move-object/from16 v7, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/org/conscrypt/SSLParametersImpl;->setSSLParameters(JLcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-virtual {v3, v6, v7}, Lcom/android/org/conscrypt/SSLParametersImpl;->setCertificateValidation(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v3, v6, v7, v8}, Lcom/android/org/conscrypt/SSLParametersImpl;->setTlsChannelId(JLcom/android/org/conscrypt/OpenSSLKey;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getSoTimeout()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getSoWriteTimeout()I

    move-result v21

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    if-ltz v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSoTimeout(I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSoWriteTimeout(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/4 v7, 0x5

    if-ne v6, v7, :cond_7

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v3, 0x5

    :try_start_4
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v6

    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_1
    return-void

    :cond_4
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_accept_state(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getOCSPResponse()[B

    move-result-object v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_enable_ocsp_stapling(J)V
    :try_end_6
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0

    :catch_0
    move-exception v14

    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Got SSL protocol exception: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljavax/net/ssl/SSLProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "OpenSSLSocketImpl"

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-static {v3, v7, v8, v6}, Lcom/samsung/android/security/mdf/MdfUtils;->logMdf(Ljava/lang/String;ZILjava/lang/String;)V

    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v6, "Handshake failed"

    invoke-direct {v3, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/SSLHandshakeException;

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v7, 0x5

    :try_start_8
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    monitor-exit v6

    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_6
    :goto_2
    throw v3

    :catchall_2
    move-exception v3

    monitor-exit v6

    throw v3

    :catch_1
    move-exception v16

    goto :goto_1

    :cond_7
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-static {v3}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getSoTimeout()I

    move-result v8

    move-object/from16 v0, p0

    invoke-static {v6, v7, v3, v0, v8}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_do_handshake(JLjava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;I)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get1_session(J)J
    :try_end_b
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-wide v4

    const/4 v11, 0x0

    :try_start_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_c
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    const/4 v7, 0x2

    if-ne v3, v7, :cond_11

    const/4 v11, 0x1

    :cond_8
    :try_start_e
    monitor-exit v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getPort()I

    move-result v10

    move-object/from16 v8, v23

    invoke-virtual/range {v3 .. v11}, Lcom/android/org/conscrypt/SSLParametersImpl;->setupSession(JJLcom/android/org/conscrypt/AbstractOpenSSLSession;Ljava/lang/String;IZ)Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    if-ltz v3, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSoTimeout(I)V

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSoWriteTimeout(I)V

    :cond_9
    if-eqz v11, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->notifyHandshakeCompletedListeners()V

    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_e
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v7, 0x5

    if-ne v3, v7, :cond_13

    const/16 v19, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_14

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    :cond_b
    :goto_4
    if-nez v19, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :cond_c
    :try_start_10
    monitor-exit v6
    :try_end_10
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v3, 0x5

    :try_start_11
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    monitor-exit v6

    :try_start_12
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    :cond_d
    :goto_5
    return-void

    :catchall_3
    move-exception v6

    :try_start_13
    monitor-exit v3

    throw v6

    :catch_2
    move-exception v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_13
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :try_start_14
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    const/4 v7, 0x5

    if-ne v6, v7, :cond_f

    :try_start_15
    monitor-exit v3
    :try_end_15
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v3, 0x5

    :try_start_16
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    monitor-exit v6

    :try_start_17
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_3

    :cond_e
    :goto_6
    return-void

    :catchall_4
    move-exception v3

    monitor-exit v6

    throw v3

    :catch_3
    move-exception v16

    goto :goto_6

    :cond_f
    :try_start_18
    monitor-exit v3

    invoke-virtual {v13}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v3, "unexpected CCS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string/jumbo v3, "ssl_unexpected_ccs: host=%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/org/conscrypt/Platform;->logEvent(Ljava/lang/String;)V

    :cond_10
    throw v13

    :catchall_5
    move-exception v6

    monitor-exit v3

    throw v6

    :catch_4
    move-exception v12

    new-instance v24, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {v12}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SSL connection ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getPort()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "): Certificate verification failed: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/security/cert/CertificateException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "OpenSSLSocketImpl"

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-static {v3, v7, v8, v6}, Lcom/samsung/android/security/mdf/MdfUtils;->logMdf(Ljava/lang/String;ZILjava/lang/String;)V

    throw v24
    :try_end_18
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    :cond_11
    :try_start_19
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    const/4 v7, 0x5

    if-ne v3, v7, :cond_8

    :try_start_1a
    monitor-exit v6
    :try_end_1a
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v3, 0x5

    :try_start_1b
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    monitor-exit v6

    :try_start_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_5

    :cond_12
    :goto_7
    return-void

    :catchall_6
    move-exception v3

    monitor-exit v6

    throw v3

    :catch_5
    move-exception v16

    goto :goto_7

    :catchall_7
    move-exception v3

    :try_start_1d
    monitor-exit v6

    throw v3
    :try_end_1d
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    :cond_13
    const/16 v19, 0x0

    goto/16 :goto_3

    :cond_14
    :try_start_1e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_b

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    goto/16 :goto_4

    :catchall_8
    move-exception v3

    :try_start_1f
    monitor-exit v6

    throw v3
    :try_end_1f
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1f .. :try_end_1f} :catch_0
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    :catchall_9
    move-exception v3

    monitor-exit v6

    throw v3

    :catch_6
    move-exception v16

    goto/16 :goto_5

    :catchall_a
    move-exception v3

    monitor-exit v6

    throw v3

    :catch_7
    move-exception v16

    goto/16 :goto_2
.end method

.method public verifyCertificateChain([JLjava/lang/String;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v19

    if-nez v19, :cond_0

    new-instance v5, Ljava/security/cert/CertificateException;

    const-string/jumbo v6, "No X.509 TrustManager"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v17

    :try_start_1
    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    throw v5

    :cond_0
    if-eqz p1, :cond_1

    :try_start_2
    move-object/from16 v0, p1

    array-length v5, v0

    if-nez v5, :cond_2

    :cond_1
    new-instance v5, Ljavax/net/ssl/SSLException;

    const-string/jumbo v6, "Peer sent no certificate"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    move-exception v16

    :try_start_3
    new-instance v5, Ljava/security/cert/CertificateException;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->createCertChain([J)[Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v9

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_ocsp_response(J)[B

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_signed_cert_timestamp_list(J)[B

    move-result-object v11

    new-instance v5, Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get1_session(J)J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getPort()I

    move-result v13

    const/4 v8, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;-><init>(J[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ILcom/android/org/conscrypt/AbstractSessionContext;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v15

    if-eqz v15, :cond_4

    :try_start_5
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-static {v0, v9, v1, v2}, Lcom/android/org/conscrypt/Platform;->checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeSession:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    return-void

    :catch_2
    move-exception v17

    :try_start_6
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v9, :cond_3

    const/16 v18, 0x0

    :goto_1
    array-length v5, v9

    move/from16 v0, v18

    if-ge v0, v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Chain verification failed. Cert["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v9, v18

    invoke-virtual {v6}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Issuer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v9, v18

    invoke-virtual {v6}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "OpenSSLSocketImpl"

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-static {v5, v7, v8, v6}, Lcom/samsung/android/security/mdf/MdfUtils;->logMdf(Ljava/lang/String;ZILjava/lang/String;)V

    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_3
    throw v17

    :cond_4
    const/4 v5, 0x0

    aget-object v5, v9, v5

    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-static {v0, v9, v4, v1}, Lcom/android/org/conscrypt/Platform;->checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method
