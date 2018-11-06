.class public final Lcom/android/org/conscrypt/Conscrypt$Sockets;
.super Ljava/lang/Object;
.source "Conscrypt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/Conscrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sockets"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlpnSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Sockets;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getAlpnSelectedProtocol()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/Conscrypt;->-wrap0([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChannelId(Ljavax/net/ssl/SSLSocket;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Sockets;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getChannelId()[B

    move-result-object v0

    return-object v0
.end method

.method public static getFileDescriptor(Ljavax/net/ssl/SSLSocket;)Ljava/io/FileDescriptor;
    .locals 1

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Sockets;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static getHostname(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Sockets;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHostnameOrIP(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Sockets;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSoWriteTimeout(Ljavax/net/ssl/SSLSocket;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Sockets;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getSoWriteTimeout()I

    move-result v0

    return v0
.end method

.method public static isConscrypt(Ljavax/net/ssl/SSLSocket;)Z
    .locals 1

    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    return v0
.end method

.method public static setAlpnProtocols(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Sockets;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([Ljava/lang/String;)V

    return-void
.end method

.method public static setChannelIdEnabled(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 1

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Sockets;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdEnabled(Z)V

    return-void
.end method

.method public static setChannelIdPrivateKey(Ljavax/net/ssl/SSLSocket;Ljava/security/PrivateKey;)V
    .locals 1

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Sockets;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    return-void
.end method

.method public static setHandshakeTimeout(Ljavax/net/ssl/SSLSocket;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Sockets;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    return-void
.end method

.method public static setHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Sockets;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHostname(Ljava/lang/String;)V

    return-void
.end method

.method public static setSoWriteTimeout(Ljavax/net/ssl/SSLSocket;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Sockets;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSoWriteTimeout(I)V

    return-void
.end method

.method public static setUseSessionTickets(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 1

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Sockets;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setUseSessionTickets(Z)V

    return-void
.end method

.method private static toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    .locals 3

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Sockets;->isConscrypt(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not a conscrypt socket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    return-object p0
.end method
